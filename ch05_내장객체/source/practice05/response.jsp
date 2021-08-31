<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh",5);
		Date now = Calendar.getInstance().getTime();
		
		String am_pm;
		int hour = now.getHours();
		int minute = now.getMinutes();
		int second = now.getSeconds();
		if(hour/12 == 0) {
			am_pm = "AM";
		} else {
			am_pm = "PM";
			hour = hour - 12;
		}
		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
	%>
	<p><%="현재시간은 "+ CT%>
	<p><%response.setIntHeader("Refresh",5);%>
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>
				
