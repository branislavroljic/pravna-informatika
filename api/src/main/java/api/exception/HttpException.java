package api.exception;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.http.HttpStatus;

@Getter
@Setter
@ToString
public class HttpException extends RuntimeException {

  private final HttpStatus status;
  private final Object data;

  public HttpException(HttpStatus status, Object data) {
    this.status = status;
    this.data = data;
  }

  public HttpException(Object data) {
    this(HttpStatus.INTERNAL_SERVER_ERROR, data);
  }

}
