<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <payments>
    <xsl:for-each select="DATA/ROW">
      <check number="{checkNumber}">
        <customer customerNumber="{customerNumber}">
          <customerName><xsl:value-of select="customerName"/></customerName>
          <adress>
            <addressLine1><xsl:value-of select="addressLine1"/></addressLine1>
            <city><xsl:value-of select="city"/></city>
            <country><xsl:value-of select="country"/></country>
          </adress>
          <salesRepEmployeeNumber><xsl:value-of select="salesRepEmployeeNumber"/></salesRepEmployeeNumber>
          <creditLimit><xsl:value-of select="creditLimit"/></creditLimit>
        </customer>
        <date><xsl:value-of select="paymentDate"/></date>
        <amount><xsl:value-of select="amount"/></amount>
      </check>
    </xsl:for-each>
  </payments>
</xsl:template>
</xsl:stylesheet>