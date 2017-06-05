package Signup;
import User.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.org.apache.bcel.internal.generic.IFGT;

import login.Validate;
import User.*;
import User.*;
import User.user;
@WebServlet("/signup")

public class signup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String first = request.getParameter("firstname");
        String last = request.getParameter("lastname");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String email = request.getParameter("emailid");
        String phone = request.getParameter("Phone");
        // phone= Integer.parseInt(request.getParameter("Phone"));
        if(Validate1.checkUser(username))
        {
        	out.println("Hello");
           RequestDispatcher rs = request.getRequestDispatcher("signup.jsp");
            rs.forward(request, response);
        }
        else
        {
        	try{
            	  //loading drivers for mysql
                 Class.forName("com.mysql.jdbc.Driver");

                 //creating connection with the database 
                 Connection con=DriverManager.getConnection
                                ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
                 //  Statement ps =con.prepareStatement
                 //                    ("select * from USER where USERNAME="+email+" and PASSWORD="+pass);
                 
                 
                 PreparedStatement ps = con.prepareStatement("insert into User values(?,?,?,?,?,?,?,?)");
                 //String query = "select * from User where Username=? and Password=?";  
                 //System.out.println(email + pass);
                 
                 
                ps.setString(1, username);
               ps.setString(2, password);
               ps.setString(3, first);
               ps.setString(4, last);
               ps.setString(5, city);
               ps.setString(6, state);
               //String email;
			ps.setString(7, email);
			ps.setString(8, phone);
               //ps.setString(5, );
               //  ResultSet rs =ps.execute();
                 
                 
                 //st = rs.next();
			  int i = ps.executeUpdate();
			  out.println("Hello1");
                // boolean st = rs.next();
                 //System.out.println(email + pass);
              }catch(Exception e)
              {
                  e.printStackTrace();
              }
        	 user u=user.SetDetails(username);
        	HttpSession sess = request.getSession(); 
			sess.setAttribute("use",u);
			System.out.println(u.getUsername());
          RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
          request.setAttribute("use", u);
          request.setAttribute("Name", username);
          rs.include(request, response);
        }
        
        
	}

}
