package Books;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class Author1
 */
@WebServlet("/Author1")
public class Author1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String aut = request.getParameter("author");
		HttpSession session=request.getSession(false);
		//String n=(String)session.getAttribute("emp_id");
		int i=0;
		try{
		Class.forName("com.mysql.jdbc.Driver");

	 	 
        Connection con=(Connection) DriverManager.getConnection
                       ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
     
        
        PreparedStatement ps = con.prepareStatement("select BooksId,Author,BookName,NoCopies,Price,Catogary,Genre from Books where Author like '"+aut+"%'");
   
        
        
        
       
		
	
      
      
        
        System.out.println(aut);
      
        ResultSet rs = ps.executeQuery();
		
		
		
		books[] b=(books[]) new books[200];
		
		
		//System.out.println("hey");
		while(rs.next()){
			out.println(i);
			b[i]=new books();
			b[i].setBookId(rs.getInt("BooksId"));
			out.println(i);
			b[i].setAuthor(rs.getString("Author"));
			out.println(i);
			b[i].setBookName(rs.getString("BookName"));
			out.println(i);
			b[i].setNoCopies(rs.getInt("NoCopies"));
			out.println(i);
			b[i].setPrice(rs.getInt("Price"));
			out.println(i);
			b[i].setCatogary(rs.getString("Catogary"));
			
			out.println(i);
			b[i].setGenre(rs.getString("Genre"));
			
			
			out.println(i);
			i=i+1;
			out.println(i);
		}
		
request.setAttribute("book",b);
        
        request.setAttribute("value",i);
        RequestDispatcher rsp =request.getRequestDispatcher("Author1.jsp");
        
        rsp.forward(request, response);
		}
		catch(Exception e){
		}
		}
	}



