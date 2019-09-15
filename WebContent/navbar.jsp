<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#chisiamo">Chi siamo?</a></li>
        <li><a href="#contatti">Contatti</a></li>
        <li><a href="#assistenza">Assistenza</a></li>
      </ul>
      
      <%@ page import="model.Utente" %>
      <% 
      		Utente u = (Utente) session.getAttribute("utente");
      		
      		if(u == null)
      		{
      %>
      
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#" data-toggle="modal" data-target="#myModallogin"><span class="glyphicon glyphicon-log-in"></span> Accedi</a></li>
		        <li><a href="/Carrello.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Carrello</a></li>
		      </ul>
      
      <% 
      		}
      		else
      		{
      %>
		      <ul class="nav navbar-nav navbar-right navbar-brand">
		        Benvenuto <%=u.getUser()%>
		      </ul>
      <% 
      		}
      %>
    </div>
  </div>
</nav>

<!-- Modal quando premo login -->
<div class="modal fade" id="myModallogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
	<div class="loginmodal-container">
		<h1 align="center">Benvenuto</h1>
		<h3 align="center">Compila i campi per accedere al tuo account</h3><br>
	  <form method="post" action="LoginServlet">
		<input type="text" name="user" placeholder="Username">
		<input type="password" name="pass" placeholder="Password">
		<input type="submit" name="login" class="login loginmodal-submit" value="Login">
	  </form>
		
	  <div class="login-help">
		<a href="#">Registrati</a> - <a href="#">Password dimenticata?</a>
	  </div>
	</div>
</div>
 </div>