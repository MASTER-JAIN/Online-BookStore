package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Validate
 {
     public static boolean checkUser(String email,String pass) 
     {
      boolean st =false;
      try{
    	
         Class.forName("com.mysql.jdbc.Driver");

 	 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
      
         
         PreparedStatement ps = con.prepareStatement("select * from User where Username=? and Password=?");
    
         
         
         
        ps.setString(1, email);
       ps.setString(2, pass);
       
         
         
       
         ResultSet rs = ps.executeQuery();
         st=rs.next();
       
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}