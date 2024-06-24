package api.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserRequestDto {
    private String password;
    private String name;
    private String email;
    private String surname;
    private String username;

}
