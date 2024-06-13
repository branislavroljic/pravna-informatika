package api.security;

import java.util.Arrays;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.core.GrantedAuthorityDefaults;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class JwtSecurityConfiguration {

  private final AuthenticationConfiguration authenticationConfiguration;

  @Bean
  static GrantedAuthorityDefaults grantedAuthorityDefaults() {
    return new GrantedAuthorityDefaults("");
  }

  @Bean
  public AuthenticationManager authManager() throws Exception {
    return authenticationConfiguration.getAuthenticationManager();
  }

  @Bean
  public PasswordEncoder encoder() {
    return PasswordEncoderFactories.createDelegatingPasswordEncoder();
  }

  private static final String[] AUTH_WHITELIST = {

    // for Swagger UI v2
    "/v2/api-docs",
    "/swagger-ui.html",
    "/swagger-resources",
    "/swagger-resources/**",
    "/configuration/ui",
    "/configuration/security",
    "/webjars/**",
    "/v3/api-docs/**",
    "/swagger-ui/**", "/**"
  };

  @Bean
  public SecurityFilterChain filterChain1(
      HttpSecurity http, CorsConfigurationSource corsConfigurationSource) throws Exception {
    System.out.println("Tu samm");
    http.cors(configuration -> configuration.configurationSource(corsConfigurationSource()))
        .csrf(AbstractHttpConfigurer::disable)
        .sessionManagement(
            session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
        .authorizeHttpRequests(
            authorize ->
                authorize
//                    .requestMatchers(HttpMethod.GET, AUTH_WHITELIST)
//                    .permitAll()
//                   .requestMatchers(HttpMethod.GET, "/cbr/**").permitAll()
//                    .permitAll()
                    .anyRequest()
                    .permitAll());

    return http.build();
  }

  @Bean
  @Primary
  CorsConfigurationSource corsConfigurationSource() {
    final var configuration = new CorsConfiguration();

    configuration.addAllowedOriginPattern("http://127.0.0.1:5173/");
    configuration.addAllowedOrigin("*");
    configuration.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE", "OPTIONS"));

    configuration.setAllowedHeaders(List.of("*"));
    configuration.setExposedHeaders(List.of("*"));

    final var source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", configuration);

    return source;
  }
}
