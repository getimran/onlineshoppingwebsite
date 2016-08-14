<%@ taglib prefix="sql" uri="WEB-INF/sql.tld" %>
<%@ taglib prefix="sql" uri="WEB-INF/c.tld" %>
<%@ page session="false" %>
<%@ page isELIgnored="false" %>

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
	  <%
	  HttpSession session=request.getSession(false);
	  if(session!=null){
		out.println("<a href='cart.jsp'>Your Cart</a>");
		out.println("<a href='logout.jsp'>Logout</a>");
		}else
		out.println("&nbsp;Please login to shop!");
		%>
		</span> </div>
    </div>
    <!-- End Search, etc -->
<div class="ctable" align="center">
<br>
		<h1>Welcome to your Cart!</h1><br/><br/>
		
		<jsp:useBean id="beanObject" class="findBeanClass.UserSelectionBean" scope="session" />
		
		<table width = "700" border = "0" cellspacing = "0" cellpadding = "0">
		<tr><td>
		<% String p1[]=beanObject.getPage1();
		if(p1!=null){%><strong>Addidas Products:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		for(int i=0;i<p1.length;i++){
				out.println(p1[i]);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		}}%></td></tr>
		<tr><td>
		<% String p2[]=beanObject.getPage2();
		if(p2!=null){%><strong>Reebok Products:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		for(int i=0;i<p2.length;i++){
				out.println(p2[i]);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		}}%></td></tr>
		<tr><td>
		<%
		String p3[]=beanObject.getPage3();
		if(p3!=null){%><strong>Nike Products:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		for(int i=0;i<p3.length;i++){
				out.println(p3[i]);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
		}}%></td></tr>
		</table>
			<br/>
			<input type="SUBMIT" value="Proceed To Pay"><br>&nbsp;&nbsp;&nbsp;<br><a href="welcome.jsp">>Back to the Shopping Page<</a>
						
</div>
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
