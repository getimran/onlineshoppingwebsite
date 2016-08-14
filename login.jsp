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
	<br>
<%
		String userId=request.getParameter("name");
		String pass=request.getParameter("pass");
%>
	<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="admin" />
	<sql:query dataSource="${ds}" var="result">
	SELECT * from cust where userId='<%=userId%>' and pass='<%=pass%>'
	</sql:query>
	   

		<c:forEach var="row" items="${result.rows}">
		<c:if test="${result.rowCount > 0}">
		
		<c:choose>
		<c:when test="${row.LOGINSTATUS eq 'F'}">
							<sql:update dataSource="${ds}" sql="UPDATE cust set LOGINSTATUS='T' where USERID='${param.name}' and PASS='${param.pass}'" />
						<br><h2>Login Successfull! Please wait...</h2><br>
						<img src = "css/images/loading.gif">
						<%
						HttpSession session=request.getSession();
						session.setAttribute("userId",userId);
						session.setAttribute("pass",pass);
						response.setHeader("Refresh","4;welcome.jsp");										
						%>
		</c:when>
		<c:otherwise>
							<br><h1><% 
							HttpSession session=request.getSession(false);
							String s=(String)session.getAttribute("userId");out.println(s);%> is already logged in!!</h1>
							<br><h2>Please wait. Taking you back to the shopping page.....</h2><br>
							<img src = "css/images/loading.gif">
						<%	response.setHeader("Refresh","10;welcome.jsp");
						%>
        </c:otherwise>
		</c:choose>
        </c:if>
		</c:forEach>
       <c:if test="${result.rowCount == 0}">
		<br><h1>Invalid Username or password!!</h1>
		<br><h2>Login page reloading....</h2><br>
		<img src = "css/images/loading.gif">
						<%	response.setHeader("Refresh","4;index.jsp");
						%>
        </c:if>
		
		
			
</div>
</body>
</html>
