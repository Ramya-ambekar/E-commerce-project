<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
<jsp:include page="contact.jsp" />
<%
String cname=request.getParameter("name");
String cemail=request.getParameter("email");
String cphone=request.getParameter("phone");
String cmsg=request.getParameter("msg");



try
       
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sq;
sq="insert into contact values('"+cname+"','"+cemail+"','"+cphone+"','"+cmsg+"')";

rs=st.executeQuery(sq);

out.println("Data is successfully inserted!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>
    

