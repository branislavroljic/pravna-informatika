import { Fragment, useEffect, useState } from "react";
import htmlReactParser from "html-react-parser";
import { useQuery } from "@tanstack/react-query";
import { getFile } from "@api/cbr/cbr";

const xslString = `<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:akn="http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17">
    <xsl:output method="html" doctype-public="XSLT-compat" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Legal Document</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                    }
                    .act-title {
                        text-align: center;
                        font-size: 2em;
                        margin-bottom: 20px;
                    }
                    .part-title {
                        text-align: center;
                        font-size: 1.5em;
                        margin-bottom: 15px;
                    }
                    .smaller-part-title {
                        text-align: center;
                        font-size: 1.2em;
                        margin-bottom: 10px;
                    }
                    .point {
                        display: block;
                        margin-left: 20px;
                        margin-bottom: 10px;
                    }
                </style>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="akn:act">
        <div class="act" id="{@eId}">
            <h1 class="act-title"><xsl:value-of select="@name"/></h1>
            <xsl:apply-templates select="akn:body"/>
        </div>
    </xsl:template>

    <xsl:template match="akn:body">
        <xsl:apply-templates select="akn:chapter"/>
    </xsl:template>

    <xsl:template match="akn:chapter">
        <div class="chapter" id="{@eId}">
            <h3 class="part-title">
                <xsl:value-of select="akn:num"/> - <xsl:value-of select="akn:heading"/>
            </h3>
            <xsl:apply-templates select="akn:article"/>
        </div>
    </xsl:template>

    <xsl:template match="akn:article">
        <div class="article" id="{@eId}">
            <h4 class="smaller-part-title">
                <xsl:value-of select="akn:num"/> - <xsl:value-of select="akn:heading"/>
            </h4>
            <xsl:apply-templates select="akn:paragraph/akn:point"/>
        </div>
    </xsl:template>

    <xsl:template match="akn:point">
        <div class="point" id="{@eId}">
            <strong><xsl:value-of select="akn:num"/></strong><xsl:value-of select="akn:content/akn:p"/>
        </div>
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

function LawsPage() {
  const [htmlContent, setHtmlContent] = useState<string | null>(null);

  const { data } = useQuery({
    queryKey: ["laws-akoma"],
    queryFn: async () => {
      return getFile("laws-akoma", "laws", "application/xml");
    },
  });

  useEffect(() => {
    if (!data) return;
    const htmlFragment = transformXML(data, xslString);
    if (htmlFragment) {
      const htmlString = new XMLSerializer().serializeToString(htmlFragment);
      setHtmlContent(htmlString);
    }
  }, [data]);

  useEffect(() => {
    if (!htmlContent) return;

    const handleHashChange = () => {
      if (window.location.href.includes("#")) {
        const hashIdx = window.location.href.lastIndexOf("#");
        const id = window.location.href.substring(hashIdx + 1);
        const targetElement = document.getElementById(id);

        if (targetElement) {
          targetElement.scrollIntoView({ behavior: "smooth" });
        }
      }
    };

    // Handle initial load
    requestAnimationFrame(handleHashChange);

    // Handle hash change events
    window.addEventListener("hashchange", handleHashChange);

    return () => {
      window.removeEventListener("hashchange", handleHashChange);
    };
  }, [htmlContent]);

  return (
    <Fragment>
      {htmlContent ? htmlReactParser(htmlContent) : <p>Loading...</p>}
    </Fragment>
  );
}

export default LawsPage;
