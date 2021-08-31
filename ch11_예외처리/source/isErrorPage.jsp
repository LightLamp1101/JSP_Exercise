<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isErrorPage = "true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>

<h6>오류 발생</h6>
<% 
	int Statuscode = response.getStatus();
	response.setStatus(200);
%>

<table border="1" >	
	<tr> <td>Error : </td> <td><%=exception.getClass().getName() %> : 오류 발생!!</td> </tr>
	<tr> <td>URI : </td> <td><%= request.getRequestURI() %></td> </tr>
	<tr> <td>Status code : </td> <td><%= Statuscode %></td> </tr>
</table>

</body>
</html>