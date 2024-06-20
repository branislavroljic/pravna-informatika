import React, { useEffect, useState } from "react";
import htmlReactParser from "html-react-parser";

const xmlString = `<?xml version="1.0" encoding="UTF-8"?>
<!-- Akoma_Ntoso document -->
<akomaNtoso xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17 ../schemas/akomantoso30.xsd "
    xmlns="http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17"
    xmlns:mods="http://www.loc.gov/standards/mods/v3/mods-3-6.xsd">
    <judgement>
        <meta>
            <identification source="#court">
                <FRBRWork>
                    <FRBRauthor>
						Osnovni Sud u Bijelom Polju
                    </FRBRauthor>
                    <FRBRdate date="2017-05-28">
						2017-05-28
                    </FRBRdate>
                    <FRBRtitle>
						K 139/2017
                    </FRBRtitle>
                    <FRBRcountry>
						CG
                    </FRBRcountry>
                </FRBRWork>
            </identification>
            <references>
                <TLCOrganization eId="os" href="/ontology/organization/OsnovniSud.Bar" showAs="Osnovni sud u Bijelom Polju" />
                <TLCOrganization eId="odtbp" href="/ontology/organization/OsnovnoDrzavnoTuzilastvo.BijeloPolje" showAs="Osnovno drzavno tuzilastvo u Bijelom Polju" />
                <TLCPerson eId="dmrdak" href="/ontology/person/dmrdak" showAs="Dragan Mrdak" />
                <TLCPerson eId="kljesnjak" href="/ontology/person/kljesnjak" showAs="Koviljka Lješnjak" />
                <TLCPerson eId="ke" href="/ontology/person/ke" showAs="K.E." />
                <TLCPerson eId="me" href="/ontology/person/me" showAs="M.E." />
                <TLCPerson eId="amr" href="/ontology/person/amr" showAs="A.M.R." />
                <TLCPerson eId="ajm" href="/ontology/person/ajm" showAs="A.J.M" />
                <TLCRole eId="prosecutor" href="/ontology/role/prosecutor" showAs="Prosecutor" />
                <TLCRole eId="defendant" href="/ontology/role/defendant" showAs="Defendant" />
                <TLCRole eId="judge" href="/ontology/role/judge" showAs="Judge" />
                <TLCRole eId="advisor" href="/ontology/role/advisor" showAs="Advisor" />
                <TLCRole eId="clerk" href="/ontology/role/clerk" showAs="Clerk" />
                <TLCRole eId="victim" href="/ontology/role/victim" showAs="Victim" />
                <TLCRole eId="defenseAttorney" href="/ontology/role/defenseAttorney" showAs="Defense attorney" />
            </references>
        </meta>
        <judgementBody>
            <p>
            <p>
                <organization id="os" refersTo="#os">
                    Osnovni sud u Bijelom Polju
                </organization>
                , prvostepeni krivični sud, sudija pojedinac 
                <party id="dmrdak" refersTo="#dmrdak" as="#judge">
                    Dragan Mrdak
                </party>
                , uz učešće samostalnog referenta - zapisničara #
                <party id="kljesnjak" refersTo="#kljesnjak" as="#clerk">
                    Koviljke Lješnjak
                </party>
                , u krivičnom predmetu protiv okrivljenog 
                <party id="ke" refersTo="#ke" as="#defendant">
                    K.E.a
                </party>
                 iz Belgije, zbog krivičnog djela laka tjelesna povreda iz 
                <ref href="/krivicni#art_152">
                    čl. 152 st. 1 Krivičnog zakonika Crne Gore
                </ref>
                , rješavajući po privatnoj krivičnoj tužbi privatnog tužioca 
                <party id="me" refersTo="#me" as="#victim">
                    M.E.a
                </party>
                 iz Bijelog Polja, od 08. 09. 2017.godine, nakon održanog usmenog, glavnog i javnog pretresa u prisustvu privatnog tužioca 
                <party id="me" refersTo="#me" as="#victim">
                    M.E.a
                </party>
                , punomoćnika privatnog tužioca 
                <party id="amr" refersTo="#amr" as="#prosecutor">
                    A.M.R.a
                </party>
                , branioca okrivljenog po službenoj dužnosti 
                <party id="ajm" refersTo="#ajm" as="#defenseAttorney">
                    A.J.M.
                </party>
                , a u odsustvu okrivljenog 
                <party id="ke" refersTo="#ke" as="#defendant">
                    K.E.a
                </party>
                </p>
                , dana 28.05. 2019. godine, donio je P R E S U D U Okrivljeni 
                <party id="ke" refersTo="#ke" as="#defendant">
                    K.E.
                </party>
                , JMB ..., od oca I. i majke S., rođ. M., rođen .... godine u P.državljanin Belgije, sa prebivalištem u mjestu Hasseltu, Belgija, neoženjen, zaposlen, dobrog imovnog stanja, neosuđivan,
                K r i v j e
                Zato što je:
                - Dana 13.08.2017.godine oko 02:30h u naselju P.a, opština Bijelo Polje, lako tjelesno povrijedio privatnog tužioca 
                <party id="me" refersTo="#me" as="#victim">
                    M.E.a
                </party>
                 na način što je istom, dok je bio oslonjen na vozilo vlasništvo optuženog, prišao i uputio mu uvredljive riječi: „Šta sjediš tu, jebem ti majku“, pa nakon što mu je 
                <party id="me" refersTo="#me" as="#victim">
                    privatni tuzilac
                </party>
                 odgovorio: „Samo sam se naslonio na auto“, 
                <party id="me" refersTo="#me" as="#victim">
                    privatnom tuziocu
                </party>
                 stisnutom pesnicom i otvorenom šakom zadao više udaraca u predjelu glave, kojom prilikom mu je nanio ranu razderinu u predjelu gornje usne, pri čemu je bio svjestan svog djela, njegove zabranjenosti i htio njegovo izvršenje,
                - čime je izvršio krivično djelo laka tjelesna povreda iz 
                <ref href="/krivicni#art_152">
                    čl. 152 st. 1 Krivičnog zakonika Crne Gore
                </ref>
                .
            </p>
	        <conclusions>
		        <p>
                    - za koje ga 
                    <organization id="os" refersTo="#os">
                        sud
                    </organization>
                     primjenom citiranih zakonskih propisa te 
                    <ref href="/krivicni#art_2">
                        čl. 2
                    </ref>
                    , 
                    <ref href="/krivicni#art_4">
                        4
                    </ref>
                    , 
                    <ref href="/krivicni#art_5">
                        5
                    </ref>
                    , 
                    <ref href="/krivicni#art_13">
                        13
                    </ref>
                    , 
                    <ref href="/krivicni#art_15">
                        15
                    </ref>
                    , 
                    <ref href="/krivicni#art_32">
                        32
                    </ref>
                    ,
                    <ref href="/krivicni#art_39">
                        39
                    </ref>
                    ,
                    <ref href="/krivicni#art_42">
                        42
                    </ref>
                    , 
                    <ref href="/krivicni#art_51">
                        51 Krivičnog zakonika
                    </ref>
                    , te 
                    <ref href="/postupak#art_226">
                        čl. 226
                    </ref>
                    , 
                    <ref href="/postupak#art_229">
                        229
                    </ref>
                    , 
                    <ref href="/postupak#art_239">
                        239
                    </ref>
                     i 
                    <ref href="/postupak#art_374">
                        374. Zakonika o krivičnom postupku,
                    </ref>
                    O S U Đ U J E Na novčanu kaznu od 800 €, (osamstotinaeura) u koju kaznu mu se ima uračunati kao plaćen iznos od 350 €, koji iznos je 
                    <party id="ke" refersTo="#ke" as="#defendant">
                        okrivljeni
                    </party>
                     platio po Rješenju Suda za prekršaje Bijelo Polje PP.br.901/17 od 16.08.2017 godine, koju kaznu je 
                    <party id="ke" refersTo="#ke" as="#defendant">
                        okrivljeni
                    </party>
                     dužan platiti u roku od tri mjeseca od dana pravnosnažnosti presude, na žiro račun br. 832 - 151 -35 Depozit novčanih kazni troškova postupka i paušala CG.
                    Ako okrivljeni ne plati novčanu kaznu, 
                    <organization id="os" refersTo="#os">
                        sud
                    </organization>
                     će novčanu kaznu zamijeniti kaznom zatvora, tako što će za svakih započeti 25,00 € novčane kazne, odrediti jedan dan zatvora, a ako 
                    <party id="ke" refersTo="#ke" as="#defendant">
                        okrivljeni
                    </party>
                     plati samo dio novčane kazne, 
                    <organization id="os" refersTo="#os">
                        sud
                    </organization>
                     će ostatak kazne srazmjerno zamijeniti kaznom zatvora, a ako 
                    <party id="ke" refersTo="#ke" as="#defendant">
                        okrivljeni
                    </party>
                     plati ostatak novčane kazne, izvršenje kazne zatvora će obustaviti.
                    <party id="ke" refersTo="#ke" as="#defendant">
                        Okrivljeni
                    </party>
                     se obavezuje da plati ovom 
                    <organization id="os" refersTo="#os">
                        sudu
                    </organization>
                     na ime paušala iznos od 40,00€, iznos od 148,50 €, na ime ostalih troškova, kao i da plati troškove za 
                    <party id="amr" refersTo="#amr" as="#prosecutor">
                        punomoćnika privatnog tužioca
                    </party>
                     i 
                    <party id="ajm" refersTo="#ajm" as="#defenseAttorney">
                        branioca po službenoj dužnosti
                    </party>
                     o kojim troškovima, će 
                    <party id="dmrdak" refersTo="#dmrdak" as="#judge">
                        sudija
                    </party>
                     odlučiti posebnim rješenjem, koje iznose će uplatiti na račun Budžeta CG, broj: 832-151-35, u roku od 15 dana, po pravnosnažnosti presude, pod prijetnjom prinudnog izvršenja, s tim što je dokaz o uplati dužan dostaviti krivičnoj pisarnici ovog 
                    <organization id="os" refersTo="#os">
                        suda
                    </organization>
                    ,
		        </p>
	        </conclusions>
        </judgementBody>
    </judgement>
</akomaNtoso>`; // Your XML string here
const xslString = `<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:akn="http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Template to match the root and produce the HTML document -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Judgement</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1, h2, h3 {
                        color: #333;
                    }
                    p {
                        margin: 10px 0;
                    }
                    .meta, .judgement-body, .conclusions {
                        margin-bottom: 20px;
                        padding: 10px;
                        border: 1px solid #ccc;
                        border-radius: 5px;
                    }
                    .meta {
                        background-color: #f9f9f9;
                    }
                    a {
                        color: blue;
                        text-decoration: none;
                    }
                </style>
            </head>
            <body>
                <h1>Judgement</h1>
                <div class="meta">
                    <h2>Meta Information</h2>
                    <p><strong>Author:</strong> <xsl:value-of select="//akn:FRBRauthor"/></p>
                    <p><strong>Date:</strong> <xsl:value-of select="//akn:FRBRdate/@date"/></p>
                    <p><strong>Title:</strong> <xsl:value-of select="//akn:FRBRtitle"/></p>
                    <p><strong>Country:</strong> <xsl:value-of select="//akn:FRBRcountry"/></p>
                </div>
                <div class="judgement-body">
                    <h2>Judgement Body</h2>
                    <xsl:apply-templates select="//akn:judgementBody/akn:p"/>
                </div>
                <div class="conclusions">
                    <h2>Conclusions</h2>
                    <xsl:apply-templates select="//akn:conclusions/akn:p"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Template to match judgement body paragraphs and handle hrefs -->
    <xsl:template match="akn:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- Template to transform akn:ref elements into HTML anchor tags -->
    <xsl:template match="akn:ref">
        <a href="{@href}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>
</xsl:stylesheet>
`; // Your XSLT string here

