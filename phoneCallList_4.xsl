<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	  <html>
	  <head><title>Assignment 1</title></head>
	  <body>	

	
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
				<xsl:if test="position()=1">								
					<p>
					<xsl:value-of select="ContentInfo/InDetail"/>
					</p>
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>

	  </body>
	  </html>
	</xsl:template>
	

</xsl:stylesheet>