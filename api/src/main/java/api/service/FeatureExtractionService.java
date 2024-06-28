package api.service;

import api.dto.CaseFeatures;
import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

@Service
@RequiredArgsConstructor
@Slf4j
public class FeatureExtractionService {

  public CaseFeatures extractFeatures(String caseName) throws IOException {
    CaseFeatures caseFeatures = new CaseFeatures();

    String pdfContent = readPDF(caseName);
    String fullPdfContent = pdfContent;
    //Remove unnecessary text
    Pattern pattern = Pattern.compile(
        "Obrazlo(?:ž|z)enje|O\\s*b\\s*r\\s*a\\s*z\\s*l\\s*o\\s*ž\\s*e\\s"
            + "*n\\s*j\\s*e|O\\s*b\\s*r\\s*a\\s*z\\s*l\\s*o\\s*(?:ž|z)\\s*e\\s*n\\s*j\\s*e");
    Matcher matcher = pattern.matcher(pdfContent);
    if (matcher.find()) {
      pdfContent = pdfContent.substring(0, matcher.start());
    }

    caseFeatures.setCaseNumber(getCaseNumber(pdfContent));
    caseFeatures.setDate(getDate(pdfContent));
    caseFeatures.setCourt(getCourt((pdfContent)));
    caseFeatures.setJudge(getJudge(pdfContent));
    caseFeatures.setCourtReporter(getCourtReporter(pdfContent));
    caseFeatures.setDefendant(getDefendant(pdfContent));
    caseFeatures.setCriminalOffense(getCriminalOffense((pdfContent)));
    caseFeatures.setInjurySeverity(getInjurySeverity(pdfContent));
    caseFeatures.setPublicOfficial(getPublicOfficial(pdfContent));
    caseFeatures.setIsUsedWeapon(getIsUsedWeapon(pdfContent));
    caseFeatures.setIsPermanentDamage(getIsPermanentDamage(fullPdfContent));
    caseFeatures.setIsProvoked(getIsProvoked(fullPdfContent));
    caseFeatures.setJudgmentType(getJudgmentType(pdfContent));
    caseFeatures.setIsRecidivist(getIsRecidivist(pdfContent));
    caseFeatures.setSentence(getSentence(pdfContent));
    caseFeatures.setIsDisturbedPublicOrderAndPeace(getIsDisturbedPublicOrderAndPeace(pdfContent));

    return caseFeatures;
  }

