<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:fo="http://www.w3.org/1999/XSL/Transform" xmlns:font="http://www.w3.org/1999/xhtml">


    <xsl:template match="title">
        <p style = "color:mediumblue">
        <xsl:value-of select="."/>
        </p>
    </xsl:template>
    <xsl:template match="para">
        <xsl:value-of select="."/>
        <d>
        <p/>
    </d>
    </xsl:template>
    <xsl:template match="orderedlist">
        <ol>
            <xsl:apply-templates/>
        </ol>
    </xsl:template>

    <xsl:template match="listitem/para">
        <li><xsl:apply-templates/></li>
    </xsl:template>


    <xsl:template match="ulink">
        <xsl:copy>
            <xsl:apply-templates select="ulink"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ulink">
        <a href="{@url}"><xsl:apply-templates/></a>
    </xsl:template>


    <xsl:template match="link">
        <xsl:copy>
            <xsl:apply-templates select="link"/>
        </xsl:copy>
    </xsl:template>



    <xsl:template match="keycap">

    <b>
        <xsl:value-of select="."/>
    </b>


    </xsl:template>



    <xsl:template match="emphasis">

    <i>
        <xsl:value-of select="."/>
    </i>

    </xsl:template>


</xsl:stylesheet>

