<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="../view/index.jsp" method="post">
<%
String user = request.getParameter("loginid");
String pwd = request.getParameter("password");
/* String userRole="adminUser"; */

if(user.equals("Lincoln") && pwd.equals("abc123")){
	response.sendRedirect("../view/index.jsp");
}else{
	response.sendRedirect("../view/login.jsp?errCode=invalidLogin");
}
%>
</form>
</body>
</html>