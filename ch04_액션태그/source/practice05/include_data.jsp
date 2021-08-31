<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<% 	int x = Integer.parseInt(request.getParameter("num")); 
		for(int i=1; i<10; i++){
			out.print(x + " * "+ i + " = " + x*i + "<br>");
		}
	%>
</body>

</html>