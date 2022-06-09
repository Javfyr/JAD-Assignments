<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/login.css" />
</head>
<body>
<div class="login">
  <h1>Login</h1>
    <form action="../model/verifyUser.jsp" method="post">
	    <% 
		if (request.getParameter("errCode") != null) {
		        out.println("You have entered an invalid ID/Password<br>");
		}
		%>
      <input type="text" name="loginid" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Login</button><br>
        <h5><a href="register.jsp" style="color: white">Register</a></h5>
    </form>
</div>
</body>
</html>