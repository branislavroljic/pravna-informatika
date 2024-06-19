package api.service.cbr;

import api.dto.CaseFeatures;
import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class CaseDescription implements CaseComponent {

  private int id;
  private String caseNumber;
  private String date;
  private String court;
  private String judge;
  private String courtReporter;
  private String defendant;
  private String criminalOffense;
  private JudgmentType judgmentType;
  private String sentence;

  private InjurySeverity injurySeverity;
  private PublicOfficial publicOfficial;
  private Boolean isUsedWeapon;
  private Boolean isPermanentDamage;
  private Boolean isProvoked;
  private Boolean isRecidivist;


  public CaseDescription(int id, CaseFeatures features) {
    this.id = id;
    this.caseNumber = features.getCaseNumber();
    this.date = features.getDate();
    this.court = features.getCourt();
    this.judge = features.getJudge();
    this.courtReporter = features.getCourtReporter();
    this.defendant = features.getDefendant();
    this.criminalOffense = features.getCriminalOffense();
    this.judgmentType = features.getJudgmentType();
    this.sentence = features.getSentence();
    this.injurySeverity = features.getInjurySeverity();
    this.publicOfficial = features.getPublicOfficial();
    this.isUsedWeapon = features.getIsUsedWeapon();
    this.isPermanentDamage = features.getIsPermanentDamage();
    this.isProvoked = features.getIsProvoked();
    this.isRecidivist = features.getIsRecidivist();
  }

  @Override
  public String toString() {
    return id + ";"
        + caseNumber + ";"
        + date + ";"
        + court + ";"
        + judge + ";"
        + courtReporter + ";"
        + defendant + ";"
        + criminalOffense + ";"
        + judgmentType + ";"
        + sentence + ";"
        + injurySeverity + ";"
        + publicOfficial + ";"
        + isUsedWeapon + ";"
        + isPermanentDamage + ";"
        + isProvoked + ";"
        + isRecidivist;
  }

  @Override
  public Attribute getIdAttribute() {
    return new Attribute("id", this.getClass());
  }
}
