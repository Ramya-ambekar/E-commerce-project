<%-- 
    Document   : home
    Created on : Apr 1, 2020, 1:03:35 PM
    Author     : shankar murthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <br/><br/><br/><br/><br/>
    <center>
        <h2>
            <%
            String a=session.getAttribute("username").toString();
            out.println("Hello  "+a);
            %>
        </h2>
        <br/>
        <br/>
        <br/>
        <br/><br/><br/>
        <br/>
        <a href="logo.jsp">logout</a>
        
    </center>
    </body>
</html>
