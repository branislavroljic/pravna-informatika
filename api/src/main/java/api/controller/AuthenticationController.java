package api.controller;


import api.dto.UserRequestDto;
import api.model.User;
import api.security.TokenUtils;
import api.service.UserService;
import jakarta.annotation.security.PermitAll;
import org.apache.coyote.BadRequestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "/auth", produces = MediaType.APPLICATION_JSON_VALUE)
public class AuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenUtils tokenUtils;

    @Autowired
    public UserService userService;


    @PermitAll
    @PostMapping("/register")
    public ResponseEntity<User> addUser(@RequestBody UserRequestDto userRequest) throws BadRequestException {
        User existUser = this.userService.findByUsername(userRequest.getUsername());

        if (existUser != null) {
            throw new BadRequestException("Username already exists");
        }

        User user = this.userService.register(userRequest);

        return new ResponseEntity<>(user, HttpStatus.CREATED);
    }
}
