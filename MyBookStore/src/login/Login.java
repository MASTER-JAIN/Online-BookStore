package login;
import User.*;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import User.user;@
WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("username");
        String pass = request.getParameter("password");
        System.out.println(email + pass);
        user u=user.SetDetails(email);
        if(Validate.checkUser(email, pass))
        {
        	out.println("LoggedIn");
        	
        		
        		HttpSession sess = request.getSession(); 
    			sess.setAttribute("use",u);
            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            //use false to use the existing session
			//this will return username anytime in the session
			
            request.setAttribute("use", u);
            request.setAttribute("Name", email);
            rs.forward(request, response);
        	
        }
        else
        {
           out.println("Username or Password incorrect");
           RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
           rs.include(request, response);
        }
    } 


}
