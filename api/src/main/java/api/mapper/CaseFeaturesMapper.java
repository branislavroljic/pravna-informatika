
package api.mapper;

import api.dto.auth.LoginResponse;
import api.model.User;
import api.security.JwtUser;
import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
    componentModel = "spring")
public interface CaseFeaturesMapper {

  JwtUser mapCaseFeaturesToCaseDescription(User user);

  @BeanMapping(
      qualifiedByName = "userEntityToLoginResponse",
      nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
  LoginResponse mapUserToLoginResponse(User user);

}
