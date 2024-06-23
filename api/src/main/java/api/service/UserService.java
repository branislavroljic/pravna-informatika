package api.service;

import api.dto.UserRequestDto;
import api.model.Role;
import api.model.User;
import api.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private RoleService roleService;

    public User findByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username);
    }

    public User register(UserRequestDto userRequest) {
        User u = new User();
        u.setUsername(userRequest.getUsername());
        u.setEmail(userRequest.getEmail());
        u.setPassword(passwordEncoder.encode(userRequest.getPassword()));
        u.setName(userRequest.getName());
        u.setSurname(userRequest.getSurname());
        List<Role> roles = roleService.findByName("ROLE_USER");
        u.setRoles(roles);

        return this.userRepository.save(u);
    }
}
