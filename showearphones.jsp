<%-- 
    Document   : showdetails
    Created on : Feb 21, 2020, 1:42:07 PM
    Author     : shankar murthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Details</title>
    </head>
    <body>
        <style>
            .qty{
  background-color: silver;
  border: none;
  color: black;
  text-align: center;
  padding: 8px 5px;
  text-align: center;
  text-decoration: none;
  font-size: 26px;
  display: inline-block;
  margin: 0px 490px;
  cursor: pointer;
}

qty:hover {
  opacity: 0.7;
}
 
button {
  background-color: silver;
  border: none;
  color: black;
  padding: 8px 5px;
  text-align: center;
  text-decoration: none;
  font-size: 22px;
  margin: 15px 490px;
  cursor: pointer;
}

button:hover {
  opacity: 0.7;
}
        </style>
        <h1><center>Product details</center></h1>
        <%
        String i,n,d,p,im,qty;
        i=request.getParameter("id");
        n=request.getParameter("name");
        d=request.getParameter("descrip");
        p=request.getParameter("price");
        im=request.getParameter("img");
        qty=request.getParameter("quant");
        %>
    <tr>
        <td><img src="images/<%=im%>" width="330" height="350" align="left"></td>
    <table align="center" cellpadding="10" border="1"</center>
    <tr>
<th><b>Product ID</b></th>
 <td><%=i%></td><br>
    </tr>
    <tr>
<th><b>Product Name</b></th>
 <td><%=n%></td><br><br>
    </tr>
    <tr>
<th><b>General Description</b></th>
<td><%=d%></td><br>
    </tr>
    <tr>
<th><b>Price</b></th>  
<td><%=p%></td><br>
    </tr>
    </tr>
    
    </table>
 
    
    <div class="button">
        <button><a href="insertcart.jsp?img=<%=im%>&name=<%=n%>&descrip=<%=d%>&price=<%=p%>&qty=<%=qty%>"><i class="fa fa-shopping-cart " style="font-size:36px"></i>Add to cart</a></button>
       
    </div>
    <form action="retrievecart.jsp">
    </form>
    </body>
</html>
