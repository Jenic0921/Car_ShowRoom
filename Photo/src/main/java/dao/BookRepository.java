package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
			Book book1 = new Book("Jenic1234", "펠리세이드", 3896);
			book1.setDescription("가격 : 3,896 ~ 5,491만원<Br>연료 : 가솔린,디젤<Br>연비 : 복합 8.5 ~ 12.4km/ℓ 도심 7.6 ~ 11.3, 고속 10 ~ 14.1<Br>배기 : 2,199 ~ 3,778cc");
			book1.setPublisher("HYUNDAI");
			book1.setCategory("준대형 SUV");
			book1.setFilename("Palisade.png");
			
			Book book2 = new Book("Jenic1235", "아반떼", 1975);
			book2.setDescription("가격 : 1,975 ~ 2,818만원<Br>연료 : LPG,가솔린<Br>연비 : 복합 10.3 ~ 15.3km/ℓ 도심 9.1 ~ 13.7, 고속 12.1 ~ 17.7<Br>배기 : 1,591 ~ 1,598cc");
			book2.setPublisher("HYUNDAI");
			book2.setCategory("준중형 세단");
			book2.setFilename("Avante.png");
			
			Book book3 = new Book("Jenic1236", "코나", 2446);
			book3.setDescription("가격 : 2,446 ~ 3,422만원<Br>연료 : 가솔린<Br>연비 : 복합 11.2 ~ 13.6km/ℓ 도심 10 ~ 12.6, 고속 13.1 ~ 15.5<Br>배기 : 1,598 ~ 1,999cc");
			book3.setPublisher("HYUNDAI");
			book3.setCategory("소형 SUV");
			book3.setFilename("Kona.png");
			
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
