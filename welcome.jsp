<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Urban Gear</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><style type="text/css" media="screen">.tabbed { height:420px; }</style><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery.slide.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<% HttpSession session=request.getSession(false); %>
<!-- Top -->
<div id="top">
  <div class="shell">
    <!-- Header -->
    <div id="header">
      <h1 id="logo"><a href="#">Urgan Gear</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Support</a></li>
          <li><a href="#">My Account</a></li>
          <li><a href="#">The Store</a></li>
          <li class="last"><a href="#">Contact</a></li>
        </ul>
      </div>
    </div>
    <!-- End Header -->
    <!-- Slider -->
    <div id="slider">
      <div id="slider-holder">
        <ul>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
        </ul>
      </div>
      <div id="slider-nav"> <a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a> </div>
    </div>
    <!-- End Slider -->
  </div>
</div>
<!-- Top -->
<!-- Main -->
<div id="main">
  <div class="shell">
    <!-- Search, etc -->
    <div class="options">
      <div class="search">
        <form action="#" method="post">
          <span class="field">
          <input type="text" class="blink" value="SEARCH" title="SEARCH" />
          </span>
          <input type="text" class="search-submit" value="GO" />
        </form>
      </div>
      <span class="left"><a href="#">Advanced Search</a></span>
      <div class="right"> <span class="cart"> <a href="#" class="cart-ico">&nbsp;</a> <strong>$0.00</strong> </span> <span class="left more-links">

		<% if(session!=null){
		out.println("<a href='cart.jsp'>Your Cart</a>");
		out.println("<a href='logout.jsp'>Logout</a>");
		}else
		out.println("&nbsp;Please login to shop!");
		%>	
	  </span> </div>
    </div>
    <!-- End Search, etc -->
    <!-- Content -->
    <div id="content">
      <!-- Tabs -->
      <div class="tabs">
        <ul>
          <li><a href="#" class="active"><span>Addidas Shoes</span></a></li>
          <li><a href="#"><span>Reebok Shoes</span></a></li>
          <li><a href="#" class="red"><span>Nike Shoes</span></a></li>
        </ul>
      </div>
      <!-- Tabs -->
      <!-- Container -->
      <form action="addToCart.jsp" method="post">
	  <div id="container">
        <div class="tabbed">
          <!-- First Tab Content -->
          <div class="tab-content" style="display:block;">
            <div class="items">
              <div class="cl">&nbsp;</div>
              <form action="addToCart.jsp" method="post">
                  
				  <table width = "500" border = "0" cellspacing = "0" cellpadding = "0">
					<tr>
					<td colspan = "10" align  = "center"><h2> Addidas Shoes </h2>
					</td></tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br><br>
					<input type= "checkbox" name = "page1" value = "Addidas1" >&nbsp;&nbsp;Addidas 1</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas2" >&nbsp;&nbsp;Addidas 2</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas3" >&nbsp;&nbsp;Addidas 3</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas4" >&nbsp;&nbsp;Addidas 4</td>
					</tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br><br>
					<input type= "checkbox" name = "page1" value = "Addidas5" >&nbsp;&nbsp;Addidas 5</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas6" >&nbsp;&nbsp;Addidas 6</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas7" >&nbsp;&nbsp;Addidas 7</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br>
					<input type= "checkbox" name = "page1" value = "Addidas8" >&nbsp;&nbsp;Addidas 8</td>
					</tr>
					<tr><td colspan = "10" align  = "center"><input type = "submit" name = "buy" value = "Add To The Cart" /></td></tr>
				</table>
               </form>
			  <div align="center" class="cl">&nbsp;</div>
            </div>
          </div>
          <!-- End First Tab Content -->
          <!-- Second Tab Content -->
          <div class="tab-content">
            <div class="items">
              <div class="cl">&nbsp;</div>
              <form action="addToCart.jsp" method="post">
                  
				  <table width = "500" border = "0" cellspacing = "0" cellpadding = "0">
					<tr>
					<td colspan = "10" align  = "center"><h2> Reebok Shoes </h2>
					</td></tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br><br>
					<input type= "checkbox" name = "page2" value = "Reebok1" >&nbsp;&nbsp;Reebok 1</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok2" >&nbsp;&nbsp;Reebok 2</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok3" >&nbsp;&nbsp;Reebok 3</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok4" >&nbsp;&nbsp;Reebok 4</td>
					</tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br><br>
					<input type= "checkbox" name = "page2" value = "Reebok5" >&nbsp;&nbsp;Reebok 5</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok6" >&nbsp;&nbsp;Reebok 6</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok7" >&nbsp;&nbsp;Reebok 7</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br>
					<input type= "checkbox" name = "page2" value = "Reebok8" >&nbsp;&nbsp;Reebok 8</td>
					</tr>
					<tr><td colspan = "10" align  = "center"><input type = "submit" name = "buy" value = "Add To The Cart" /></td></tr>
				</table>
               </form>
              <div align="center" class="cl">&nbsp;</div>
            </div>
          </div>
          <!-- End Second Tab Content -->
          <!-- Third Tab Content -->
          
		  <div class="tab-content">
            <div class="items">
              <div class="cl">&nbsp;</div>
              
			  	<form action="addToCart.jsp" method="post">
                  
				  <table width = "500" border = "0" cellspacing = "0" cellpadding = "0">
					<tr>
					<td colspan = "10" align  = "center"><h2> Nike Shoes </h2>
					</td></tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br><br>
					<input type= "checkbox" name = "page3" value = "Nike1" >&nbsp;&nbsp;Nike 1</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike2" >&nbsp;&nbsp;Nike 2</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike3" >&nbsp;&nbsp;Nike 3</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike4" >&nbsp;&nbsp;Nike 4</td>
					</tr>
					<tr>
					<td align = "center" valign = "middle"><img src = "css/images/image4.jpg"><br><br>
					<input type= "checkbox" name = "page3" value = "Nike5" >&nbsp;&nbsp;Nike 5</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image3.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike6" >&nbsp;&nbsp;Nike 6</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image2.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike7" >&nbsp;&nbsp;Nike 7</td>
					
					<td align = "center" valign = "middle"><img src = "css/images/image1.jpg"><br>
					<input type= "checkbox" name = "page3" value = "Nike8" >&nbsp;&nbsp;Nike 8</td>
					</tr>
					<tr><td colspan = "10" align  = "center"><input type = "submit" name = "buy" value = "Add To The Cart" /></td></tr>
				</table>
               </form>
             <div align="center" class="cl">&nbsp;</div>
            </div>
          </div>
          <!-- End Third Tab Content -->
        </div>
        <!-- Brands -->
        <div class="brands">
          <h3>Brands</h3>
          <div class="logos"> <a href="#"><img src="css/images/logo1.gif" alt="" /></a> <a href="#"><img src="css/images/logo2.gif" alt="" /></a> <a href="#"><img src="css/images/logo3.gif" alt="" /></a> <a href="#"><img src="css/images/logo4.gif" alt="" /></a> <a href="#"><img src="css/images/logo5.gif" alt="" /></a> </div>
        </div>
        <!-- End Brands -->
         <!-- Footer -->
        <div id="footer">
          <div class="left"> <a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span> <a href="#">My Account</a> <span>|</span> <a href="#">The Store</a> <span>|</span> <a href="#">Contact</a> </div>
          <div class="right"> &copy; Guru <a href="#">Mr. Manish Bhatia</a> | Developed by <a href="#">Imran</a> </div>
        </div>
        <!-- End Footer -->
      </div>
      <!-- End Container -->
    </div>
    <!-- End Content -->
  </div>
</div>
<!-- End Main -->
</body>
</html>
