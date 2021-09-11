<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE>
<html>
<h1>DIGITAL WORLD</h1>

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
</div>
    
</div>
    
<body>
    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="2.jpeg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="mobile9.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="mobile1.jpg" style="width:100%">
</div>
        <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="hd3.png" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<script src="../js/js-form-validator.js"></script>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1000);
}
</script>
	