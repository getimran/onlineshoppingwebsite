<%@ taglib prefix="sql" uri="WEB-INF/sql.tld" %>
<%@ taglib prefix="c" uri="WEB-INF/c.tld" %>
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
<%
		HttpSession session = request.getSession(false);
%>		
		
		<c:choose>
		<c:when test="${sessionScope != null}">
		<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="admin" />
				<sql:update dataSource="${ds}" sql="UPDATE cust set LOGINSTATUS='F' where USERID='${sessionScope.userId}' and PASS='${sessionScope.pass}'" />
				<br>
				<h2>Hope to see you soon again!</h2>
				<br>Please wait! Logging out...<br/>
				<img src = "css/images/loading.gif">
			<%	response.setHeader("Refresh","4;index.jsp");	
						
		session.invalidate();%>
		</c:when>
		<c:otherwise>
		<%response.setHeader("Refresh","6;index.html");%>
		</c:otherwise>
		</c:choose>
</div>
</body>
</html>