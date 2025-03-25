<%-- 
    Document   : menu
    Created on : 03 Mar 2025, 10:04:18 PM
    Author     : Gift Mashiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
        String compName = application.getInitParameter("comp_name");
        String name = (String)session.getAttribute("name");
       
        %>
        <P>
            hi<b><%=name%></b>,my name is <b><%=compName%></b>.
            Please select one of the following options:
        </P>
        <ul>
            <li><a href="passwords.html">Check password validity</a></li>
            <li><a href="summary.jsp">Show summary</a></li>
        </ul>
    </body>
</html>