function transformXML(xml, xsl) {
  if (window.XSLTProcessor) {
    const xsltProcessor = new window.XSLTProcessor();
    const parser = new DOMParser();
    const xmlDoc = parser.parseFromString(xml, "application/xml");
    const xslDoc = parser.parseFromString(xsl, "application/xml");

    xsltProcessor.importStylesheet(xslDoc);
    const resultDoc = xsltProcessor.transformToFragment(xmlDoc, document);
    return resultDoc;
  } else {
    alert("XSLTProcessor not available in this browser.");
    return null;
  }
}

function cleanHtmlContent(htmlString) {
  // Replace newlines with <br /> and handle tabs
  return htmlString;
  // .replace(/\n/g, "<br/>")
  // .replace(/\t/g, "&nbsp;&nbsp;&nbsp;&nbsp;");
}

function JudgmentsPage() {
  const [htmlContent, setHtmlContent] = useState(null);

  useEffect(() => {
    const htmlFragment = transformXML(xmlString, xslString);
    if (htmlFragment) {
      const htmlString = new XMLSerializer().serializeToString(htmlFragment);
      const cleanedHtmlString = cleanHtmlContent(htmlString);
      setHtmlContent(cleanedHtmlString);
    }
  }, []);

  console.log(htmlContent);
  return (
    <div className="App">
      {htmlContent ? htmlReactParser(htmlContent) : <p>Loading...</p>}
    </div>
  );
}

export default JudgmentsPage;
