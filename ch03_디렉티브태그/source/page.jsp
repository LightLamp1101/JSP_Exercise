<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Date"
import="java.lang.Math"%>
<html>

<head>
<title>Scripting Tag</title>
</head>

<body>

<% Date date = new Date();
	out.println("현재날짜 : " + date+ "<br>");
	out.println("5의 제곱 : " + Math.pow(5,2));
%>

</body>

</html>