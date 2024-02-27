<%-- 
    Document   : login
    Created on : Feb 24, 2024, 7:05:45 PM
    Author     : bmprasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
    </head>
    <body>
    <form id="login" action="second.jsp" method="get">
        <table >
            <tr>
                <td>
                    <label for="name">Enter Name</label>
                </td>
                <td>
                    <input type="text" name="name" id="name">
                </td>
            </tr>
            <TR>
                <TD>
                    <label for="password"> Create password</label>
                </TD>
                <td>
                    <input type="text" name="password" id="password">
                </td>
            </TR>
            <TR>
                <TD>
                    <input type="submit" value="submit">
                </TD>
            </TR>
        </table>
    </form>
    </body>
</html>
