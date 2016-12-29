<?xml version="1.0" encoding="iso-8859-1"?><!-- DWXMLSource="Archive.xml" --><!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<style type="text/css">
<xsl:comment>
@import url("stylesheet.css");
</xsl:comment>
</style>
<body>
<div id="header" align="center"><img src="index_clip_image002.gif" alt="Sheffield Autisic Society" width="540" height="135" longdesc="Sheffield Autisic Society Logo" align="middle" /></div>
<div id="container">
 <div id = "center" class="column">
   <h2 align="center">&nbsp;</h2>
   <h2 align="center">Sheffield Autistic Society<br />
     News Letters </h2>
   <p align="center">&nbsp;</p>
   <p align="center">
     <xsl:for-each select="content/newsletter">
       <xsl:value-of select="month"/> &#160;&#160;&#160;&#160;<a href="{string-length(link)}">Download</a>
     </xsl:for-each>
	 </p>
   </div>
 <div id="left" class="column">
   <ul>
     <li class="style4"><a href="index.html">Home</a></li>
     <li class="style4"><a href="aboutus.html">About Us</a></li>
     <li class="style4">What is Autism</li>
     <li class="style4">News Letters &lt; </li>
     <li class="style4">Links  </li>
	 <hr />
	 <li class="style1 style3"><span class="style2 style9"> Admin</span> </li>
    </ul>
   <table width="101" border="0" align="center">
     <tr>
       <td><a href="http://www.nas.org.uk"><img src="nas_logo_big.gif" alt="National Autistic Society" width="92" height="69" border="0" longdesc="http://www.nas.org.uk" /></a></td>
     </tr>
     <tr>
       <td><div align="center" class="style2">We Support The National Autistic Society </div></td>
     </tr>
   </table>
   <p align="center">&nbsp;</p>
 </div>
</div>
<div align = "center" class="style3 style6" id="footer">Website Design By Tom Moore (c) 2007 </div>
</body>
</xsl:template>
</xsl:stylesheet>

