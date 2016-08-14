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
<%
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		String repass=request.getParameter("repass");
		if(pass.equals(repass) && (!name.equals("")) && (!pass.equals("")) && (!repass.equals("")))
		{%>
			<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="admin" />
			<sql:update dataSource="${ds}" var="ins">
			INSERT into cust VALUES('<%=name%>','<%=pass%>','F')
			</sql:update>
		
			
			<br><h1>Registered Successfully. Login Now!!</h1>
			<br><h2>Login page reloading....</h2><br>
			<img src = "css/images/loading.gif">
						<%response.setHeader("Refresh","4;index.jsp");
					
		}
		else
		{%>
			<br><h1>Password and Re-entered password didn't match. Try again.</h1><br>
			<h2>Registration page reloading....</h2><br>
			<img src = "css/images/loading.gif">
		<%	response.setHeader("Refresh","4;registration.jsp");
		}%>
</div>
</body>
</html>