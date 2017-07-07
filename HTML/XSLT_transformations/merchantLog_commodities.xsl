<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xhtml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <meta name="description" content="Black Rock History Website"/>
                <meta name="author" content="Rebecca Parker and Robert Foley"/>
                <title>
                    <xsl:apply-templates select="//teiHeader//titleStmt//title"/>
                </title>
                <xsl:comment>Bootstrap CSS</xsl:comment>
                <link rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
                <xsl:comment>Custom CSS</xsl:comment>
                <link rel="stylesheet" type="text/css" href="css/style.css"/>
                
            </head>
            <body>
                <div id="nav">
                    <h1 class="nav"> Places in Thomas Bartram's Merchant and Shipping Logs </h1>
                    <a href="merchantLog_main.html">Home</a> | <a href="about.html">About</a>
                </div>
                <div class="col-xs-12">
                    <table id="commodities" class="placeTable table">
                        <tr>
                            <th>Commodity</th>
                            <th>Number of Times Referenced</th>
                            
                        </tr>
                        <xsl:for-each select="distinct-values(descendant::body/descendant::measure[@commodity]/@commodity)">
                            <xsl:variable name="com" select="."/>
                            <tr>
                                <td><xsl:value-of select="$com"/></td>
                                
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="measure[@commodity]">
        <tr>
            <td></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>