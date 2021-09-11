 <%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String connectionURL="jdbc:odbc:digitalDSN";
Connection con=null;
Statement st=null;
ResultSet rs=null;
String name=request.getParameter("name");
try
{  
    String a,b,c;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection(connectionURL,"","");
st=con.createStatement();
String sql ="select * from  prod ";

rs = st.executeQuery(sql);
while(rs.next()){
    
    
}
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Admin</title>
    <style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

//CONTACT NOTIFICATION//

body {
  font-family: Arial, Helvetica, sans-serif;
}

.notification {

  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}


.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
</style>
    </head>
    <body>
               <style>
            body  {
  background-image: url("adminbg3.jpg");
  background-color: #cccccc;
}
</style>
    <div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="addproduct.jsp"><i class="fa fa-plus-square"></i> Add products</a>
  <a href="deleteprod.jsp"><i class="fa fa-minus-square"></i> Delete products</a>
  <a href="viewall.jsp"><i class="fa fa-fw fa-user"></i> View all</a>
  <a href="contretrieve.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="contretrieve.jsp" class="notification"><i class="fa fa-fw fa-envelope"></i>Inbox</a>
  <span>Inbox</span>
  <span class="badge">3</span>

    </div>
<form>
    <form method="post" action="update.jsp">
    <center><input type="text" name="id">
        <input type="button" name="Find" value="Find"></center>

        
    </table>  
      
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Update Information Here </th>
                    </tr>
                </thead>
                <tbody>
                    
                   <tr>
                        <td> Product Id</td>
                        <td><input type="text" name="pid" value="<%=request.getParameter("id")%>" required="required" /></td>

                   </tr>
                    <tr>
                        <td> Name</td>
                        <td><input type="text" name="pname" value="<%=rs.getString("name")%>" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Selling type</td>
                        <td><select name="stype" required="required">
<option>Samsung Mobiles</option>
<option>MI mobiles</option>
<option>Apple mobiles</option>
<option>Lenovo Laptops</option>
<option>Dell Laptops</option>
                            </select></td>
                    </tr>
                     <tr>
                        <td>Description</td>
                        <td><textarea name="pdescrip" value="" rows="20" cols="70"required="required"></textarea></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="pprice" value=""required="required" /></td><br>
                    </tr>
                   
                    <tr>
                        <td>Image</td>
                        <td><input type="file" name="pimg" value="" required="required"/></td>
                    </tr>
                    
                        <td><input type="submit" value="Submit" required="required"/></td>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
                    
        </form>
                    <%

                    
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </body>

</html>

