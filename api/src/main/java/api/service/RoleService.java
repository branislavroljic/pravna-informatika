package api.service;


import api.model.Role;
import api.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {
    @Autowired
    RoleRepository roleRepository;

    public List<Role> findByName(String roleUser) {
        return roleRepository.findByName(roleUser);
    }
}
