<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" type="text/css" href="estilo.css"/>
      <style>
        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
        th, td { text-align: left; padding: 10px; border: 1px solid #ddd; }
        th { background-color: green; }
      </style>
    </head>
    <body>
      <sistema_pedidos>
        
        <h1>Catálogo de Productos</h1>
        <productos>
          <table>
            <tr>
              <th>Nombre</th>
              <th>Precio</th>
            </tr>
            <xsl:for-each select="sistema_pedidos/productos/producto">
              <tr>
                <td><nombre><xsl:value-of select="nombre"/></nombre></td>
                <td><precio><xsl:value-of select="precio"/></precio></td>
              </tr>
            </xsl:for-each>
          </table>
        </productos>

        <h1>Listado de Pedidos</h1>
        <pedidos>
          <table>
            <tr>
              <th>Cliente (ID)</th>
              <th>Fecha</th>
              <th>Detalles del Pedido</th>
            </tr>
            <xsl:for-each select="sistema_pedidos/pedidos/pedido">
              <tr>
                <td>
                  <cliente>
                    <xsl:value-of select="cliente"/> 
                    (<xsl:value-of select="@id_ped"/>)
                  </cliente>
                </td>
                <td><fecha><xsl:value-of select="fecha"/></fecha></td>
                <td>
                  <xsl:for-each select="detalle">
                    <detalle ref_prod="{@ref_prod}" cantidad="{@cantidad}"></detalle>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </pedidos>

      </sistema_pedidos>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
