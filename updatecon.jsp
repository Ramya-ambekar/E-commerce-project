<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.sql.*" %>
<%! String driverName = "sun.jdbc.odbc.JdbcOdbcDriver";%>
<%!String url = "jdbc:odbc:digitalDsn";%>
<%!String user = "";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String i1=request.getParameter("name");
String i2=request.getParameter("stype");
String i3=request.getParameter("descrip");
String i4=request.getParameter("price");

if(id != null)
{
Connection con = null;
Statement st= null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
st =con.createStatement();
String sql="Update prod set pname='"+i1+"',ptype='"+i2+"',pdescrip='"+i3+"',pprice='"+i4+"' where prodid='"+id+"'";
st.execute(sql);
out.println("Updated");

}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>