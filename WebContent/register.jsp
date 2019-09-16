<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1 align="center">Benvenuto</h1>
	<h3 align="center">Compila i campi per accedere al tuo account</h3>
	<br>
	<form method="post" action="RegisterServlet">
		<input type="text" name="nome" placeholder="Nome"> <br>
		<input type="text" name="cognome" placeholder="Cognome"><br>
		<input type="text" name="user" placeholder="Username"><br>
		<input type="number" name="telefono" placeholder="Numero Opzionale"><br>
		<input type="text" name="email" placeholder="Email"><br>
		<input type="password" name="pass" placeholder="Password"><br>
			
			
			
			
			
			
			
			 <input
			type="submit" name="login" class="login loginmodal-submit"
			value="Login">
	</form>
	<div class="login-help">
		<a href="register.jsp">Registrati</a> - <a href="#">Password
			dimenticata?</a>
	</div>
</body>
</html>