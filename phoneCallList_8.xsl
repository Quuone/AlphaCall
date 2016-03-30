<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	  <html>
	  <head><title>Assignment 1</title></head>
	  <body>

		

		<table border="1">
			<tr>
				<td> Aviv </td>
				<xsl:for-each select="PhoneCallList/PhoneCall">
					<xsl:if test="PersonInfo/Name='Aviv'">
						<td><xsl:value-of select="ContentInfo/Mood"/></td>
					</xsl:if>
				</xsl:for-each>
			</tr>
			<tr>
				<td> Maggie </td>
				<xsl:for-each select="PhoneCallList/PhoneCall">
					<xsl:if test="PersonInfo/Name='Maggie'">
						<td><xsl:value-of select="ContentInfo/Mood"/></td>
					</xsl:if>
				</xsl:for-each>
			</tr>
		</table>
		

	  </body>
	  </html>
	</xsl:template>
	

</xsl:stylesheet>