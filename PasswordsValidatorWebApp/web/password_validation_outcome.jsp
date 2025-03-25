<%-- 
    Document   : password_validation_outcome
    Created on : 15 Mar 2025, 5:56:01 PM
    Author     : Gift Mashiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Validation Outcome Page</title>
    </head>
    <body>
        <h1>Password Validation Outcome</h1>
        <%
            Boolean isValid = (Boolean)request.getAttribute("isValid");
            String pswd = (String)request.getAttribute("pswd");
         %>
         <p>
             Is <b><%=pswd%></b> a valid password ? <b><%=isValid%></b>  
         </p>
         <ul>
             <li><a href="menu.jsp">Menu Page</a></li>
             <li><a href="summary.jsp">Summary Page</a></li>
         </ul>
    </body>
</html>
