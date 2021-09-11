<%--
    Document   : swathi
    Created on : Feb 14, 2020, 2:53:20 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>JSP Page</title>
        
    </head>
    
    <style type="text/css">
        .rows {
            float: left;
            width: 19%;
            padding: 50px 35px;
        }
        .card {
           
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            height:320px;
            margin: auto;
            text-align: center;
            ont-family: arial;
           
        }
        label {
            display: block;
            font: 1rem 'Fira Sans', sans-serif;
        }
       
        input,
        label {
            margin: .4rem 0;
        }
    </style>
   
   
   
   
    <body>
        <%
            
             String n,d,p,im,qty;
        
        n=request.getParameter("name");
        d=request.getParameter("descrip");
        p=request.getParameter("price");
        im=request.getParameter("img");
        qty=request.getParameter("qty");
           out.println("<h1><center>Your item "+n+" is added to your cart sucessfully</h1>");
           try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:digitalDSN", "", "");
Statement st=conn.createStatement();
ResultSet rs;
String sq;
sq="insert into cart values('"+im+"','"+n+"','"+d+"','"+p+"','"+qty+"')";

rs=st.executeQuery(sq);

out.println("Data is successfully inserted!");


           }
             catch (Exception e) {
                e.printStackTrace();
            }
        %> 
      
        <center><a href="retrievecart.jsp"><button>View Cart</button></a> 
            <a href="index.jsp"><button><i class="fa fa-shopping-cart"></i>Continue Shopping</button></a></center>
    </body>
</html>