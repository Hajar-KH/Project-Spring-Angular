package com.management.security;


import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;

import javax.sql.DataSource;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

@EnableWebSecurity
@Configuration
public class SecurityConfig {
    @Autowired
    AuthenticationManager authenticationManager;

    @Bean
    public AuthenticationManager authenticationManager(
     HttpSecurity httpSecurity,
     BCryptPasswordEncoder bCryptPasswordEncoder,
     UserDetailsService userDetailsService
    ) throws Exception{
         return httpSecurity.getSharedObject(AuthenticationManagerBuilder.class)
                .userDetailsService(userDetailsService)
                .passwordEncoder(bCryptPasswordEncoder)
                .and().build();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception{
        httpSecurity.csrf()
                .disable()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()

                .cors().configurationSource(new CorsConfigurationSource() {
                    @Override
                    public CorsConfiguration getCorsConfiguration(HttpServletRequest request) {
                        CorsConfiguration config=new CorsConfiguration();
                        config.setAllowedOrigins(Collections.singletonList("http://localhost:4200"));
                        config.setAllowedMethods(Collections.singletonList("*"));
                        config.setAllowCredentials(true);
                        config.setAllowedHeaders(Collections.singletonList("*"));
                        config.setExposedHeaders(Arrays.asList("Authorization"));
                        config.setMaxAge(3600L);

                        return config;
                    }
                }).and()


                .authorizeHttpRequests()
                .requestMatchers("/login","/home","/api/Vehicules/**","/api/Clients","/api/Reservations","/api/Vehicules").permitAll()
                .requestMatchers("/api/Clients/**","/api/Reservations/**").hasAuthority("ADMIN")
                //.requestMatchers(HttpMethod.GET,"/api/Clients/**").hasAnyAuthority("ADMIN","ASSISTANT")
               // .requestMatchers(HttpMethod.GET,"/api/Vehicules/**").hasAnyAuthority("ADMIN","ASSISTANT")
                //.requestMatchers(HttpMethod.GET,"/api/Reservations/**").hasAnyAuthority("ADMIN","ASSISTANT")
                //.requestMatchers(HttpMethod.GET,"/api/Clients").hasAnyAuthority("ADMIN","ASSISTANT")
               // .requestMatchers(HttpMethod.GET,"/api/Vehicules").hasAnyAuthority("ADMIN","ASSISTANT")
               // .requestMatchers(HttpMethod.GET,"/api/Reservations").hasAnyAuthority("ADMIN","ASSISTANT")

                .requestMatchers(HttpMethod.POST,"/api/Clients/save").hasAnyAuthority("ADMIN","ASSISTANT")
                .requestMatchers(HttpMethod.POST,"/api/Vehicules/save").hasAuthority("ADMIN")
                .requestMatchers(HttpMethod.POST,"/api/Reservations/save").hasAnyAuthority("ADMIN","ASSISTANT")

                .requestMatchers(HttpMethod.PUT,"/api/Clients/update").hasAuthority("ADMIN")
                .requestMatchers(HttpMethod.POST,"/api/Vehicules/update").hasAuthority("ADMIN")
                .requestMatchers(HttpMethod.POST,"/api/Reservations/update").hasAnyAuthority("ADMIN","ASSISTANT")

                .requestMatchers(HttpMethod.DELETE,"/api/Clients/delete/**").hasAuthority("ADMIN")
                .requestMatchers(HttpMethod.DELETE,"/api/Vehicules/delete/**").hasAuthority("ADMIN")
                .requestMatchers(HttpMethod.DELETE,"/api/Reservations/delete/**").hasAuthority("ADMIN")

                .anyRequest().authenticated().and()
                .addFilterBefore(new JWTAuthenticationFilter(authenticationManager), UsernamePasswordAuthenticationFilter.class)
                .addFilterBefore(new JWTAuthorizationFilter(), UsernamePasswordAuthenticationFilter.class);

        //httpSecurity.formLogin().loginPage("/login").defaultSuccessUrl("/").permitAll();

        //httpSecurity.formLogin();
        ///httpSecurity.authorizeHttpRequests().requestMatchers("/login","/home").permitAll().anyRequest().authenticated();
        //httpSecurity.authorizeHttpRequests().requestMatchers("/create","/save","/lists").hasAnyAuthority("ROLE_ADMIN", "ROLE_ASSISTANT");
        //httpSecurity.authorizeHttpRequests().requestMatchers("/show","/update","/delete").hasAnyAuthority("ROLE_ADMIN");

       /// httpSecurity.addFilterBefore(new JWTAuthenticationFilter(authenticationManager), UsernamePasswordAuthenticationFilter.class);
        //httpSecurity.authorizeHttpRequests().anyRequest().authenticated();
        //httpSecurity.exceptionHandling().accessDeniedPage("/accessDenied");
    return httpSecurity.build();
    }

}
