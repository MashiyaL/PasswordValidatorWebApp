<%-- 
    Document   : password
    Created on : 03 Mar 2025, 10:18:45 PM
    Author     : Gift Mashiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Page</title>
    </head>
    <body>
        <h1>Password</h1>
        <%
        String compName = application.getInitParameter("comp_name");
        String name =(String)session.getAttribute("name");
        %>
        <p>
            Hi <b><%=name%></b>,it's <b><%=compName%></b> here.
            Please enter a password below to validate.
        </p>
        <form action="PasswordValidatorServlet.do" method="post">
            <table>
                <tr>
                    <td>Password:</td>
                    <td>
                        <input type="password" name="pswd" required=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="VALIDATE"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
