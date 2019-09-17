<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Special Children Farma & Volunteers</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/resetcss.css">
<link rel="stylesheet" href="css/mycss.css">
</head>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<h1 align="left">Benvenuto</h1>
	<br>
	<h3 align="left"></h3>
	<br>
	<form method="post" action="LoginServlet">
		<input type="text" name="user" placeholder="Username"> <input
			type="password" name="pass" placeholder="Password"> <input
			type="submit" name="login">
	</form>
	<div class="login-help">
		<a href="register.jsp">Non hai un account? Registrati</a> - <a
			href="#">Password dimenticata?</a>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>