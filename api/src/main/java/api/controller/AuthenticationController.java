package api.controller;


import api.dto.UserRequestDto;
import api.dto.auth.LoginRequest;
import api.dto.auth.LoginResponse;
import api.model.User;
import api.service.AuthService;
import api.service.UserService;
import jakarta.annotation.security.PermitAll;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.BadRequestException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/auth")
public class AuthenticationController {

  private final AuthService authService;
  private final UserService userService;

  @PostMapping("/login")
  public ResponseEntity<LoginResponse> login(@RequestBody @Valid LoginRequest loginRequest) {
    return ResponseEntity.ok(authService.login(loginRequest));
  }

  @PermitAll
  @PostMapping("/register")
  public ResponseEntity<User> addUser(@RequestBody UserRequestDto userRequest)
      throws BadRequestException {
    User existUser = this.userService.findByUsername(userRequest.getUsername());

    if (existUser != null) {
      throw new BadRequestException("Username already exists");
    }
    User user = this.userService.register(userRequest);

    return new ResponseEntity<>(user, HttpStatus.CREATED);
  }
}
