<?xml version="1.0" encoding="UTF-8"?>
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
