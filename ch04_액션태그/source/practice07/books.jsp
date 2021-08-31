<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Book" %>
<jsp:useBean id="bookDAO" class = "dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
		<%
			for(int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
		%>
		<div class="row">
			<h3><%=book.getName()+"<br><br>"%></h3>
			<p><%=book.getDescription()%>
			<p><%=book.getAuthor()+" | "%><%=book.getPublisher()+" | "%><%=book.getUnitPrice()%>원
		</div>
		<hr>			
		<%
			}
		%>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>