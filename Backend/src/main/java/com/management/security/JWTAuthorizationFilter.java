package com.management.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.DecodedJWT;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class JWTAuthorizationFilter extends OncePerRequestFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String jwt = request.getHeader("Authorization");
        if (jwt == null || !jwt.startsWith(SecurityParameters.PREFIX)) {
            filterChain.doFilter(request, response);
            return;
        }
        jwt = jwt.substring(SecurityParameters.PREFIX.length());

// Log the received token for debugging
        System.out.println("Received JWT: " + jwt);
// Ajout de la vérification des parties du jeton
        String[] tokenParts = jwt.split("\\.");
        if (tokenParts.length != 3) {
            // Le jeton ne contient pas les 3 parties attendues
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }


        try{JWTVerifier verifier= JWT.require(Algorithm.HMAC256(SecurityParameters.SECRET)).build();
        DecodedJWT decodedJWT = verifier.verify(jwt);
        String username = decodedJWT.getSubject();
        List<String> roles=decodedJWT.getClaims().get("roles").asList(String.class);
        Collection<GrantedAuthority> authorities=new ArrayList<>();
        for(String role:roles)
            authorities.add(new SimpleGrantedAuthority(role));

        UsernamePasswordAuthenticationToken user=new UsernamePasswordAuthenticationToken(
                username,null,authorities);
        SecurityContextHolder.getContext().setAuthentication(user);
            filterChain.doFilter(request, response);}
        catch (JWTDecodeException e) {
            // Log the exception for debugging
            e.printStackTrace();
            // Handle the exception as needed, e.g., return an unauthorized response
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }
    }
}
