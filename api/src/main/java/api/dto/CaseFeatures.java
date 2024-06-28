package api.dto;

import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
import lombok.Data;

@Data
public class CaseFeatures {

  private String caseNumber;
  private String date;
  private String court;
  private String judge;
  private String courtReporter;
  private String defendant;
  private String criminalOffense;
  private InjurySeverity injurySeverity;
  private PublicOfficial publicOfficial;
  private Boolean isUsedWeapon;
  private Boolean isPermanentDamage;
  private Boolean isProvoked;
  private Boolean isRecidivist;
  private Boolean isDisturbedPublicOrderAndPeace;
  private JudgmentType judgmentType;
  private String sentence;
}
