<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="displayMember.jsp" method="post">
<%
try{
	Class.forName("com.mysql.jdbc.Driver");  
	String user = request.getParameter("loginid");
	session.setAttribute("userid", user);
	
	String pwd = request.getParameter("password");
	String email = request.getParameter("email");
	
	String connURL = "jdbc:mysql://localhost/jaddatabase?user=root&password=San313916pang&serverTimezone=UTC";
	
	Connection conn = DriverManager.getConnection(connURL);
	
	Statement stmt = conn.createStatement();
	
	int sqlInt = stmt.executeUpdate
		     ("INSERT INTO user (name, password, email,role)" + "VALUES ('"+user+"', '"+pwd+"', '"+email+"', 'customer')");
	
	response.sendRedirect("../view/login.jsp");
	
    conn.close();
}catch(Exception e){
	out.println("Error :" + e);
}
%>

</form>
</body>
</html>