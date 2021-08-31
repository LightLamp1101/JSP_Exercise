<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>	
	
	전송된 요청 파라미터 : <%=request.getQueryString()%>

</body>

</html>