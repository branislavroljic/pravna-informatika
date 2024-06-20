import React, { useEffect, useState } from "react";
import htmlReactParser from "html-react-parser";
import { useQuery } from "@tanstack/react-query";
import { getFile } from "@api/cbr/cbr";
import { CaseDetails, JudgmentDetails } from "./JudgmentDetails";
import { Stack } from "@mui/material";

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
                        font-family: system-ui, sans-serif;
                        margin: 20px;
                    }
                    h1, h2, h3 {
                        color: #333;
                    }
                    p {
                        margin: 10px 0;
                    }
                    a {
                        color: blue;
                        text-decoration: none;
                    }
                </style>
            </head>
            <body>
                <div class="meta">
                    <div style="display : flex; flex-direction : column; gap : 6px">
                        <div style="text-align: center;"> <xsl:value-of select="//akn:FRBRauthor"/></div>
                        <div style="text-align: center; font-size : 35px; font-weight : bold; color : #1d2782"> <xsl:value-of select="//akn:FRBRtitle"/></div>
                        <div style="text-align: center;"><xsl:value-of select="//akn:FRBRdate/@date"/></div>
                    </div>
                </div>
                <div class="judgement-body">
                    <xsl:apply-templates select="//akn:judgementBody/akn:p"/>
                </div>
                <div class="conclusions">
                    <xsl:apply-templates select="//akn:conclusions/akn:p"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Template to match judgement body paragraphs and handle hrefs -->
    <xsl:template match="akn:p">
        <p>
            <xsl:apply-templates select="@*"/> <!-- Copy attributes -->
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- Template to transform akn:ref elements into HTML anchor tags -->
    <xsl:template match="akn:ref">
        <a href="{@href}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>

    <!-- Template to copy all attributes -->
    <xsl:template match="@*">
        <xsl:attribute name="{name()}">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
</xsl:stylesheet>
`;

function transformXML(xml: string, xsl: string) {
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

export type JudgmentProps = {
  selectedDocument: string;
};

function Judgment({ selectedDocument }: JudgmentProps) {
  const [htmlContent, setHtmlContent] = useState<string | null>(null);

  const { data, isLoading } = useQuery({
    queryKey: ["akoma-document", selectedDocument],
    queryFn: async () => {
      if (selectedDocument != undefined)
        return getFile("cases-akoma", selectedDocument, "application/xml");
    },
    enabled: !!selectedDocument,
  });

  useEffect(() => {
    if (!data?.xmlContent) return;
    const htmlFragment = transformXML(data?.xmlContent, xslString);
    if (htmlFragment) {
      const htmlString = new XMLSerializer().serializeToString(htmlFragment);
      setHtmlContent(htmlString);
    }
  }, [data?.xmlContent]);

  return (
    <>
      {htmlContent ? htmlReactParser(htmlContent) : <p>Loading...</p>}

      {data && <JudgmentDetails caseDetails={data?.caseFeatures} />}
    </> 
  );
}

export default Judgment;
