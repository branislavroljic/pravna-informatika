package api.security;

import api.exception.NotFoundException;
import api.mapper.UserMapper;
import api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class JwtUserDetailService implements UserDetailsService {

  private final UserRepository userRepository;
  private final UserMapper userMapper;

  @Override
  public JwtUser loadUserByUsername(String username)
      throws org.springframework.security.core.userdetails.UsernameNotFoundException {

    return userMapper.mapUserToJwtUser(
        userRepository.findByUsername(username).orElseThrow(NotFoundException::new));
  }
}
