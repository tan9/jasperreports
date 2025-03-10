<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:jr="http://jasperreports.sourceforge.net/jasperreports">

<xsl:output method = "html" />
<xsl:param name="sf.net"/>
<xsl:param name="version"/>

<xsl:variable name="api.url">api/</xsl:variable>

<xsl:template match="/">
<html>
<head>
<title>JasperReports <xsl:value-of select="$version"/> - Configuration Reference</title>
<style type="text/css">
.title {
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-size: 28px;
	font-weight: normal;
}

.toc {
	font-family: Courier New, Courier, serif;
	font-size: 12px;
	font-weight: normal;
}

.name {
	font-family: Courier New, Courier, serif;
	font-size: 16px;
	font-weight: bold;
}

.label {
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	font-style: italic;
	padding-right:8px;
}

.description {
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: normal;
}

.value {
	font-family: Courier New, Courier, serif;
	font-size: 12px;
	font-weight: normal;
}

.element {
	font-family: Courier New, Courier, serif;
	font-size: 12px;
	font-weight: normal;
}

.attribute {
	font-family: Courier New, Courier, serif;
	font-size: 12px;
	font-weight: bold;
}

.copy {
	font-decoration: none;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 8pt;
	font-style: normal;
	color: #000000;
}

.note {
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-size: 12px;
	font-style: italic;
	color: #990000;
}

.text {
	font-size: 12px;
}

.bold {
	font-weight: bold;
}

.code {
  	font-family: Courier New, Courier, serif;
	font-size: 13px;
}
</style>
</head>
<body bgcolor="#FFFFFF">
<xsl:if test="$sf.net = 'true'">
<!-- Tracker -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-399158-5', 'sourceforge.net');
ga('send', 'pageview');
</script>
<!-- End Tracker Tag -->
</xsl:if>

<a name="top"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%">
  <tr>
    <td colspan="2" align="right">
<span class="element"><xsl:element name="a">
<xsl:attribute name="href">JasperReports-Ultimate-Guide-3.pdf</xsl:attribute>JasperReports Ultimate Guide</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href">sample.reference.html</xsl:attribute>Samples</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href">schema.reference.html</xsl:attribute>Schema</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href">config.reference.html</xsl:attribute>Configuration</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href">sample.reference/functions/FunctionsReport.html</xsl:attribute>Functions</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href">http://community.jaspersoft.com/wiki/jasperreports-library-faqs</xsl:attribute>FAQ</xsl:element> - <xsl:element name="a">
<xsl:attribute name="href"><xsl:value-of select="$api.url"/>index.html</xsl:attribute>API (Javadoc)</xsl:element></span>
<br/>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <hr size="1"/>
    </td>
  </tr>
  <tr valign="middle">
    <td nowrap="true">
<span class="title">JasperReports - Configuration Reference (version <xsl:value-of select="$version"/>)</span>
    </td>
    <td align="right">
<img src="resources/jasperreports.svg" border="0"/>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <hr size="1"/>
    </td>
  </tr>
</table>

<br/>

<span class="description">This document lists all the configuration properties available for the JasperReports library.</span>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="width: 20px;"><br/></td>
    <td><br/></td>
  </tr>
  <xsl:for-each select="configReference/category">
  <xsl:for-each select="content/property">
    <xsl:sort select="@ref"/>
  </xsl:for-each>
  <tr>
    <td colspan="2">
      <span class="label"><br/><xsl:value-of select="name"/></span>
    </td>
  </tr>
  <xsl:apply-templates select="content"/>
  </xsl:for-each>
</table>

<table width="100%" cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td style="width: 20px;"><br/></td>
    <td style="width: 20px;"><br/></td>
    <td style="width: 20px;"><br/></td>
    <td style="width: 20px;"><br/></td>
    <td><br/></td>
  </tr>
  <xsl:for-each select="configReference/configProperty">
  <xsl:sort select="@name"/>
  <tr>
    <td colspan="5" align="right"><br/><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute></xsl:element><a href="#top" class="toc">top</a></td>
  </tr>
  <tr>
    <td colspan="5"><hr size="1"/></td>
  </tr>
  <tr>
    <td colspan="5"><span class="name"><xsl:value-of select="@name"/></span></td>
  </tr>
  <!-- 
  <tr>
    <td></td>
    <td>
