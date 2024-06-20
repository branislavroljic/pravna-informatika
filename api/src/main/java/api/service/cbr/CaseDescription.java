package api.service.cbr;

import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {

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
    private JudgmentType judgmentType;
    private Boolean isRecidivist;
    private String sentence;

    public String getCaseNumber() {
        return caseNumber;
    }

    public void setCaseNumber(String caseNumber) {
        this.caseNumber = caseNumber;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCourt() {
        return court;
    }

    public void setCourt(String court) {
        this.court = court;
    }

    public String getJudge() {
        return judge;
    }

    public void setJudge(String judge) {
        this.judge = judge;
    }

    public String getCourtReporter() {
        return courtReporter;
    }

    public void setCourtReporter(String courtReporter) {
        this.courtReporter = courtReporter;
    }

    public String getDefendant() {
        return defendant;
    }

    public void setDefendant(String defendant) {
        this.defendant = defendant;
    }

    public String getCriminalOffense() {
        return criminalOffense;
    }

    public void setCriminalOffense(String criminalOffense) {
        this.criminalOffense = criminalOffense;
    }

    public InjurySeverity getInjurySeverity() {
        return injurySeverity;
    }

    public void setInjurySeverity(InjurySeverity injurySeverity) {
        this.injurySeverity = injurySeverity;
    }

    public PublicOfficial getPublicOfficial() {
        return publicOfficial;
    }

    public void setPublicOfficial(PublicOfficial publicOfficial) {
        this.publicOfficial = publicOfficial;
    }

    public Boolean getUsedWeapon() {
        return isUsedWeapon;
    }

    public void setUsedWeapon(Boolean usedWeapon) {
        isUsedWeapon = usedWeapon;
    }

    public Boolean getPermanentDamage() {
        return isPermanentDamage;
    }

    public void setPermanentDamage(Boolean permanentDamage) {
        isPermanentDamage = permanentDamage;
    }

    public Boolean getProvoked() {
        return isProvoked;
    }

    public void setProvoked(Boolean provoked) {
        isProvoked = provoked;
    }

    public JudgmentType getJudgmentType() {
        return judgmentType;
    }

    public void setJudgmentType(JudgmentType judgmentType) {
        this.judgmentType = judgmentType;
    }

    public Boolean getRecidivist() {
        return isRecidivist;
    }

    public void setRecidivist(Boolean recidivist) {
        isRecidivist = recidivist;
    }

    public String getSentence() {
        return sentence;
    }

    public void setSentence(String sentence) {
        this.sentence = sentence;
    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("caseNumber", this.getClass());
    }
    @Override
    public String toString(){
        return ""; //TODO: ToString metoda
    }
}
