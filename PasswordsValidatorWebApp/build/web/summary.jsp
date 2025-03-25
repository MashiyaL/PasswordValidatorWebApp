<%-- 
    Document   : summary
    Created on : 15 Mar 2025, 6:18:38 PM
    Author     : Gift Mashiya
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary Page</title>
    </head>
    <body>
        <h1>Summary</h1>
        <%
            Integer numPasswordsChecked = (Integer) session.getAttribute("numPasswordsChecked");
            Integer numValidPasswords = (Integer) session.getAttribute("numValidPasswords");
            Integer numInvalidPassword = (Integer) session.getAttribute("numInvalidPassword");
            List<String> passwords = (List<String>) session.getAttribute("passwords");
            List<String> validPasswords = (List<String>) session.getAttribute("validPasswords");
            List<String> invalidPasswords = (List<String>) session.getAttribute("invalidPasswords");
        %>
        <p>
            Below is the summary.
        </p>
        <table>
            <tr>
                <td>Total number of passwords checked: </td>
                <td><%=numPasswordsChecked%></td>
            </tr>
            <tr>
                <td>Total number of valid passwords: </td>
                <td><%=numValidPasswords%></td>
            </tr>
            <tr>
                <td>Total number of invalid passwords: </td>
                <td><%=numInvalidPassword%></td>
            </tr>
            <tr>
                <td>Passwords: </td>
                <%
                    String passwordList="";
                    for(int i =0 ; i<passwords.size();i++){
                        if(i==0){
                            passwordList = passwordList + passwords.get(i);
                        }else{
                           passwordList = passwordList + "," + passwords.get(i);
                        }
                    }
                    %>
                <td><%=passwordList%></td>
            </tr>
            <tr>
                <td>Valid passwords: </td>
                <%
                String validPasswordsList = "";
                for(int i = 0 ; i < validPasswords.size();i++){
                    if(i==0){
                        validPasswordsList = validPasswordsList + validPasswords.get(i);
                    }else{
                         validPasswordsList = validPasswordsList + "," + passwords.get(i);
                    }
                }
                %>
                <td><%=validPasswordsList%></td>
            </tr>
             <tr>
                <td>Invalid passwords: </td>
                <%
                String invalidPasswordsList = "";
                for(int i = 0 ; i < validPasswords.size();i++){
                    if(i==0){
                        invalidPasswordsList = invalidPasswordsList + invalidPasswords.get(i);
                    }else{
                         invalidPasswordsList = invalidPasswordsList + "," + invalidPasswords.get(i);
                    }
                }
                %>
                <td><%=invalidPasswordsList%></td>
            </tr>
        </table>
            <ul>
                <li><a href="menu.jsp">Menu Page</a></li>
                <li><a href="EndSessionServlet">End session</a></li>
            </ul>
    </body>
</html>
