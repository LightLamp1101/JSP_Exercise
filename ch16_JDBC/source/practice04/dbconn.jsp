<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%
		Connection conn = null;
	
		String url = "jdbc:mysql://localhost:3306/ExerciseDB";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	%>
</body>
</html>