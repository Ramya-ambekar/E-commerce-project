

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
       <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Register</title>
        <meta charset="utf-8">
		<title>Registration Form</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		
               <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
    </head>
    <body>
        <style>
            body{
                background-image: url('reg.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: auto;
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
  padding: 6px;
}

.navbar a {
  float: left;
  font-size: 14px;
  color: white;
  text-align: center;
  padding: 14px 40px;
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
 <i class='fas fa-user' style='font-size:24px'></i>
   <% 
      try{
         String user=session.getAttribute("user").toString();
         out.print(user);
         
         
      }catch(Exception ex)
      {
          
      }
  
  %>   
<div class="bg-img">
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
      <div class="header">
     
      </div>   
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
    
           
   <script>
            function logout()
            {
                alert("Are you sure you want to logout");
               
            }
            
        </script>  
        <a href="index.jsp"onclick="logout()"><i class="fa fa-sign-out" font size="26px"></i>Logout</a>
</div>
    
</div>
        
      <div class="wrapper" style="background-image:url('images/reg.jpg');">
			
          <div class="inner">
				<form action="insert.jsp" method="post">
                                    
					<h3>Registration Form</h3>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="fname">First Name</label>
							<input type="text" name="firstname" class="form-control" required="required">
						</div>
						<div class="form-wrapper">
							<label for="lname">Last Name</label>
							<input type="text" name="lastname" class="form-control" required="required">
						</div>
					</div>
					<div class="form-wrapper">
						<label for="uname">Username</label>
						<input type="text" name="user" class="form-control" required="required">
					</div>
                                        <div class="form-wrapper">
						<label for="pwd">Password</label>
						<input type="password" name="password" class="form-control" required="required">
					</div>
                                         <div class="form-wrapper">
						<label for="email">Email</label>
						<input type="text" name="email" class="form-control" required="required">
					</div>
                                           <div class="form-wrapper">
						<label for="addr">Address</label>
						<input type="text" name="address" class="form-control" required="required">
					</div>
					<div class="form-wrapper">
						<label for="contact">Contact</label>
						<input type="text" name="contact" class="form-control" required="required">
					</div>
                                        <div>
        <button onclick="register()" type="submit" name="button" value="button">Register now
   
        </button>

    </div>  
                                        
 <form action="index.jsp" method="get"></form>                                       

 <% 
      try{
         String data=session.getAttribute("msg").toString();
         out.print(data);
         session.removeAttribute("msg");
         
      }catch(Exception ex)
      {
          
      }
  
  %>                                                     
</div>
          
</div>
<br>
  
</form>
    </body>
</html>
