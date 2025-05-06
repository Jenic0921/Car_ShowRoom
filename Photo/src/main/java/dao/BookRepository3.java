package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository3 {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository3 instance = new BookRepository3();
	
	public static BookRepository3 getInstance() {
		return instance;
	}
	
	public BookRepository3() {
			Book book1 = new Book("Jenic1122", "GV60", 6433);
			book1.setDescription("가격 : 6,433 ~ 7,343만원<Br>연료 : 전기<Br>주행 : 368 ~ 451km 1회 충전 시<Br>연비 : 복합 4.1 ~ 5.1km/kWh 도심 4.3 ~ 5.7, 고속 3.8 ~ 4.5");
			book1.setPublisher("GENESIS");
			book1.setCategory("준중형 SUV");
			book1.setFilename("GV60.png");
			
			Book book2 = new Book("Jenic2233", "GV70", 5040);
			book2.setDescription("가격 : 5,040 ~ 5,989만원<Br>연료 : 가솔린, 디젤<Br>연비 : 복합 8.6 ~ 13.6km/ℓ 도심 7.5 ~ 12.4, 고속 10.3 ~ 15.5<Br>배기 : 2,151 ~ 3,470cc");
			book2.setPublisher("GENESIS");
			book2.setCategory("중형 SUV");
			book2.setFilename("GV70.png");
			
			Book book3 = new Book("Jenic3344", "G80", 5890);
			book3.setDescription("가격 : 5,890 ~ 6,830만원<Br>연료 : 가솔린<Br>연비 : 복합 8.3 ~ 10.6km/ℓ 도심 7.2 ~ 9, 고속 10.1 ~ 13.5<Br>배기 : 2,497 ~ 3,470cc");
			book3.setPublisher("GENESIS");
			book3.setCategory("준대형 세단");
			book3.setFilename("G80.png");
			
			listOfBooks.add(book1);
			listOfBooks.add(book2);
			listOfBooks.add(book3);
			
	}
	
	public ArrayList<Book> getAllBooks() 
	{
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
