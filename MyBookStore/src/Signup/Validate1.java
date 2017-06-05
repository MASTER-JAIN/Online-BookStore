package Signup;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Validate1
 {
     public static boolean checkUser(String email) 
     {
      boolean st =false;
      try{
    	  
	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
       //  Statement ps =con.prepareStatement
         //                    ("select * from USER where USERNAME="+email+" and PASSWORD="+pass);
         
         PreparedStatement ps = con.prepareStatement("select * from User where Username=?");
        // String query = "select * from User where Username=? and Password=?";  
     //    System.out.println(email + pass);
         
         
        ps.setString(1, email);
       // ps.setString(2, pass);
       //  ResultSet rs =ps.execute();
         
         
         //st = rs.next();
         ResultSet rs = ps.executeQuery();
         st=rs.next();
      //   System.out.println(email + pass);
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}
