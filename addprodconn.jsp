<%@page import="java.sql.*,java.util.*"%>
<jsp:include page="addproduct.jsp" />
<%
String img=request.getParameter("pimg");
String idp=request.getParameter("pid");
String name=request.getParameter("pname");
String ttype=request.getParameter("stype");
String descrip=request.getParameter("pdescrip");
String price=request.getParameter("pprice");


try
       
{
    out.println("<center>Added Sucessfully" + idp);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sq;
sq="insert into prod values('"+img+"','"+idp+"','"+name+"','"+ttype+"','"+descrip+"','"+price+"')";
 
rs=st.executeQuery(sq);
out.println("Data is successfully inserted!");
response.sendRedirect("mobretrieve.jsp");
  
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>