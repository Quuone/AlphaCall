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
					Importance: <xsl:value-of select="ImportanceInfo/Rating"/>
					<xsl:if test="ImportanceInfo/Rating=5">
						(VIP: Very Important PhoneCall)
					</xsl:if>
					</p>
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>		

	  </body>
	  </html>
	</xsl:template>
	

</xsl:stylesheet>