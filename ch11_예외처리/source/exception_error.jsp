<%@page contentType="text/html; charset=utf-8" %>
<%@page isErrorPage = "true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	오류 발생 : 요청 파라미터 값이 없습니다.
	<jsp:include page="exception.jsp"></jsp:include>
	<%@ include file = "exception.jsp"%>
</body>
</html>