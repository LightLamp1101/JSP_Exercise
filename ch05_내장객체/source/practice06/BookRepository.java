package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	public BookRepository() {
		
		Book book[] = {new Book("ISBN1234", "[Hello Cording] HTML5+CSS3", 15000), new Book("ISBN1235", "[IT�����] ���� ���� �ڹ� ���α׷���", 27000), new Book("ISBN1236", "[IT�����] ������4 �Թ�", 27000)};		

		book[0].setDescription("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ����ȭ���� �ٷ� ������ ����...");
		book[0].setAuthor("Ȳ��ȣ");
		book[0].setPublisher("�Ѻ��̵��");
		book[0].setUnitsInStock(1000);
		book[0].setTotalPages(288);
		book[0].setReleaseDate("2018/03/02");
		book[0].setCondition("New");
		
		book[1].setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		book[1].setAuthor("������");
		book[1].setPublisher("�Ѻ���ī����");
		book[1].setUnitsInStock(1000);
		book[1].setTotalPages(288);
		book[1].setReleaseDate("2018/03/02");
		book[1].setCondition("New");

		book[2].setDescription("�������� �ܼ��� ������� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�..");
		book[2].setAuthor("�ϼ����� ������, ������ ��Ÿ��, ��Ű ������(����ö, ���μ�)");
		book[2].setPublisher("�Ѻ��̵��");
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
}