<xsl:apply-templates select="deprecation"/>
    </td>
  </tr>
  -->
  <tr>
    <td></td>
    <td colspan="4"><xsl:apply-templates select="description"/></td>
  </tr>
  <tr>
    <td colspan="5"><br/></td>
  </tr>
  <tr>
    <td></td>
    <td colspan="2"><span class="label">API:</span></td>
    <td colspan="2"><span class="description">
	  <xsl:choose>
	    <xsl:when test="api='N/A'">
	      <xsl:value-of select="api"/>
	    </xsl:when>
	    <xsl:otherwise>
	    <xsl:for-each select="api">
	      <span class="element">
	        <xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$api.url"/><xsl:value-of select="."/></xsl:attribute><xsl:value-of select="substring-after(.,'#')"/></xsl:element>
	      </span>
	      <br/>
	      <xsl:if test="position() > 1 and position() = last()">
	        <br/>
	      </xsl:if>
	    </xsl:for-each>
	    </xsl:otherwise>
	  </xsl:choose>
    </span></td>
  </tr>
  <tr>
    <td></td>
    <td colspan="2"><span class="label">Default:</span></td>
    <td colspan="2"><span class="description"><xsl:value-of select="default"/></span></td>
  </tr>
  <tr>
    <td></td>
    <td colspan="2"><span class="label">Scope:</span></td>
    <td colspan="2"><span class="description"><xsl:value-of select="scope"/></span></td>
  </tr>
  <tr>
    <td></td>
    <td colspan="2"><span class="label">Since:</span></td>
    <td colspan="2"><span class="description"><xsl:value-of select="since"/></span></td>
  </tr>
  <xsl:if test="contextUnaware">
  <tr>
    <td colspan="5"><br/></td>
  </tr>
  <tr>
    <td colspan="5"><xsl:apply-templates select="contextUnaware"/></td>
  </tr>
  </xsl:if>
  </xsl:for-each>
  <tr>
    <td colspan="5"><br/><br/></td>
  </tr>
  <tr>
    <td colspan="5"><hr size="1"/></td>
  </tr>
  <tr>
    <td colspan="5" align="center">
      <span class="copy">&#169; 2001-<script language="javascript">document.write((new Date()).getFullYear())</script> Cloud Software Group, Inc. <a href="http://www.jaspersoft.com" target="_blank" class="copy">www.jaspersoft.com</a></span>
    </td>
  </tr>
</table>

</body>
</html>
</xsl:template>


<xsl:template match="content">
  <xsl:apply-templates select="property"/>
</xsl:template>

<xsl:template match="description">
  <xsl:apply-templates/>
</xsl:template>


<xsl:template match="contextUnaware">
  <span class="note">NOTE: 
	  <xsl:choose>
	    <xsl:when test="contains(../@name,'{')">Properties with this prefix are </xsl:when>
	    <xsl:otherwise>This property is </xsl:otherwise>
	  </xsl:choose>not read from the configuration context. This 
	  <xsl:element name="a">
	  <xsl:attribute name="href">http://community.jaspersoft.com/wiki/setting-non-context-configuration-properties-dynamically</xsl:attribute>
	  <xsl:attribute name="target">_blank</xsl:attribute>FAQ</xsl:element> shows the additional steps to follow in order to set 
  	  <xsl:choose>
	    <xsl:when test="contains(../@name,'{')">them </xsl:when>
	    <xsl:otherwise>it </xsl:otherwise>
	  </xsl:choose>dynamically. 
   </span>
</xsl:template>


<xsl:template match="default">
  <xsl:apply-templates/>
</xsl:template>


<xsl:template match="property">
  <tr>
    <td></td>
  	<td><span class="element"><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="@ref"/></xsl:attribute><xsl:value-of select="@ref"/></xsl:element></span></td>
  </tr>
</xsl:template>

<xsl:template match="*" mode="copy">
  <span class="description"><xsl:copy-of select="."/></span>
</xsl:template>


<xsl:template match="text()">
  <span class="text"><xsl:value-of select="."/></span>
</xsl:template>


<xsl:template match="p">
  <p><xsl:apply-templates/></p>
</xsl:template>


<xsl:template match="br">
  <br/>
</xsl:template>


<xsl:template match="b">
  <span class="text bold"><xsl:apply-templates/></span>
</xsl:template>


<xsl:template match="a">
  <span class="element"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="./@href"/></xsl:attribute><xsl:attribute name="target">_blank</xsl:attribute><xsl:value-of select="."/></xsl:element></span>
</xsl:template>


<xsl:template match="api">
  <span class="element"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$api.url"/><xsl:value-of select="./@href"/></xsl:attribute><xsl:value-of select="."/></xsl:element></span>
</xsl:template>


<xsl:template match="code">
  <span class="code"><xsl:value-of select="."/></span>
</xsl:template>


<xsl:template match="ul">
  <xsl:element name="ul"><xsl:apply-templates/></xsl:element>
</xsl:template>


<xsl:template match="ol">
  <xsl:element name="ol"><xsl:apply-templates/></xsl:element>
</xsl:template>


<xsl:template match="li">
  <xsl:element name="li"><xsl:apply-templates/></xsl:element>
</xsl:template>


</xsl:stylesheet>
