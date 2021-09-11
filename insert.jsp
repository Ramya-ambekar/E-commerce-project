
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<html>
    

   
<%
    

String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String user=request.getParameter("user");
String password=request.getParameter("password");
String email=request.getParameter("email");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
session.setAttribute("msg", "<H1><center>Registered Sucessfully</center></H1>");
session.setAttribute("user","<B><h3>Welcome "+user+"</h3></B>");
response.sendRedirect("signup.jsp");
try      
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;

String sq="insert into register values('"+firstname+"','"+lastname+"','"+user+"','"+password+"','"+email+"','"+address+"','"+contact+"')";

rs=st.executeQuery(sq);




}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</html>