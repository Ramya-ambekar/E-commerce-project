<%-- 
    Document   : bill
    Created on : Mar 21, 2020, 2:29:59 PM
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
    <center><h1>Bill</h1></center>
        Name <input type="text">
        <a href="index.jsp">Logout</a> 
        <% 
            try{
         String user=session.getAttribute("user").toString();
      
         session.removeAttribute("user");
         
      }catch(Exception ex)
      {
          
      }
       %>
    </body>
</html>
