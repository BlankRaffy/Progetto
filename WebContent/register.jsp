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
<link rel="stylesheet" href="css/mycss.css">
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<h1 align="center">Benvenuto</h1>
	<h3 align="center">Compila i campi per registrati</h3>
	<br>
	<form method="post" action="RegisterServlet">
		<input type="text" name="nome" placeholder="Nome"> <br> <input
			type="text" name="cognome" placeholder="Cognome"><br> <input
			type="text" name="user" placeholder="Username"><br> <input
			type="tel" name="telefono" placeholder="Numero Opzionale"><br>
		<input type="email" name="email" placeholder="Email"><br>
		<input type="password" name="pass" placeholder="Password"><br>
		<input type="submit" name="login" class="login loginmodal-submit"
			value="Login">
	</form>
	<div class="login-help">
		<a href="login.jsp">Hai già un account?</a> - <a href="#">Password
			dimenticata?</a>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>