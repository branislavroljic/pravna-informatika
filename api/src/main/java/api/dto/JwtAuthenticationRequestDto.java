package api.dto;

public class JwtAuthenticationRequestDto {
    private String username;
    private String password;

    public JwtAuthenticationRequestDto() {
        super();
    }

    public JwtAuthenticationRequestDto(String username, String password) {
        this.setUsername(username);
        this.setPassword(password);
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
