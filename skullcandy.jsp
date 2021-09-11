<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <style type="text/css">
  .rows {
  float: left;
  width: 30%;
  padding: 50px 35px;
}
.card {
    
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  height:400px;
  margin: auto;
  text-align: center;
  font-family: arial;

 }
        label {
    display: block;
    font: 1rem 'Fira Sans', sans-serif;
}

input,
label {
    margin: .4rem 0;
}

button {
  background-color: black;
  border: none;
  color: white;
  padding: 8px 10px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  margin: 3px 20px;
  cursor: pointer;
}

button:hover {
  opacity: 0.5;
}
</style>
    <body>
        <center> <h1>SKULLCANDY EARPHONES</h1></center>
<%
String connectionURL="jdbc:odbc:digitalDSN";
Connection con=null;
Statement st=null;
ResultSet rs=null;
try{  
    String a,b,c;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection(connectionURL,"","");
st=con.createStatement();
String sql ="select * from  prod where stype=('Skullcandy earphones')";
rs = st.executeQuery(sql);
int cnt=0;
 while(rs.next()){
     //a
     //b=.trim();
     //c=.trim();
     String im,id,n,t,d,p;
     im=rs.getString("img");
     id=rs.getString("id");
     n=rs.getString("name");
     t=rs.getString("stype");
     d=rs.getString("descrip");
     p=rs.getString("price");
     cnt++;
     if(cnt==3)
     {
         out.println("</tr><tr>");
         cnt=0;
     }
%>
       <form action="laptop.jsp">
           
      <div class="rows">
    <div class="card">
   
 <tr bgcolor="#DEB887">
     <td><a href="showearphones.jsp?id=<%=id%>&name=<%=n%>&descrip=<%=d%>&price=<%=p%>&img=<%=im%>"><img src="images/<%=im%>" width="300" height="290"></td></a><br>

<td><b>NAME: </b><%=n%></td><br>
<td><b>PRICE: </b><%=p%></td><br>


    </tr>   
       
      </div>
    </div>
  </div>
</div>

</div>
      </div>
</form>
      
<%
}

} catch(Exception e) {
e.printStackTrace();
}
%>
  </body>
</html>
