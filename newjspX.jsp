<%@page import="java.sql.*,java.util.*"%>
<%
try
       
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sq;
sq="insert into a values('11','aa')";
sq="insert into b values('11','aa',78)";
rs=st.executeQuery(sq);
out.println("Data is successfully inserted!"); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>