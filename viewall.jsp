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
        <title>All products</title>
        
    </head>
    <style type="text/css">
  .rows {
  float: left;
  width: auto;
  padding: 50px 35px;
}
.card {
    
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 400px;
  height:560px;
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
        <center> <h1>ALL PRODUCTS</h1></center>
        <div class="container">
<form class="form-inline" method="post" action="viewall.jsp">
<input type="text" name="name" class="form-control" placeholder="Search roll no..">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
</div>
<%
String connectionURL="jdbc:odbc:digitalDSN";
Connection con=null;
Statement st=null;
ResultSet rs=null;
String name=request.getParameter("name");
try{  
    String a,b,c;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection(connectionURL,"","");
st=con.createStatement();
String sql ="select * from  prod ";

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
     if(cnt==4)
     {
         out.println("</tr><tr>");
         cnt=0;
     }
%>       
        
      <div class="rows">
    <div class="card">
   
 <tr bgcolor="#DEB887">
<td><img src="images/<%=im%>" width="300" height="480"></td><br>    
<td><b>ID: </b><%=id%></td><br>
<td><b>NAME: </b><%=n%></td><br>
<td><b>PRICE: </b><%=p%></td><br>
 <div class="button">

    </tr>   
       
      </div>
    </div>
  </div>
</div>

</div>
      </div>
      
<%
}

} catch(Exception e) {
e.printStackTrace();
}
%>
  </body>
</html>
