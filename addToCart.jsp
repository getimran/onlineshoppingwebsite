<%@ taglib prefix="sql" uri="WEB-INF/sql.tld" %>
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
<div align="center">
<br>
		<% HttpSession session=request.getSession(false);%>
		<jsp:useBean id="beanObject" class="findBeanClass.UserSelectionBean" scope="session" />
		<jsp:setProperty name="beanObject" property="*" />
		
			<br><h1>Selected Items has been added into your cart Successfully. Please wait...</h1>
			<br><h2>On the way to your cart....</h2><br>
			<img src = "css/images/loading.gif">
						<%response.setHeader("Refresh","6;cart.jsp");%>
						
</div>
</body>
</html>