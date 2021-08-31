<html>
<head>
<title>Scripting Tag</title>
</head>

<body>
<%! String s = "Hello,Java Server Pages"; 
String getString(String str){
	return str;
}
%>

<%=getString(s)%>
</body>


</html>