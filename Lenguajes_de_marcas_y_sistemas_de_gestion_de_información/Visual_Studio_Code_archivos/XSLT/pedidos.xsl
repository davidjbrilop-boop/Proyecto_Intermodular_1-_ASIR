<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h1>Listado de Clientes</h1>
      <table border="1">
        <tr>
          <th>Nombre</th>
          <th>ID Pedido</th>
        </tr>
        <xsl:for-each select="sistema_pedidos/pedidos/pedido">
          <tr>
            <td><xsl:value-of select="cliente"/></td>
            <td><xsl:value-of select="@id_ped"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
