<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
        <table style="display: inline-block; border: 1px solid; float: left;">
          <thead>
            <tr>
              <th>Исходная цепочка</th>
            </tr>
          </thead>
          <tbody>
          <xsl:for-each select="objects/object">
          <xsl:if test="elem1 != ''"> 
            <tr>
              <th>
                <xsl:value-of select="elem1"></xsl:value-of>
              </th>
            </tr>
          </xsl:if>
          </xsl:for-each>
          </tbody>
        </table>
        <table style="display: inline-block; border: 1px solid; float: left;">
          <thead>
            <tr>
              <th>Все найденные цепочки</th>
            </tr>
          </thead>
          <tbody>
          <xsl:for-each select="objects/object">
              <xsl:if test="elem2 != ''"> 
<tr>
<th>
<xsl:value-of select="elem2"></xsl:value-of>
</th>
</tr>
</xsl:if>
          </xsl:for-each>
          </tbody>
        </table>
        <table style="display: inline-block; border: 1px solid; float: left;">
          <thead>
            <tr>
              <th>Самая длинная</th>
            </tr>
          </thead>
          <tbody>
          <xsl:for-each select="objects/object">
              <xsl:if test="elem3 != ''"> 
<tr>
<th>
<xsl:value-of select="elem3"></xsl:value-of>
</th>
</tr>
</xsl:if>
          </xsl:for-each>
          </tbody>
        </table>
  </xsl:template>
</xsl:stylesheet>
