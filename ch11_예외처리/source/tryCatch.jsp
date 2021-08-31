<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>Error</title>
</head>
<body>
<%
	try {
		int a = 1/0;
	} catch(Exception e) {
%>
		
	오류발생 : 	<%=e.getMessage() %>
<%	
	}
%>

</body>
</html>