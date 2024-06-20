package api.dto;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Case {

  private CaseFeatures caseFeatures;
  private String xmlContent;
}
