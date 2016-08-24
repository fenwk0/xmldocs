<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <html>
            <head>
                <head>
                    <link rel="stylesheet" type="text/css" href="catalog.css"/>
                </head>
            </head>
            <body>
                <h2>My CD Collection</h2>
                <table id="customers">
                    <tr>
                        <th style="text-align:left">Title</th>
                        <th style="text-align:left">Artist</th>
                        <th style="text-align:left">Year</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="artist"/>
                            </td>
                            <td>
                                <xsl:value-of select="year"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
