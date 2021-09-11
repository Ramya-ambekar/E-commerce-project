<%-- 
Document   : cart11
Created on : Mar 16, 2020, 10:17:51 AM
Author     : shankar murthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>

<h1>Hello World!</h1>
<body style="background-image:url('bac.jpg');">
<!-- start header -->
<div id="header">
<div id="menu">
<?php
include("includes/menu.inc.php");
?>
</div>
</div>
<!-- end header -->
<!-- start page -->
<center>
<div id="page">
<!-- start content -->
<div id="content">
<div class="post" style="margin-left: -233px;">
<h1 class="title">Viewcart</h1>
<div class="entry">

<pre><?php
//	print_r($_SESSION);
?></pre>

<form action="process_cart.php" method="POST">
<table width="100%" border="0">
    <tr >
            <Td> <b>No
            <td> <b>Category
            <td> <b>Product
            <td> <b>Qty
            <td> <b>Rate
            <td> <b>Price
            <td> <b>Delete
    </tr>
    <tr><td colspan="7"><hr style="border:1px Solid #a1a1a1;"></tr>


<tr><td colspan="7"><hr style="border:1px Solid #a1a1a1;"></tr>

<tr>
<td colspan="6" align="right">
<h4>Total:</h4>

</td>
<td> <h4><?php echo $tot; ?> </h4></td>
</tr>
<tr><td colspan="7"><hr style="border:1px Solid #a1a1a1;"></tr>

<Br>
    </table>						

    <br><br>
<center>
<input type="submit" value=" Re-Calculate " > 
<a href="checkout.php">CONFIRM & PROCEED<a/>
</center>
</form>
</div>
</div>
</div>
<!-- end content --> 
</center>
<!-- end page -->
</body>
</html>

