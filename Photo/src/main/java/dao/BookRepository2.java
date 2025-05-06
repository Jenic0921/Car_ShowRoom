package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository2 {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository2 instance = new BookRepository2();
	
	public static BookRepository2 getInstance() {
		return instance;
	}
	
	public BookRepository2() {
			Book book1 = new Book("Jenic4567", "셀토스", 2087);
			book1.setDescription("가격 : 2,087 ~ 2,903만원<Br>연료 : 가솔린<Br>연비 : 복합 10.8 ~ 12.9km/ℓ 도심 9.8 ~ 11.8, 고속 12.2 ~ 14.6<Br>배기 : 1,598 ~ 1,999cc");
			book1.setPublisher("KIA");
			book1.setCategory("SUV");
			book1.setFilename("SELTOS.png");
			
			Book book2 = new Book("Jenic5678", "K5", 2784);
			book2.setDescription("가격 : 2,784 ~ 3,526만원<Br>연료 : LPG, 가솔린<Br>연비 : 복합 9.5 ~ 13.7km/ℓ 도심 8.2 ~ 12.1, 고속 11.5 ~ 16.1<Br>배기 : 1,598 ~ 1,999cc");
			book2.setPublisher("KIA");
			book2.setCategory("중형 세단");
			book2.setFilename("K5.png");
			
			Book book3 = new Book("Jenic6789", "모닝", 1175);
			book3.setDescription("가격 : 1,175 ~ 1,540만원<Br>연료 : 가솔린<Br>연비 : 복합 15.7km/ℓ 도심 14.4, 고속 17.6<Br>배기 : 998cc");
			book3.setPublisher("KIA");
			book3.setCategory("경형 해치백");
			book3.setFilename("MORNING.png");
			
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
