package User;
import java.sql.*;

public class user {
	private String username="Guest";
	private String Password;
	private String FirstName;
	private String LastName;
	private String City;
	private String State;
	private String EmailID;
	private String PhoneNo;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getEmailID() {
		return EmailID;
	}
	public void setEmailID(String emailID) {
		EmailID = emailID;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	user(){
		
	}
	user(String usern){
		this.setUsername(usern);
	
	}
	
	public static user SetDetails(String usern){
		user u=new user(usern);
		try{
			Class.forName("com.mysql.jdbc.Driver");
		

	 	 
        Connection con=DriverManager.getConnection
                       ("jdbc:mysql://localhost/MyBookStore","root","voldamort");
     
        
        PreparedStatement ps = con.prepareStatement("select * from User where Username=?");
		ps.setString(1, usern);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
        {
	       	 u.setUsername(rs.getString("Username"));
	        u.setPassword(rs.getString("Password"));
	       u.setFirstName(rs.getString("FirstName"));
	        u.setLastName(rs.getString("LastName"));
	        u.setCity(rs.getString("City"));
	       u.setState(rs.getString("State"));
	        u.setEmailID(rs.getString("Email"));
	        u.setPhoneNo(rs.getString("PhoneNo"));
        }
		}catch(Exception e){
		
		
		}
		
		return u;
		
	}
	
}
