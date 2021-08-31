<%@page contentType="text/html; charset=utf-8" %>
<%@page errorPage = "exception_error.jsp" %>
<html>
<head>
<title>Security</title>
</head>
<body>
<%
String username = request.getParameter("username");
if(username=="") throw new ServletException();
%>
아이디 : <%= request.getParameter("username") %>

</body>
</html>