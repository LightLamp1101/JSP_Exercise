<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>

<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");
		
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>"+ name + "</td>\n");
				if(name.equals("hobby")){
					String hobby[] = request.getParameterValues(name);
					out.println("<td>");
					if(hobby != null) {
						for(int i = 0; i < hobby.length; i++) {
							out.println(" " + hobby[i]);
						}
					}	
					out.println("</td></tr>\n");
				}
				else{
					String paramValue = request.getParameter(name);
					out.println("<td>" + paramValue + "</td></tr>\n");
				}
			}
		%>
	</table>

	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
	%>
	<p> 아이디 : <%=id%>
	<p> 비밀번호 : <%=passwd%>
	<p> 이름 : <%=name%>
	<p> 연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%>
	<p> 성별 : <%=sex%>
	<p> 취미 : <%
				if(hobby != null) {
					for(int i = 0; i < hobby.length; i++) {
						out.println(" " + hobby[i]);
					}
				}
			%>
	<p> 가입인사 : <%=comment%>
</body>
</html>