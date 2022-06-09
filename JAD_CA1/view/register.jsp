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
  <h1>Register</h1>
    <form action="../model/register_member.jsp" method="post">
	    <% 
		if (request.getParameter("errCode") != null) {
		        out.println("You have entered an invalid ID/Password<br>");
		}
		%>
      <input type="text" name="loginid" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
            <input type="email" name="password" placeholder="Email" required="required" />
                   
        <button type="submit" class="btn btn-primary btn-block btn-large">Register Now</button><br>
           
    </form>
</div>
</body>
</html>