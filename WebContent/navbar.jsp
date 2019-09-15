<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Portfolio</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Gallery</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <%@ page import="model.Utente" %>
      <% 
      		Utente u = (Utente) session.getAttribute("utente");
      		
      		if(u == null)
      		{
      %>
      
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
	<div class="loginmodal-container">
		<h1>Login to Your Account</h1><br>
	  <form method="post" action="LoginServlet">
		<input type="text" name="user" placeholder="Username">
		<input type="password" name="pass" placeholder="Password">
		<input type="submit" name="login" class="login loginmodal-submit" value="Login">
	  </form>
		
	  <div class="login-help">
		<a href="#">Register</a> - <a href="#">Forgot Password</a>
	  </div>
	</div>
</div>
 </div>