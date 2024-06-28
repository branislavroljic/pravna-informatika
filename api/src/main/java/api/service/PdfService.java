package api.service;

import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.service.cbr.CaseDescription;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.properties.TextAlignment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.MessageFormat;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PdfService {

  private final ResourceLoader resourceLoader;

  public void createPdf(CaseDescription caseDescription) throws Exception {
    ByteArrayOutputStream out = new ByteArrayOutputStream();

    PdfDocument pdf = new PdfDocument(new PdfWriter(out));
    Document document = new Document(pdf, PageSize.A4);

    PdfFont font = PdfFontFactory.createFont("Helvetica-Bold");

    // Add title
    document.add(new Paragraph(caseDescription.getCourt())
        .setFont(font)
        .setFontSize(16)
        .setTextAlignment(TextAlignment.CENTER));
    document.add(new Paragraph(caseDescription.getCaseNumber())
        .setFont(font)
        .setFontSize(12)
        .setTextAlignment(TextAlignment.CENTER));
    document.add(new Paragraph(caseDescription.getCaseNumber())
        .setFont(font)
        .setFontSize(12)
        .setTextAlignment(TextAlignment.RIGHT));

    document.add(new Paragraph("\nU IME CRNE GORE")
        .setFont(font)
        .setFontSize(14)
        .setTextAlignment(TextAlignment.CENTER));

    String paragraph = MessageFormat.format("{0}, sudija {1}, uz ucesce namjestenika suda {2}, "
            + "kao zapisnicara, u krivicnom predmetu protiv okrivljenog {3}, zbog krivicnog "
            + "djela{4}, donio i javno objavio sljedece",
        caseDescription.getCourt(),
        caseDescription.getJudge(), caseDescription.getCourtReporter(),
        caseDescription.getDefendant(), caseDescription.getCriminalOffense());
    document.add(new Paragraph(paragraph)
        .setFont(PdfFontFactory.createFont("Helvetica"))
        .setFontSize(12));

    JudgmentType judgmentType = caseDescription.getJudgmentType();
    String judgmentTitle = judgmentType == JudgmentType.ACQUITTAL ? "OSLOBAĐA "
        + "SE" : judgmentType == JudgmentType.CONVICTION ? "PRESUDU" :
        judgmentType == JudgmentType.WARNING ? "OPOMENU" : "USLOVNU OSUDU";
    document.add(new Paragraph(judgmentTitle)
        .setFont(font)
        .setFontSize(14)
        .setTextAlignment(TextAlignment.CENTER));

    String judgmentParagraph = MessageFormat.format("Okrivljeni {0}, {1}, {2} zbog krivičnog "
            + "djela {3}, prilikom kog žrtva {4} koje {5} ostavile trajne posljedice. Bitno je "
            + "istaci da napad {6} nastao kao posljedica provokacije, vrijedjanja ili grubog "
            + "ponasanja od "
            + "strane "
            + "ostecenog.",
        caseDescription.getDefendant(), caseDescription.getIsRecidivist() ? "prethodno osudjivan" :
            "neosuđivan",
        caseDescription.getJudgmentType() != JudgmentType.ACQUITTAL ? "je kriv" : "nije kriv",
        caseDescription.getCriminalOffense(),
        caseDescription.getInjurySeverity() == InjurySeverity.NONE ?
            "ne zadobija tjelesne povrede" :
            "zadobija " + (caseDescription.getInjurySeverity() == InjurySeverity.MINOR ? "lake"
                : "teske") + " tjelesne povrede",
        caseDescription.getIsPermanentDamage() ? "jesu" : "nisu", caseDescription.getIsProvoked() ?
            "jeste" : "nije");

    // Add rest of the text
    document.add(new Paragraph(
        judgmentParagraph)
        .setFont(PdfFontFactory.createFont("Helvetica"))
        .setFontSize(10));

    if (judgmentType != JudgmentType.ACQUITTAL
        && judgmentType != JudgmentType.WARNING) {

      // Add new content
      document.add(new Paragraph("Pa ga Sud, ")
          .setFont(font)
          .setFontSize(12));

      document.add(new Paragraph(judgmentType == JudgmentType.SUSPENDED ? "USLOVNO OSUDJUJE" :
          "OSUDJUJE")
          .setFont(font)
          .setFontSize(14)
          .setTextAlignment(TextAlignment.CENTER));

      String sentenceParagraph = MessageFormat.format("Na kaznu od {0}",
          caseDescription.getSentence());
      document.add(new Paragraph(
          sentenceParagraph)
          .setFont(font)
          .setFontSize(12));
    }

    document.close();

    // Write to the file in the classpath
    try {
//      Resource resource = resourceLoader.getResource("classpath:cases/");
      File file = new File(caseDescription.getCaseNumber() + ".pdf");
      try (FileOutputStream fos = new FileOutputStream(file)) {
        fos.write(out.toByteArray());
      }
    } catch (IOException e) {
      e.printStackTrace();
    }

  }
}
