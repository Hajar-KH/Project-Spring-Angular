package com.management.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.algorithms.Algorithm;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.management.entities.Admin;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.boot.autoconfigure.security.oauth2.resource.OAuth2ResourceServerProperties;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class JWTAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
    private AuthenticationManager authenticationManager;

    public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
        Admin admin=null;
        try{
            admin=new ObjectMapper().readValue(request.getInputStream(), Admin.class);

        }catch(JsonMappingException e){
            e.printStackTrace();
        }catch (JsonParseException e){
            e.printStackTrace();
        }catch(IOException e){
            e.printStackTrace();
        }
    return authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
            admin.getUsername(), admin.getPassword()
    ));
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authResult) throws IOException, ServletException {
        User user=(User) authResult.getPrincipal();
        //rechercher roles
        List<String> roles=new ArrayList<>();
        user.getAuthorities().forEach(a->{
            roles.add(a.getAuthority());
        });
        // Créer le JWT
        String jwt= JWT.create()
                .withSubject(user.getUsername())
                .withArrayClaim("roles",roles.toArray(new String[roles.size()]))
                .withExpiresAt(new Date(System.currentTimeMillis()+SecurityParameters.EXPIRATION_TIME))
                .sign(Algorithm.HMAC256(SecurityParameters.SECRET));

        // Ajouter le JWT à l'en-tête de la réponse
        response.addHeader("Authorization", jwt);

    }
}
