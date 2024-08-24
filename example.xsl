<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Template to match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Details</title>
                <style>
                    table {
                        width: 80%;
                        margin: auto;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                </style>
            </head>
            <body>
                <h1 align="center">Book Details</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                       
                        <th>Publisher</th>
                        <th>Edition</th>
                        <th>Price</th>
                    </tr>
                    <!-- Apply this template to each 'book' element -->
                    <xsl:for-each select="bookdetails/book">
                        <tr>
                            <td style="color: green;"> <xsl:value-of select="title"/> </td>
                            <td style="color: orange;"> <xsl:value-of select="author"/> </td>
                                                       <td style="color: pink;"> <xsl:value-of select="publisher"/> </td>
                            <td style="color: red;"> <xsl:value-of select="edition"/> </td>
                            <td style="color: brown;"> <xsl:value-of select="price"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>