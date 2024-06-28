package api.service;

import api.dto.auth.LoginRequest;
import api.dto.auth.LoginResponse;
import api.dto.auth.RefreshTokenRequest;
import api.dto.auth.RefreshTokenResponse;
import api.exception.NotFoundException;
import api.mapper.UserMapper;
import api.model.User;
import api.repository.UserRepository;
import api.security.JwtConfig;
import api.security.JwtUser;
import api.security.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class AuthService {

  private final MessageSource ms;
  private final UserRepository userEntityRepository;
  private final UserMapper userMapper;
  private final PasswordEncoder passwordEncoder;
  private final AuthenticationManager authenticationManager;
  private final JwtUtils jwtUtils;
  private final JwtConfig jwtConfig;

  public LoginResponse login(LoginRequest loginRequest) {
    LoginResponse response;
    try {
      Authentication authentication =
          authenticationManager.authenticate(
              new UsernamePasswordAuthenticationToken(
                  loginRequest.getUsername(), loginRequest.getPassword()));
      JwtUser jwtUser = (JwtUser) authentication.getPrincipal();

      User userEntity =
          userEntityRepository.findById(jwtUser.getId()).orElseThrow(NotFoundException::new);

      response = userMapper.mapUserToLoginResponse(userEntity);
      response.setToken(jwtUtils.generateJwt(userEntity));
      response.setRefreshToken(jwtUtils.generateRefresh(userEntity));

    } catch (Exception e) {
      log.error(String.format("An error occurred while performing action: %s", e.getMessage()));
      throw new NotFoundException("Email or password are not valid");
    }
    return response;
  }

  public RefreshTokenResponse refreshToken(RefreshTokenRequest request) {
    // get refresh token
    String refreshToken = request.getRefreshToken();
    Claims claims = jwtUtils.getClaimsFromJwtToken(refreshToken);

    // get user from claims
    User user =
        userEntityRepository
            .findByUsername(claims.getSubject())
            .orElseThrow(NotFoundException::new);

    // generate new JWT
    String jwt = jwtUtils.generateJwt(user);

    RefreshTokenResponse response = new RefreshTokenResponse();
    response.setJwtToken(jwt);
    return response;
  }
}
