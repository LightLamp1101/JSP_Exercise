package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	public BookRepository() {
		
		Book book[] = {new Book("ISBN1234", "[Hello Cording] HTML5+CSS3", 15000), new Book("ISBN1235", "[IT모바일] 쉽게 배우는 자바 프로그래밍", 27000), new Book("ISBN1236", "[IT모바일] 스프링4 입문", 27000)};

		book[0].setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행화면이 바로 보여서 눈으...");
		book[0].setAuthor("황재호");
		book[0].setPublisher("한빛미디어");
		book[0].setUnitsInStock(1000);
		book[0].setTotalPages(288);
		book[0].setReleaseDate("2018/03/02");
		book[0].setCondition("New");
		
		book[1].setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		book[1].setAuthor("우종중");
		book[1].setPublisher("한빛아카데미");
		book[1].setUnitsInStock(1000);
		book[1].setTotalPages(288);
		book[1].setReleaseDate("2018/03/02");
		book[1].setCondition("New");

		book[2].setDescription("스프링은 단순히 사용방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다..");
		book[2].setAuthor("하세가와 유이지, 오오노 와타루, 토키 코헤이(권은철, 전민수)");
		book[2].setPublisher("한빛미디어");
		book[2].setUnitsInStock(1000);
		book[2].setTotalPages(288);
		book[2].setReleaseDate("2018/03/02");
		book[2].setCondition("New");

		
		listOfBooks.add(book[0]);
		listOfBooks.add(book[1]);
		listOfBooks.add(book[2]);
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null && book.getBookId().equals(bookId))
			{
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