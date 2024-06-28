package api.security;

import api.model.User;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.stereotype.Service;


@Data
@Service
@RequiredArgsConstructor
public class JwtUtils {

  private final JwtConfig jwtConfig;

  public String generateJwt(User user) {

    return Jwts.builder()
        .setId(user.getId().toString())
        .setSubject(user.getUsername())
        .claim("role", user.getRole().name())
        .setExpiration(new Date(System.currentTimeMillis() + jwtConfig.getTokenExpirationTime()))
        .signWith(jwtConfig.getHmacKey())
        .compact();
  }

  public String generateRefresh(User user) {
    return Jwts.builder()
        .setSubject(user.getUsername())
        .setExpiration(
            new Date(System.currentTimeMillis() + jwtConfig.getRefreshTokenExpirationTime()))
        .signWith(jwtConfig.getHmacKey())
        .compact();
  }

  public Claims getClaimsFromJwtToken(String token) {
    try {
      return Jwts.parserBuilder().setSigningKey(jwtConfig.getHmacKey()).build()
          .parseClaimsJws(token).getBody();
    } catch (Exception ex) {
      throw new AuthenticationCredentialsNotFoundException("JWT was expired or incorrect");
    }
  }
}
