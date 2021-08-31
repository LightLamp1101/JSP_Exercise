<%@page contentType="text/html; charset=utf-8" %>
<html>

<head>
<title>bean</title>
</head>

<body>
<h4>구구단 출력하기</h4>
<jsp:useBean id="gugudan" class="ch04.com.dao.GuGudan"/>
	<%
		for(int i=1; i<10; i++) {
			out.print(5 + " * "+ i + " = " + gugudan.process(5, i) + "<br>");
		}
	%>
</body>

</html>