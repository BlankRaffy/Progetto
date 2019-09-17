<nav class="navbar navbar-inverse">
	<%@ page import="model.UserBean"%>

	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="#chisiamo">Chi siamo?</a></li>
				<li><a href="#contatti">Contatti</a></li>
				<li><a href="#assistenza">Assistenza</a></li>
			</ul>
			<form class="navbar-form navbar-left" action="/action_page.php">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>

			<%
				UserBean u = (UserBean) session.getAttribute("utente");

				if (u == null) {
			%>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Accedi</a></li>
				<li><a href="Carrello.jsp"><span
						class="glyphicon glyphicon-shopping-cart"></span> Carrello</a></li>
			</ul>

			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right navbar-brand">

				<%=u.getUsername()%>
			</ul>
			<%
				}
			%>
		</div>
	</div>
</nav>