<%@ page import="User.*"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%HttpSession sess = request.getSession(false); 
		user u=(user)sess.getAttribute("use");
		%><%sess = request.getSession(); 
			sess.setAttribute("username",u.getUsername());
			 %>
<title>Uchiha BookStore</title>

<style type="text/css">

div.background {
  background-image: url(images/h2.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

div.first {
    background: rgba(0, 0, 0, 0.3);
    padding: 15px;
}



.button {
  display: inline-block;
  background-color: #008CBA;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 2px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 15px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}



.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}

.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}

.bottomright {
    bottom: 8px;
    right: 86px;
    font-size: 18px;
}
</style>
</head>
<body>


<div class="background">
<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">signup</a></p>
    </form>
    
    <form class="login-form" method="post" action="signup">
      <!--  <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/> -->
       Username:<input type="text" name="username" value=<%=u.getUsername() %> placeholder="username"/><br/>
       Password:<input type="text" name="password" value=<%=u.getPassword()%> placeholder="password"/><br/>
       First name:<input type="text" name="firstname" value=<%=u.getFirstName()%> placeholder="Firstname"/><br/>
       Last name:<input type="text" name="lastname" value=<%=u.getLastName()%> placeholder="Lastname"/><br/>
       City:<input type="text" name="city" value=<%=u.getCity()%> placeholder="City"/><br/>
       State:<input type="text" name="state" value=<%=u.getState()%> placeholder="State"/><br/>
       Email Id:<input type="text" name="emailid" value=<%=u.getEmailID()%> placeholder="email Id"/><br/>
       Phone Number:<input type="text" name="Phone" value=<%=u.getPhoneNo()%> placeholder="Phone Number"/><br/>
      
      
    </form>
  </div>



</div>
 
<div class="first">


<center><font face="Abyssinica SIL" color="white">Uchiha BookStore</font></center> 

</div>

</div>
</body>
</html>
