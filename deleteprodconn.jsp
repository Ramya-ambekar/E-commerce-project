
<%@page import="java.sql.*,java.util.*"%>
<jsp:include page="deleteprod.jsp" />
<%
String idp=request.getParameter("pid");
String ttype=request.getParameter("stype");

try
{
    out.println("Deleted Product "+idp+" Sucessfully");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sql;
sql="delete from prod where stype='"+ttype+"'and id='"+idp+"'";
 
rs=st.executeQuery(sql);

out.println("Data is successfully inserted!");
response.sendRedirect("mobretrieve.jsp");

rs.close();
st.close();
conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>