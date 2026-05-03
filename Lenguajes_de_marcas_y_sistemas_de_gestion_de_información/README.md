
**Indice**

[1. Un XML “real” del proyecto	2](#__RefHeading___Toc128_2899655794)

[2. Un DTD que valide tu XML	3](#__RefHeading___Toc130_2899655794)

[3. Transformación XSLT → html	4](#__RefHeading___Toc132_2899655794)

[4. Hoja de estilo CSS	6](#__RefHeading___Toc134_2899655794)

[5. JSON equivalente	7](#__RefHeading___Toc136_2899655794)

[6. Validación demostrada	9](#__RefHeading___Toc138_2899655794)

[7. Integración con el proyecto	10](#__RefHeading___Toc140_2899655794)


# 1. Un XML “real” del proyecto


\<?xml version="1.0" encoding="UTF-8"?\>

\<?xml-stylesheet type="text/css" href="pedidos.css"?\>

\<!DOCTYPE sistema\_pedidos SYSTEM "pedidos.dtd"\>

\<sistema\_pedidos\>

     \<productos\>

        \<producto id\_prod="P001"\>

            \<nombre\>Marlboro Duro\</nombre\>

            \<precio\>4.00\</precio\>

        \</producto\>

        \<producto id\_prod="P002"\>

            \<nombre\>Winston Classic\</nombre\>

            \<precio\>3.95\</precio\>

        \</producto\>

        \<producto id\_prod="P003"\>

            \<nombre\>Chesterfield Duro\</nombre\>

            \<precio\>3.90\</precio\>

        \</producto\>

        \<producto id\_prod="P004"\>

            \<nombre\>Lucky\</nombre\>

            \<precio\>3.90\</precio\>

        \</producto\>

    \</productos\>


    \<pedidos\>

        \<pedido id\_ped="PED-101"\>

            \<cliente\>Angel Pérez\</cliente\>

            \<fecha\>2024-04-27\</fecha\>

                        \<detalle ref\_prod="P001" cantidad="2"/\>

                        \<detalle ref\_prod="P002" cantidad="1"/\>

                        \<detalle ref\_prod="P003" cantidad="3"/\>

                        \<detalle ref\_prod="P004" cantidad="1"/\>

        \</pedido\>

    \</pedidos\>

\</sistema\_pedidos\>




# 2. Un DTD que valide tu XML


\<!ELEMENT sistema\_pedidos (productos, pedidos)\>

\<!ELEMENT productos (producto+)\>

\<!ELEMENT producto (nombre, precio)\>

\<!ATTLIST producto 

    id\_prod ID \#REQUIRED\>

\<!ELEMENT nombre (\#PCDATA)\>

\<!ELEMENT precio (\#PCDATA)\>

\<!ELEMENT pedidos (pedido+)\>

\<!ELEMENT pedido (cliente, fecha, detalle+)\>

\<!ATTLIST pedido 

    id\_ped ID \#REQUIRED\>

\<!ELEMENT cliente (\#PCDATA)\>

\<!ELEMENT fecha (\#PCDATA)\>

\<!ELEMENT detalle EMPTY\>

\<!ATTLIST detalle 

    ref\_prod IDREF \#REQUIRED

    cantidad CDATA \#REQUIRED\>



# 3. Transformación XSLT → html


\<?xml version="1.0" encoding="UTF-8"?\>

\<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"\>

\<xsl:template match="/"\>

  \<html\>

    \<head\>

      \<link rel="stylesheet" type="text/css" href="estilo.css"/\>

      \<style\>

        table \{ width: 100%; border-collapse: collapse; margin-bottom: 20px; \}

        th, td \{ text-align: left; padding: 10px; border: 1px solid \#ddd; \}

        th \{ background-color: green; \}

      \</style\>

    \</head\>

    \<body\>

      \<sistema\_pedidos\>

        

        \<h1\>Catálogo de Productos\</h1\>

        \<productos\>

          \<table\>

            \<tr\>

              \<th\>Nombre\</th\>

              \<th\>Precio\</th\>

            \</tr\>

            \<xsl:for-each select="sistema\_pedidos/productos/producto"\>

              \<tr\>

                \<td\>\<nombre\>\<xsl:value-of select="nombre"/\>\</nombre\>\</td\>

                \<td\>\<precio\>\<xsl:value-of select="precio"/\>\</precio\>\</td\>

              \</tr\>

            \</xsl:for-each\>

          \</table\>

        \</productos\>


        \<h1\>Listado de Pedidos\</h1\>

        \<pedidos\>

          \<table\>

            \<tr\>

              \<th\>Cliente (ID)\</th\>

              \<th\>Fecha\</th\>

              \<th\>Detalles del Pedido\</th\>

            \</tr\>

            \<xsl:for-each select="sistema\_pedidos/pedidos/pedido"\>

              \<tr\>

                \<td\>

                  \<cliente\>

                    \<xsl:value-of select="cliente"/\> 

                    (\<xsl:value-of select="@id\_ped"/\>)

                  \</cliente\>

                \</td\>

                \<td\>\<fecha\>\<xsl:value-of select="fecha"/\>\</fecha\>\</td\>

                \<td\>

                  \<xsl:for-each select="detalle"\>

                    \<detalle ref\_prod="\{@ref\_prod\}" cantidad="\{@cantidad\}"\>\</detalle\>

                  \</xsl:for-each\>

                \</td\>

              \</tr\>

            \</xsl:for-each\>

          \</table\>

        \</pedidos\>


      \</sistema\_pedidos\>

    \</body\>

  \</html\>

\</xsl:template\>


\</xsl:stylesheet\>



# 4. Hoja de estilo CSS ![](data:image/png;base64,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)


sistema\_pedidos \{

    display: block;

    font-family: Arial, sans-serif;

    padding: 20px;

    background-color: \#f4f4f4;

\}


productos, pedidos \{

    display: block;

    margin-bottom: 30px;

    background-color: white;

    padding: 15px;

    border-radius: 8px;

    border: 1px solid \#ddd;

\}


nombre, cliente \{

    display: block;

    font-weight: bold;

    color: \#2c3e50;

    font-size: 1.1em;

\}


precio, fecha \{

    display: block;

    color: \#27ae60;

    margin-bottom: 10px;

\}

producto, pedido \{

    display: block;

    margin-bottom: 15px;

    padding: 10px;

    border-bottom: 1px dashed \#ccc;

\}

detalle \{

    display: list-item;

    margin-left: 30px;

    color: \#555;

\}

detalle:before \{

    content: "Producto REF: " attr(ref\_prod) " - Cantidad: " attr(cantidad);

    font-style: italic;

\}


# 5. JSON equivalente


\{

  "sistema\_pedidos": \{

    "productos": \[

      \{

        "id\_prod": "P001",

        "nombre": "Marlboro Duro",

        "precio": 4.00

      \},

      \{

        "id\_prod": "P002",

        "nombre": "Winston Classic",

        "precio": 3.95

      \},

      \{

        "id\_prod": "P003",

        "nombre": "Chesterfield Duro",

        "precio": 3.90

      \},

      \{

        "id\_prod": "P004",

        "nombre": "Lucky",

        "precio": 3.90

      \}

    \],

    "pedidos": \[

      \{

        "id\_ped": "PED-101",

        "cliente": "Angel Pérez",

        "fecha": "2024-04-27",

        "detalles": \[

          \{

            "ref\_prod": "P001",

            "cantidad": 2

          \},

          \{

            "ref\_prod": "P002",

            "cantidad": 1

          \},

          \{

            "ref\_prod": "P003",

            "cantidad": 3

          \},

          \{

            "ref\_prod": "P004",

            "cantidad": 1

          \}

        \]

      \}

    \]

  \}

\}



# 6. Validación demostrada ![](data:image/png;base64,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)


Incluye evidencia:


mediante xmlvalidation.com me indica que no hay errores




# 7. Integración con el proyecto


exportamos de la bbdd la tabla pedido




