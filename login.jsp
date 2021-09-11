<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <body>
        
        <style>
 body {font-family: Arial, Helvetica, sans-serif;}
form {border: 2px solid #f1f1f1;}

input[type=text], input[type=password] 
{
  width: 40%;
  padding: 12px 20px;
  margin: 8px 380px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.signbutton {
  background-color: black;
  border: none;
  color: white;
  padding: 8px 45px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 15px 560px;
  cursor: pointer;
}

.signbutton:hover {
  opacity: 0.8;
}

button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 39px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  margin: 15px 560px;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

.cancelbutton {
  background-color: red;
  border: none;
  color: white;
  padding: 15px 35px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 0px 9px;
  cursor: pointer;
}

.cancelbutton:hover {
  opacity: 0.8;
}



.container {
  padding: 8px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  
}


        </style>
        <h1><center>LOGIN</center></h1>
        <script>
            function validate(){
            var uname=document.loginform.uname.value;
              if (uname==""){
                  alert("Please enter username");
                  document.loginform.uname.focus();
                  return false;
              }
              if ((uname.length<5)||(uname.length>15))
                      {
                  alert("Username of invalid length");
                  document.loginform.uname.focus();
                  return false;
              }
              var pass=document.loginform.psw.value;
              var illegalChar=/[\W_]/;
              if (pass==""){
                  alert("Please enter Password");
                  document.loginform.psw.focus();
                  return false;
              }
              else if((pass.length<3)||(pass.length>15))
                      {
                  alert("Password should be between 3 and 15 characters");
                  document.loginform.psw.focus();
                  return false;
        }
        else if(illegalChar.test(pass)){
            alert("Contains illegal passsword");
            document.loginform.psw.focus();
            return false;
        }
            }
        </script>
    </head>
       <form name="loginform"action="connection.jsp" method="post">
          
    <center> <img src="images/avatar.png" width="180" height="180" alt="login logo"/></center>
     <div class="container">
          
      <center><i class="fa fa-user icon"></i><label for="uname"><b>Username</b></label></center>
    <input type="text" placeholder="Enter Username" name="uname">
     
    <center><i class="fa fa-key icon"></i><label for="psw"><b>Password</b></label></center>
    <input type="password" placeholder="Enter Password" name="psw">
        
  <button type="login" onclick="return validate()"name="action">Login</button>
      
 
  
  
  <b><center>No account??Create one! </center></b><a href="signup.jsp" class="signbutton" name="action">Sign up</a>
    
     
  </div>
           <center><a href="index.jsp" class="cancelbutton">Cancel</a></center> 
       
</form>  
     
</html>
