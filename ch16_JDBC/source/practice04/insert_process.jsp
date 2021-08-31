<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%@include file ="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String num = request.getParameter("num");
		String depart = request.getParameter("depart");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		Statement stmt = null;
		
		try {
			String sql = "INSERT INTO Student(num, depart, name, address, phone) VALUES('"+ num + "','"+ depart + "','" + name + "','" + address + "','" + phone + "')";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			out.println("Student 테이블 삽입이 성공했습니다.");
		} catch(SQLException ex) {
			out.println("Student 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>