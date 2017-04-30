<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>


<xsl:template match="/">
<html>

  <body>
  <h1>List of Students</h1>
    <table border="1">
      <tr bgcolor="white">
        <th style="text-align:left">Full name</th>
        <th style="text-align:left">Login</th>
        <th style="text-align:centre">BirthDate</th>
        <th style="text-align:centre">Email</th>
        <th style="text-align:centre">Fakulty</th>
        <th style="text-align:centre">Field</th>
        <th style="text-align:centre">Typy of study</th>
        <th style="text-align:centre">Degree</th>
        <th style="text-align:centre">Class</th>
        <th style="text-align:centre">Grades</th>
      </tr>
      <xsl:for-each select="recordsStudents/student">
      <tr>
        <td>
			<xsl:value-of select="PersonalInformation/Title[@position = 'before']"/>&#xa0;
			<xsl:value-of select="PersonalInformation/Name"/>&#xa0;
			<xsl:value-of select="PersonalInformation/Surname"/>&#xa0;
			<xsl:if test="PersonalInformation/Title[@position = 'after'] != ''">
,&#xa0;<xsl:value-of select="PersonalInformation/Title[@position = 'after']"/>
			</xsl:if>
		</td>
        <td><xsl:value-of select="StudentAccount/UserName"/></td>
        <td><xsl:value-of select="PersonalInformation/BirthDate"/></td>
        <td><xsl:value-of select="Contactinformation/Email"/></td>
        <td><xsl:value-of select="StudentInformation/Faculty"/></td>
        <td><xsl:value-of select="StudentInformation/Field"/></td>
        <td><xsl:value-of select="StudentInformation/TypeofStudy"/></td>
        <td><xsl:value-of select="StudentInformation/Degree"/></td>
        <td><xsl:value-of select="StudentInformation/Class"/></td>
        <td><xsl:value-of select="StudentInformation/Grades"/></td>
        
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
