<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>

<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	<%! String greeting = "Book Market Mall"; 
	String tagline = "Welcome to Book Market!"; %>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<strong>
							<%= greeting %>
				</strong>
			
			</h1>
		</div>
	</div>
	
	<main role = "main">
	<div class = "container">
		<div class = "text-center">
			<h3>
					<%= tagline %>
			</h3>
		</div>
	</div>
	</main>
	
	
</body>

</html>