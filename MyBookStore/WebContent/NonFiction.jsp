<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="User.*"  %>
<%@ page import="java.util.*" %>
<% 
			HttpSession sess = request.getSession(false); //use false to use the existing session
			user u=(user)sess.getAttribute("use");
			
			String username=u.getUsername();//this will return username anytime in the session
			sess = request.getSession(); 
			sess.setAttribute("use",u);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<link  href="style.css" rel="stylesheet" type="text/css"/>
	<title>CSS Free Templates with jQuery Slider</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
	<!--[if IE 6]>
		<script type="text/javascript" src="js/png-fix.js"></script>
	<![endif]-->
	<script type="text/javascript" src="js/functions.js"></script>
</head>
<body>

 
  //String name= request.getAttribute("Name");
  

 

	<!-- Header -->
	<div id="header" class="shell">
		<div id="logo"><h1><a href="#">BestSeller</a></h1><span><a href="#">Love is here</a></span></div>
		<!-- Navigation -->
		<div id="navigation">
			<ul>
				<li><a href="index.jsp" class="active">Home</a></li>
				
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="aboutus2.jsp">About Us</a></li>
				
				<li><a href="home.html">LOGOUT</a></li>
			</ul>
		</div>
		<!-- End Navigation -->
		<div class="cl">&nbsp;</div>
		<!-- Login-details -->
		<div id="login-details">
		
			
			<p>Welcome, <a href="profile.jsp" id="user"><%=u.getUsername()%></a> .</p><p><a href="myorders.jsp" class="cart" ><img src="css/images/cart-icon.png" alt="" /></a>My Orders </p>
		
		</div>
		<!-- End Login-details -->
	</div>
	
	<!-- Main -->
	<div id="main" class="shell">
		<!-- Sidebar -->
		<div id="sidebar">
			<ul class="categories">
				<li>
					<h4>Categories</h4>
					<ul>
						<li><a href="Fiction.jsp">Fiction</a></li>
						<li><a href="NonFiction.jsp">NonFiction</a></li>
					</ul>
				</li>
				<li>
					<h4>Authors</h4>
					<ul>
						<form action="Author">
						Author: <input type="text" name="author"><br>
						<input type="submit" value="Submit">
						
						</form>
					</ul>
				</li>
				<li>
					<h4>BookName</h4>
					<ul>
						<form action="BookName">
						BookName: <input type="text" name="BookName"><br>
						<input type="submit" value="Submit">
						
						</form>
					</ul>
				</li>
			</ul>
		</div>
		<!-- End Sidebar -->
		<!-- Content -->
		<div id="content">
			<!-- Products -->
			<div class="products">
				<h3></h3>
				<ul>
					
				        
				
				        <% 
				            Connection connection = DriverManager.getConnection(
				            		"jdbc:mysql://localhost/MyBookStore","root","voldamort");
				
				            Statement statement = connection.createStatement() ;
				            ResultSet resultset = 
				                statement.executeQuery("select BooksId,Author,BookName,NoCopies,Price from Books where Catogary='NonFiction'") ; 
				        %>
				
				        <TABLE BORDER="1" width 20>
				            <TR>
				                <TH>BookID</TH>
				                <TH>Author</TH>
				                <TH>BookName</TH>
				                <TH>NoCopies</TH>
				                <TH>Price</TH>
				            </TR>
				            <% while(resultset.next()){ %>
				            <TR>
				                <TD> <%= resultset.getString(1) %></td>
				                <TD> <%= resultset.getString(2) %></TD>
				                <TD> <%= resultset.getString(3) %></TD>
				                <TD> <%= resultset.getString(4) %></TD>
				                <TD> <%= resultset.getString(5) %></TD>
				                <TD><a href="Purchase.jsp?bookid=<%=resultset.getString(1)%>">BUY</a></TD>
				            </TR>
				            <% } %>
				        </TABLE>
				    
				</ul>
			<!-- End Products -->
			</div>
			<div class="cl">&nbsp;</div>
			<!-- Best-sellers -->
			<div id="best-sellers">
				<h3>Best Sellers</h3>
				<ul>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best01.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>35<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best02.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>45<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best03.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>15<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best04.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>27<span class="high">99</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best01.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>35<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best02.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>45<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best03.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>15<span class="high">00</span></span>
							</a>
						</div>
					</li>
					<li>
						<div class="product">
							<a href="#">
								<img src="css/images/image-best04.jpg" alt="" />
								<span class="book-name">Book Name </span>
								<span class="author">by John Smith</span>
								<span class="price"><span class="low">$</span>27<span class="high">99</span></span>
							</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- End Best-sellers -->
		</div>
		<!-- End Content -->
		<div class="cl">&nbsp;</div>
	</div>
	<!-- End Main -->
	<!-- Footer -->
	<div id="footer" class="shell">
		<div class="top">
			<div class="cnt">
				<div class="col about">
					<h4>About Uchiha BookStore</h4>
					<p>Standing there, staring at the long shelves crammed with books,Just sit at your place and enjoy with all variety of Books available only at Uchiha BookStore.  </p>
				</div>
				
				<div class="cl">&nbsp;</div>
				<div class="copy">
					
				</div>
			</div>
		</div>
	</div>
	<!-- End Footer -->
</body>
</html>
