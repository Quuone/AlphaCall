<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	  <html>
	  <head><title>Assignment 1</title></head>
	  <body>

		<h3>1. PhoneCall List</h3>
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<p>
			<xsl:value-of select="TimeInfo/Date"/>
			 / <xsl:value-of select="TimeInfo/Time_Start"/>
			 / <xsl:value-of select="PersonInfo/Name"/>
			 / <xsl:value-of select="PersonInfo/Relation"/>
			</p>
		</xsl:for-each>
		
		<h3>2. Person Info (3/21 PhoneCall with Aviv)</h3>
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
				<xsl:if test="position()=1">
					<p>
					<xsl:value-of select="PersonInfo/Name"/>
					 (<xsl:value-of select="PersonInfo/Age"/>,
					  <xsl:value-of select="PersonInfo/Relation"/> )
					 / <xsl:value-of select="PersonInfo/PhoneNumber"/>
					 / <xsl:value-of select="TimeInfo/Date"/>
					 / <xsl:value-of select="TimeInfo/Time_Start"/>
					 ~ <xsl:value-of select="TimeInfo/Time_End"/>				
					</p>
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>
		
		<h3>3. Importance (3/21 PhoneCall with Aviv)</h3>
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

		<h3>4. Detail Info (3/21 PhoneCall with Aviv)</h3>	
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
				<xsl:if test="position()=1">								
					<p>
					<xsl:value-of select="ContentInfo/InDetail"/>
					</p>
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>
				
		<h3>5. Schedule (3/21 PhoneCall with Aviv)</h3>
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
				<xsl:if test="position()=1">										
					<p>
					<xsl:value-of select="ContentInfo/Schedule"/>				
					</p>					
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>
							
		<h3>6. Mood (3/21 PhoneCall with Aviv)</h3>	
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
				<xsl:if test="position()=1">								
					<p>
					Mood: <xsl:value-of select="ContentInfo/Mood"/>
					</p>
				</xsl:if>				
			</xsl:if>
		</xsl:for-each>
					
		<h3>7. Mood interaction with Aviv</h3>
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:if test="PersonInfo/Name='Aviv'">
					<p> 
					 <xsl:value-of select="TimeInfo/Date"/>
					 / <xsl:value-of select="TimeInfo/Time_Start"/>				
					 / <xsl:value-of select="ContentInfo/Mood"/>
					</p>					
			</xsl:if>
		</xsl:for-each>
		
		<h3>8. Mood interaction with Aviv/Maggie (right: most recent)</h3>
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
		
		<h3>9. Important Phone Call</h3>
		<xsl:for-each select="PhoneCallList/PhoneCall">
			<xsl:sort select="ImportanceInfo/Rating" data-type="number" order="descending"/>
			<p>
			<xsl:value-of select="ImportanceInfo/Rating"/> *
			 / <xsl:value-of select="TimeInfo/Date"/>
			 / <xsl:value-of select="PersonInfo/Name"/>
			</p>
		</xsl:for-each>
		
		<h3>10. Schedule List</h3>
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