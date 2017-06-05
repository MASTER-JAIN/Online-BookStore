<%@ page import="User.*"  %>
<% 
			HttpSession sess = request.getSession(false); //use false to use the existing session
			user u=(user)sess.getAttribute("use");
			
			String username=u.getUsername();//this will return username anytime in the session
			sess = request.getSession(); 
			sess.setAttribute("use",u);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>About us</title>
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
	<!-- Header -->
	<div id="header" class="shell">
		<div id="logo"><h1><a href="#">Bestseller</a></h1><span><a href="#">Love is here</a></span></div>
		<!-- Navigation -->
		<div id="navigation">
			<ul>
				<li><a href="index.jsp" class="active">Home</a></li>
				
				<li><a href="#">Profile</a></li>
				<li><a href="aboutus2.jsp">About Us</a></li>
				
				<li><ahref="home.html">LOGOUT</ahref></li>
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
	<!-- End Header -->
	<!-- Slider 
	<div id="slider">
		<div class="shell">
			<ul>
				<li>
					<div class="image">
						<img src="css/images/image1.jpeg" style="width:1000px;height:400px;" />
					</div>
					<div class="details">
						<h2>UCHIHA BOOKSTORE</h2>
						
					</div>
				</li>
				<li>
					<div class="image">
						<img src="css/images/image5.jpeg" alt="" style="width:1000px;height:400px;"/>
					</div>
					<div class="details">
						<h2>UCHIHA BOOKSTORE</h2>
						
					</div>
				</li>
				<li>
					<div class="image">
						<img src="css/images/image3.jpeg" alt="" style="width:1000px;height:400px;"/>
					</div>
					<div class="details">
						<h2>UCHIHA BOOKSTORE</h2>
						
					</div>
				</li>
				<li>
					<div class="image">
						<img src="css/images/image4.jpg" alt="" style="width:1000px;height:400px;" />
					</div>
					<div class="details">
						<h2>UCHIHA BOOKSTORE</h2>
						
					</div>
				</li>
			</ul>
			<div class="nav">
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
			</div>
		</div>
	</div>
	<!-- End Slider -->
	<!-- Main -->
	<div id="main" class="shell">
		<!-- Sidebar 
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
			</ul>
		</div>
		<!-- End Sidebar -->
		<h3>Thankyou for your order.</h3>
		<!-- Content 
		<div id="content">
			<!-- Products 
			<div class="products">
				<h3>About us</h3>
				<ul>
					<li>
						<div class="product">
							
								<span class="holder">
									<img src="images/shubham.png" alt="Shubham"/>
									<span class="book-name">Shubham Jain</span>
									
									<span class="description">Roll no.-15ucs137<br /></span>
								</span>
							
							
						</div>
					</li>
					<li>
						<div class="product">
							
								<span class="holder">
									<img src="images/ayush.jpg" alt=""/>
									<span class="book-name">Ayush Soral</span>
									
									<span class="description">Roll no.-15ucs031 <br /></span>
								</span>
							
							
						</div>
					</li>
					
					<li>
						<div class="product" align="right">
							
								<span class="holder" >
									<img src="images/anirudh.jpg" alt=""/>
									<span class="book-name">Anirudh Mishra</span>
									
									<span class="description">Roll no.-15ucc002 <br /></span>
								</span>
							
						
						</div>
					</li>
					<li>
						<div class="product">
							
								<span class="holder">
									<img src="images/ashish.jpg" alt="" />
									<span class="book-name">Ashish Kumar</span>
									
									<span class="description">Roll no.-15ucc005 <br /></span>
								</span>
							
							
						</div>
					</li>
					
					</ul>
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