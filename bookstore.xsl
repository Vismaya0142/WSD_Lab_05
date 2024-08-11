<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:book="www.abc.com/bookstore"
                exclude-result-prefixes="book">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Bookstore</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Bookstore</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Year</th>
                        <th>Publisher</th>
                        <th>Reviews</th>
                    </tr>
                    <!-- Loop through each book, applying conditions -->
                    <xsl:for-each select="book:bookstore/book:book">
                        <xsl:if test="book:price &gt; 400 and book:publication-year &gt; 1930">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="book:title"/></td>
                                <td><xsl:value-of select="book:author"/></td>
                                <td><xsl:value-of select="book:genre"/></td>
                                <td>Rs.<xsl:value-of select="book:price"/></td>
                                <td><xsl:value-of select="book:publication-year"/></td>
                                <td><xsl:value-of select="book:publisher"/></td>
                                <td><xsl:value-of select="book:reviews"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
