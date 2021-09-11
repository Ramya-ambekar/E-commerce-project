<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
    <style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
  padding: 8px;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 50px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
 
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: grey;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 100%;
  left: 0;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content .header {
  background: red;
  padding: 5px;
  color: white;
}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
  background-color: #ccc;
  height: 250px;
}

.column a {
  float: none;
  color: black;
  padding: 16px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.column a:hover {
  background-color: #ddd;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 50%;
        
    height: auto;
  }
}


</style>
    <body>
    
  
     <i class='fas fa-user' style='font-size:24px'></i><% 
      try{
         String user=session.getAttribute("user").toString();
         out.print(user);
         
         
      }catch(Exception ex)
      {
          
      }
  
      %>  
<div class="navbar">
   
   <a class="active" href="index.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
     <a href="#"><i class="fa fa-fw fa-envelope"></i> About us</a> 
        <a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> Contact us</a>
        <a href="#"><i class="fa fa-fw fa-user"></i> Review</a>
        <a href="login.jsp"><i class="fa fa-fw fa-envelope"></i>Login</a>          
   <a href="cart11.jsp"><i class="fa fa-shopping-cart"></i>View Cart</a>
       
        <div class="dropdown">
    <button class="dropbtn">Categories <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header"></div>   
      <div class="row">
        <div class="column">
          <h3>MOBILES</h3>
          <a href="mobretrieve.jsp">Samsung</a>
          <a href="redretrieve.jsp">Redmi</a>
          <a href="appleretrieve.jsp">Apple</a>
        </div>
        <div class="column">
          <h3>LAPTOPS</h3>
          <a href="laptop.jsp">Lenovo</a>
          <a href="dell.jsp">Dell</a>
          <a href="hp.jsp">HP</a>
        </div>
        <div class="column">
          <h3>Headphones</h3>
          <a href="skullcandy.jsp">Skullcandy</a>
          <a href="boat.jsp">Boat</a>
          <a href="jbl.jsp">JBL</a>
        </div>
          <div class="column">
          <h3>Camera</h3>
          <a href="#">Nikon</a>
          <a href="#">Canon</a>
          <a href="#">Kodak</a>
        
        </div>
          
      </div>
        
    </div>
        </div>
  
</div>

                   
        <center> <h1>LENOVO LAPTOPS</h1></center>
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
String sql ="select * from  prod where stype=('Lenovo Laptops')";
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
     <td><a href="showlaptop.jsp?id=<%=id%>&name=<%=n%>&descrip=<%=d%>&price=<%=p%>&img=<%=im%>"><img src="images/<%=im%>" width="300" height="200"></td></a><br>
<td><b>ID: </b><%=id%></td><br>
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
