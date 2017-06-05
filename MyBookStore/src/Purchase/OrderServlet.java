package Purchase;
import User.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess = request.getSession(false); //use false to use the existing session
		user u=(user)sess.getAttribute("use");
		String username=(String)sess.getAttribute("username");
		Integer i=(Integer)sess.getAttribute("bookid");
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String debcard = request.getParameter("DebitCardNumber");
        String cvv = request.getParameter("cvv");
        String cname = request.getParameter("cardholdername");
        String atmpin = request.getParameter("atmpin");
		Order o=new Order(username,i,debcard,cvv,cname,atmpin);
		System.out.println(o.getCardholderName());
		
		try{
	    	
	         Class.forName("com.mysql.jdbc.Driver");

	 	 
	         Connection con=DriverManager.getConnection
	                        ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
	      
	         PreparedStatement ps1 = con.prepareStatement("select NoCopies,Bookname,Price from Books where BooksId=?");
	         
	         
	         ps1.setInt(1, i);
	         ResultSet rs=ps1.executeQuery();
	         int p=0,z=0;
	         String bname = null;
	         while(rs.next()){
	        	 z=rs.getInt("NoCopies");
	        	 bname=rs.getString("Bookname");
	        	p=rs.getInt("Price"); 
	         }
	         PreparedStatement ps = con.prepareStatement("insert into Orders values(?,?,?,?,?,?,?,?)");
	    
	        PreparedStatement ps2 = con.prepareStatement("UPDATE Books set NoCopies=? where BooksId=?");
	         ps2.setInt(1, z-1);
	         ps2.setInt(2, i);
	        ps.setString(1, username);
	       ps.setInt(2, i);
	       ps.setString(3, bname);
	       ps.setInt(4, p);
	       ps.setString(5, o.getDebitCardNumber());
	       ps.setString(6, o.getCvv());
	       ps.setString(7, o.getCardholderName());
	       ps.setString(8, o.getAtmpin());
	       
	       
	         
	         
	       
	         int k = ps.executeUpdate();
	         k=ps2.executeUpdate();
	       
	      }catch(Exception e)
	      {
	          e.printStackTrace();
	      }
		RequestDispatcher rs = request.getRequestDispatcher("ThankYou.jsp");
        request.setAttribute("use", u);
        request.setAttribute("order", o);
        rs.forward(request, response);
	}

}
