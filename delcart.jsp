

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <body>
<%
String pname=request.getParameter("name");


try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sql;
sql="delete from cart where name='"+pname+"'";
 out.println("<center><h2>Product is sucessfully deleted!!</h2></center>");
rs=st.executeQuery(sql);

response.sendRedirect("newjsp4.jsp");


rs.close();
st.close();
conn.close();
while(rs.next()){
    

%>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<center><a href="retrievecart.jsp"><button>View Cart</button></a> 
            <a href="index.jsp"><button><i class="fa fa-shopping-cart"></i>Continue Shopping</button></a></center>
</body>
</html>