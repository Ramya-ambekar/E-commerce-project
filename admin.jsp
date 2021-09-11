 <%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">     
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
  background-color: #555;
  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}

.notification:hover {
  background: red;
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
       
        <center><h1>WELCOME ADMIN</h1></center>
         <%
            String a=session.getAttribute("username").toString();
            out.println("<center><h1>Hello  "+a+" !!");
            %>
    
  
       
    <div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
  <a href="addproduct.jsp"><i class="fa fa-plus-square"></i> Add products</a>
  <a href="update.jsp"><i class="fa fa-plus-square"></i>Update Products</a>
  <a href="deleteprod.jsp"><i class="fa fa-minus-square"></i> Delete products</a>
  <a href="viewall.jsp"><i class="fa fa-eye" style="font-size:24px"></i> View all Products</a>
  <a href="contretrieve.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="index.jsp"onclick="logout()"><i class="fa fa-sign-out" style="font-size:24px"></i> Logout</a>
   <script>
            function logout()
            {
                alert("Are you sure you want to logout");
            }
        </script>
  <a href="contretrieve.jsp" class="notification"><i class="fa fa-fw fa-envelope"></i>Inbox</a>
  <span></span>
  <span class="badge">3</span>
</a>
    </div>

    
    
        <form method="post" action="admin.jsp">
          
        </form>
    </body>
</html>






