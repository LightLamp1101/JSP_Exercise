<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Date"
import="java.lang.Math"%>
<html>

<head>
<title>Scripting Tag</title>
</head>

<body>

<%@include file = "header.jsp"%>

<% Date date = new Date();
	out.println("현재 시간 : " + date+ "<br>");
%>

</body>

</html>