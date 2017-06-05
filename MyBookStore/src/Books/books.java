package Books;
import java.util.*;
public class books {
	int BookId;
	private String Author;
	private String BookName;
	private int NoCopies;
	private int Price;
	private String Catogary;
	private String Genre;
	public int getBookId() {
		System.out.println("hey12");
		return BookId;
	}
	public void setBookId(int bookId) {
		
		BookId = bookId;
		System.out.println(BookId);
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
		System.out.println(Author);
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	public int getNoCopies() {
		return NoCopies;
	}
	public void setNoCopies(int noCopies) {
		NoCopies = noCopies;
	}

	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getCatogary() {
		return Catogary;
	}
	public void setCatogary(String catogary) {
		Catogary = catogary;
	}
	public String getGenre() {
		return Genre;
	}
	public void setGenre(String genre) {
		Genre = genre;
	}
	books(){
		BookId=10;
	}
	books(int bookid,String author,String bookname,int nocopies,int price,String Catogary,String Genre ){
		setBookId(bookid);
		setAuthor(author);
		setBookName(bookname);
		setNoCopies(nocopies);
		setPrice(price);
		setCatogary(Catogary);
		setGenre(Genre);
	}
}
