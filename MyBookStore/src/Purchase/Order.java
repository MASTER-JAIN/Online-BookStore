package Purchase;

public class Order {
	private String Username;
	private int bookId;
	private String DebitCardNumber;
	private String cvv;
	private String cardholderName;
	private String Atmpin;
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getDebitCardNumber() {
		return DebitCardNumber;
	}
	public void setDebitCardNumber(String debitCardNumber) {
		DebitCardNumber = debitCardNumber;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getCardholderName() {
		return cardholderName;
	}
	public void setCardholderName(String cardholderName) {
		this.cardholderName = cardholderName;
	}
	public String getAtmpin() {
		return Atmpin;
	}
	public void setAtmpin(String atmpin) {
		Atmpin = atmpin;
	}
	Order(){
		
	}
	Order(String user,int bid,String debitno,String cvv,String Cname,String atmpin  ){
		this.setUsername(user);
		this.setBookId(bid);
		this.setDebitCardNumber(debitno);
		this.setCvv(cvv);
		this.setCardholderName(Cname);
		this.setAtmpin(atmpin);
	}
	
	
}