  private String getCaseNumber(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "\\bK(?:.*[Bb]r(oj)?\\.?\\s*|\\.\\s*)?([0-9]+/[0-9]+)\\b");
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find() ? matcher.group(0).trim().replaceAll("\\.?\\s*(br(oj)?)?\\.?\\s*", "") :
        null;
  }

  private String getDate(String pdfContent) {
    Pattern datumPattern = Pattern.compile("[Dd]ana.*?(([0-9]{2}\\.){2}[0-9]{4}).*?godine",
        Pattern.DOTALL);
    Matcher matcher = datumPattern.matcher(pdfContent);
    if (matcher.find()) {

      return matcher.group(1);
    }
    return null;
  }

  private String getCourt(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(osnovni\s*sud\s*u\s*(([A-ZŠĐČĆŽ][a-zšđžćčA-ZŠĐČĆŽ\\.]+[ -]*)+))",
        Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find() ? matcher.group(0).trim() : null;
  }

  private String getJudge(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(sudij[ai]|[Pp]redsjednik[au]?\\ssuda)(([a-z]* )*)(([A-ZŠĐČĆŽ][a-zšđžćč\\.]+[ ,-]*)+)");
    Matcher matcher = pattern.matcher(pdfContent);
    if (matcher.find()) {
      return matcher.group(4).trim().replaceAll("[,\\s]+$", "");
    }
    return null;
  }

  private String getCourtReporter(String pdfContent) {
    Pattern pattern1 = Pattern.compile(
        "zapisničar[a-zšđžćč]*\\s+(([A-ZŠĐČĆŽ][a-zšđžćč\\.]+[ ,-]*)+)");
    Pattern pattern2 = Pattern.compile(
        "(([A-ZŠĐČĆŽ][a-zšđžćč\\.]+[ ,-]*)+)\\s*,?\\s*kao\\s+zapisničar[a-zšđžćč]*");
    Matcher matcher1 = pattern1.matcher(pdfContent);
    if (matcher1.find()) {
      return matcher1.group(1).trim().replaceAll("[,\\s]+$", "");
    } else {
      Matcher matcher2 = pattern2.matcher(pdfContent);
      if (matcher2.find()) {
        return matcher2.group(1).trim().replaceAll("[,\\s]+$", "");
      }
    }
    return null;
  }

  private String getDefendant(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(?:optuženog |optužene |okrivljenog |okrivljene )(([A-ZŠĐČĆŽ][a-zšđžćč\\.]*[ ,-]*)+)");
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find() ? matcher.group(1).trim().replaceAll("[,\\s]+$", "") : null;
  }

  //ne radi za k43 2020, iako radi u Regexu
  private String getCriminalOffense(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(?:zbog.*?krivičn(?:a|og|ih)\\s*djela[\\s-]*)([A-ZŽĐŠČĆa-zžđšćčć0-9.\\s]*(?:Kr?ivičnog zakonika|KZ))",
        Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find() ? matcher.group(1).trim().replaceAll("[,\\s]+$", "") : null;
  }

  private InjurySeverity getInjurySeverity(String pdfContent) {
    Pattern pattern = Pattern.compile(
//        "izvršio\\s*krivično\\s*djelo\\s*(laka|teška)\\s*tjelesna\\s*povreda");
        "((lak|tešk)[aeiou])[ \\n\\r,]*tjelesn"
    );
    Matcher matcher = pattern.matcher(pdfContent);
    if (matcher.find()) {
      String injury = matcher.group(1);
      return injury.equals("laka") ? InjurySeverity.MINOR : InjurySeverity.SERIOUS;
    }
    return InjurySeverity.NONE;
  }

  private PublicOfficial getPublicOfficial(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "napad\\s*na\\s*službeno\\s*lice");
    Matcher matcher = pattern.matcher(pdfContent);

    Pattern patternSpecialPublicOfficial = Pattern.compile("((službenik[ae]?) Uprave "
        + "policije|inspektor[ae]|tužioc[ae])");
    if (matcher.find()) {
      Matcher matcherSpecialPublicOfficial = patternSpecialPublicOfficial.matcher(pdfContent);
      return matcherSpecialPublicOfficial.find() ? PublicOfficial.SPECIAL_PUBLIC_OFFICIAL
          : PublicOfficial.PUBLIC_OFFICIAL;
    }
    return PublicOfficial.NONE;
  }

  private Boolean getIsUsedWeapon(String pdfContent) {
    Pattern pattern1 = Pattern.compile(
        "((stisnutom)?pesnicom)|(nogom)");
    Pattern pattern2 = Pattern.compile(
        "(ispali[o|la].*?projektil[aeiou]?)"
            + "|(sredstvom\\s*podobnim\\s*da\\s*tijelo\\s*teško\\s*povrijedi\\s*(i|ili)\\s*zdravlje\\s*teško\\s*naruši)");
    Matcher matcher1 = pattern1.matcher(pdfContent);
    Matcher matcher2 = pattern2.matcher(pdfContent);
    if (matcher1.find()) {
      return false;
    } else {
      return matcher2.find();
    }
  }

  //TODO: ovdje sam nasao da ima par njih sa "nijesu ostavile" trajne posledice
  //Ne u nasim presudama, nego generalno, pa vidjeti treba li se i to pokriti
  private Boolean getIsPermanentDamage(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "trajn[a-z].*?(posledic[aeiou]|ošteće[j]?[aeiou]|izgubi(?:o|la))",
        Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find();
  }

  private Boolean getIsProvoked(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(?:odbijajući.*?napad)|(?:doveden[aeiou]?\\s*u\\s*afektivno\\s*stanje)|"
            + "(?:nužn[aeiou]\\s*odbran[aeiou])|(?:izazvan[aeiou]?)");
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find();
  }

  private JudgmentType getJudgmentType(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(USLOVNU OSUDU)|(O S U (?:Đ|DJ|D J) U J E)|(OSU(?:Đ|DJ)UJE)|(OSLOBA(?:Đ|DJ)A SE (?:OD )"
            + "?OPTUŽBE)|(OPTUŽBA SE"
            + " ODBIJA)|(SUDSKA OPOMENA)", Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher(pdfContent);
    if (matcher.find()) {
      if (matcher.group(0).equals("USLOVNU OSUDU")) {
        return JudgmentType.SUSPENDED;
      }
      if (matcher.group(0).contains("OPTUŽBE") | matcher.group(0).contains("OPTUŽBA SE ODBIJA")) {
        return JudgmentType.ACQUITTAL;
      } else if (matcher.group(0).equals("SUDSKA OPOMENA")) {
        return JudgmentType.WARNING;
      } else {
        return JudgmentType.CONVICTION;
      }

    }
    return null;
  }

  private Boolean getIsRecidivist(String pdfContent) {
    Pattern judgmentPattern = Pattern.compile(
        "(USLOVNU OSUDU)|(O S U (?:Đ|DJ|D J) U J E)|(OSU(?:Đ|DJ)UJE)|(OSLOBA(?:Đ|DJ)A SE (?:OD )"
            + "?OPTUŽBE)|(OPTUŽBA SE"
            + " ODBIJA)|(SUDSKA OPOMENA)", Pattern.CASE_INSENSITIVE);
    Matcher judgmentMatcher = judgmentPattern.matcher(pdfContent);
    if (!judgmentMatcher.find()) {
      return null;
    }
    String judgmentStr = pdfContent;
    Integer idxFrom = 0;
    if (judgmentStr.contains("P R E S U D U")) {
      idxFrom = judgmentStr.indexOf("P R E S U D U") + 1;
    }
    if (judgmentStr.contains("PRESUDU")) {
      idxFrom = judgmentStr.indexOf("PRESUDU") + 1;
    }

    judgmentStr = judgmentStr.substring(idxFrom, judgmentMatcher.start());

    Pattern pattern = Pattern.compile("(osu(?:đ|dj)ivan)|(neosu(?:đ|dj)ivan)");
    Matcher matcher = pattern.matcher(judgmentStr);
    if (matcher.find()) {
      return matcher.group(0).equals("osudjivan") | matcher.group(0).equals("osuđivan");
    }
    return false;
  }

  private Boolean getIsDisturbedPublicOrderAndPeace(String pdfContent) {
    Pattern pattern = Pattern.compile(
        "(Naruši(o|la)\\s*?javni red(\\s*i\\s*mir))|(narušavanje\\s*javnog\\sreda\\s*i\\s*mira)");
    Matcher matcher = pattern.matcher(pdfContent);
    return matcher.find();
  }

  private String getSentence(String pdfContent) {
    Pattern judgmentPattern = Pattern.compile(
        "(USLOVNU OSUDU)|(O S U (?:Đ|DJ|D J) U J E)|(OSU(?:Đ|DJ)UJE)|(SUDSKA OPOMENA)",
        Pattern.CASE_INSENSITIVE);
    Matcher judgmentMatcher = judgmentPattern.matcher(pdfContent);
    String sentenceString = pdfContent;
    if (!judgmentMatcher.find()) {
      return null;
    }
    sentenceString = sentenceString.substring(judgmentMatcher.start());

    Pattern sentencePattern = Pattern.compile(
        "kaznu zatvora u trajanju od (\\d+)\\s*[\\/\\(]\\s*[a-zšđžćč:]+\\s*[\\/\\)]\\s*(mjesec[aieou]?|dana?|godin[aeiou]?)"
            + "(?: i (\\d+)\\s*[\\(\\[]\\s*[a-zšđžćč:]+\\s*[\\)\\]]\\s*(godin[aeiou]?|mjesec[aieou]?|dana?))?",
        Pattern.CASE_INSENSITIVE);
    Matcher sentenceMatcher = sentencePattern.matcher(sentenceString);

    Pattern fineSentencePattern = Pattern.compile(
        "(?:Na novčanu kaznu (?:u iznosu )?od)\\s*([1-9]{1}\\d*\\s*€)");
    Matcher fineSentenceMatcher = fineSentencePattern.matcher(sentenceString);

    StringBuilder stringBuilder = new StringBuilder();

    if (sentenceMatcher.find()) {
      stringBuilder.append(sentenceMatcher.group(1)).append(" ").append(sentenceMatcher.group(2));
      if (sentenceMatcher.group(3) != null) {
        stringBuilder.append(" i ").append(sentenceMatcher.group(3)).append(" ")
            .append(sentenceMatcher.group(4));
      }

      return stringBuilder.toString();
    } else if (fineSentenceMatcher.find()) {
      return fineSentenceMatcher.group(1);
    }

    return null;
  }


  private String readPDF(String caseName) throws IOException {
    String pdfContent = "";

    File pdfFile = ResourceUtils.getFile("classpath:cases/" + caseName);
    try (PDDocument document = PDDocument.load(pdfFile)) {
      PDFTextStripper pdfStripper = new PDFTextStripper();
      pdfContent = pdfStripper.getText(document);
    }

    return pdfContent;
  }

}
