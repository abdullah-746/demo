<? xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="https://www.w3.org/1999/XSL/transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <!--Template for the root element -->
    <xsl:template match="/books">
        <html>
            <body>
                <h2>boook list</h2>
                <table border="1">
                    <tr>
                        <th>title</th>
                        <th>author</th>
                        <th>year</th>
                    </tr>
                    <!-- Lopp through rach book element -->
                    <xsl:for-each select="book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
