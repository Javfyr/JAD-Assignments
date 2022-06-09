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
	
	String connURL = "jdbc:mysql://localhost/jaddatabase?user=root&password=San313916pang&serverTimezone=UTC";
	
	Connection conn = DriverManager.getConnection(connURL);
	
	Statement stmt = conn.createStatement();
	
	
	String sqlStr = "SELECT * FROM user WHERE name = '"+ user +"' and password = '"+ pwd +"'";
	ResultSet rs = stmt.executeQuery(sqlStr);

		while(rs.next()){
			String role = rs.getString("role");
			
			if(role.equals("admin")){
				response.sendRedirect("../view/adminPage.jsp");
			}else if(role.equals("customer")){
				response.sendRedirect("../view/index.jsp");
			}else{
				response.sendRedirect("../view/login.jsp?errCode=invalidLogin");
			}
			
		}
	
    conn.close();
}catch(Exception e){
	out.println("Error :" + e);
}
%>

</form>
</body>
</html>