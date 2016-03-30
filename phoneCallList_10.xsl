<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	  <html>
	  <head><title>Assignment 1</title></head>
	  <body>


		<xsl:for-each select="PhoneCallList/PhoneCall">
			<p>
			<xsl:if test="ContentInfo/Schedule != ''">
				<xsl:value-of select="ContentInfo/Schedule"/>
				 / <xsl:value-of select="TimeInfo/Date"/>
				 / <xsl:value-of select="PersonInfo/Name"/>
			</xsl:if>				 
			</p>
		</xsl:for-each>

	  </body>
	  </html>
	</xsl:template>
	

</xsl:stylesheet>