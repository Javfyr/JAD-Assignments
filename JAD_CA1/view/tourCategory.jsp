<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="styles/tourListing.css">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="category.Category" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
  <div class="navbar">
    <div class="logo">
      <a href="index.html"><img src="https://i.ibb.co/kDVwgwp/logo.png" alt="RedStore" width="125px" /></a>
    </div>
    <nav>
      <ul id="MenuItems">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="tourCategory.jsp">Tour</a></li>
        <li><a href="bookingPage.jsp">Bookings</a></li>
        <li><a href="profilePage.jsp">Profile</a></li>
      </ul>
    </nav>
    <a href="cart.html"><img src="https://i.ibb.co/PNjjx3y/cart.png" alt="" width="30px" height="30px" /></a>
    <img src="https://i.ibb.co/6XbqwjD/menu.png" alt="" class="menu-icon" onclick="menutoggle()" />
  </div>
</div>

<div class="small-container">
  <div class="row row-2">
    <h2>Tour Categories</h2>
    <select>
      <option value="">Default Shorting</option>
      <option value="">Short by price</option>
      <option value="">Short by popularity</option>
      <option value="">Short by rating</option>
      <option value="">Short by sale</option>
    </select>
  </div>
  <div class="row">
  <% ArrayList<Category> category = new ArrayList<Category>(); %>
  <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
	
		String connURL = "jdbc:mysql://localhost:3306/jaddatabase?user=root&password=&serverTimezone=UTC";
		
		Connection conn = DriverManager.getConnection(connURL);
		
		Statement stmt = conn.createStatement();
		
		String sqlStr = "SELECT * FROM category";
		ResultSet rs = stmt.executeQuery(sqlStr);
	
		
	    while (rs.next()) {
	    	
	    	int id = rs.getInt("id");
	        String name = rs.getString("name");
	        String imgCategory = rs.getString("imgCategory");
	        category.add(new Category(id, name, imgCategory));
	        
 			}
	    
	    conn.close();
	}catch(Exception e){
		out.println("Error :" + e);
	}%>

	<%for(Category c : category){%>
	        <% int catID = c.getId(); 
	        String url = "../view/tourListing.jsp?catID=" + catID;%>
	        <div class="row">
		    <div class="col-2">
		      <img src=<%= c.getImgCategory() %> href=url alt="" />
		      <h4><%= c.getName() %></h4>
		      <div class="rating">
		        <i class="fas fa-star"></i>
		        <i class="fas fa-star"></i>
		        <i class="fas fa-star"></i>
		        <i class="fas fa-star"></i>
		        <i class="far fa-star"></i>
		      </div>
		      <p></p>
		      <p></p>
		    </div>
		    </div>
     <%}%>
	

  <div class="page-btn">
    <span>1</span>
    <span>2</span>
    <span>3</span>
    <span>4</span>
    <span>&#8594;</span>
  </div>
</div>

<!-- Footer -->
<div class="footer">
  <div class="container">
    <div class="row">
      <div class="footer-col-1">
        <h3>Download Our App</h3>
        <p>Download App for Android and iso mobile phone.</p>
        <div class="app-logo">
          <img src="https://i.ibb.co/KbPTYYQ/play-store.png" alt="" />
          <img src="https://i.ibb.co/hVM4X2p/app-store.png" alt="" />
        </div>
      </div>

      <div class="footer-col-2">
        <img src="https://i.ibb.co/j3FNGj7/logo-white.png" alt="" />
        <p>
          Our Purpose Is To Sustainably Make the Pleasure and Benefits of
          Sports Accessible to the Many.
        </p>
      </div>

      <div class="footer-col-3">
        <h3>Useful Links</h3>
        <ul>
          <li>Coupons</li>
          <li>Blog Post</li>
          <li>Return Policy</li>
          <li>Join Affiliate</li>
        </ul>
      </div>

      <div class="footer-col-4">
        <h3>Follow us</h3>
        <ul>
          <li>Facebook</li>
          <li>Twitter</li>
          <li>Instagram</li>
          <li>YouTube</li>
        </ul>
      </div>
    </div>
    <hr />
    <p class="copyright">Copyright &copy; 2021 - Red Store</p>
  </div>
</div>

<!-- js for toggle menu -->
<script>
  var MenuItems = document.getElementById('MenuItems');
  MenuItems.style.maxHeight = '0px';

  function menutoggle() {
    if (MenuItems.style.maxHeight == '0px') {
      MenuItems.style.maxHeight = '200px';
    } else {
      MenuItems.style.maxHeight = '0px';
    }
  }
</script>
</body>
</html>
