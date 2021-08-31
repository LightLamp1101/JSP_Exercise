<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Book book = bookDAO.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=book.getName()%></h3>
				<p><%=book.getDescription()%>
				<p> <b>도서코드 : </b><span class="badge badge-danger">
					<%=book.getBookId()%></span>
				<p> <b>출판사</b> : <%=book.getPublisher()%>
				<p> <b>저자</b> : <%=book.getAuthor()%>
				<p> <b>재고 수</b> : <%=book.getUnitsInStock()%>
				<p> <b>총 페이지 수</b> : <%=book.getTotalPages()%>
				<p> <b>출판일</b> : <%=book.getReleaseDate()%>
				<h4><%=book.getUnitPrice()%>원</h4>
				<p> <a href="#" class="btn btn-info"> 도서주문 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary"> 도서목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>