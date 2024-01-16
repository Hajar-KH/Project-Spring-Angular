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
        // Récupération du jeton JWT de l'en-tête "Authorization"
        String jwt = request.getHeader("Authorization");
        // Vérification de la présence du jeton et du préfixe attendu
        if (jwt == null || !jwt.startsWith(SecurityParameters.PREFIX)) {
            filterChain.doFilter(request, response);
            return;
        }
        // Retrait du préfixe du jeton
        jwt = jwt.substring(SecurityParameters.PREFIX.length());

        // Affichage du jeton reçu à des fins de débogage
        System.out.println("Received JWT: " + jwt);
        // Ajout de la vérification des parties du jeton
        String[] tokenParts = jwt.split("\\.");
        // Vérification du nombre de parties du jeton
        if (tokenParts.length != 3) {
            // Le jeton ne contient pas les 3 parties attendues
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }


        try{
            // Création du vérificateur de JWT avec l'algorithme HMAC256 et la clé secrète
            JWTVerifier verifier= JWT.require(Algorithm.HMAC256(SecurityParameters.SECRET)).build();

            // Vérification de la signature du jeton
            DecodedJWT decodedJWT = verifier.verify(jwt);

            // Extraction du nom d'utilisateur à partir du jeton
            String username = decodedJWT.getSubject();

            // Extraction des rôles à partir du jeton
            List<String> roles=decodedJWT.getClaims().get("roles").asList(String.class);

            // Conversion des rôles en objets GrantedAuthority
            Collection<GrantedAuthority> authorities=new ArrayList<>();
        for(String role:roles)
            authorities.add(new SimpleGrantedAuthority(role));

        // Création d'un objet UsernamePasswordAuthenticationToken avec les informations extraites
        UsernamePasswordAuthenticationToken user=new UsernamePasswordAuthenticationToken(
                username,null,authorities);
        // Définition de l'authentification
        SecurityContextHolder.getContext().setAuthentication(user);
            // Poursuite du traitement de la requête
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
