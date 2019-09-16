package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UtenteDAO;
import model.UserBean;

@SuppressWarnings("serial")
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

		// all the get parameter
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username = request.getParameter("user");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String user = request.getParameter("user");
		String password = request.getParameter("password");

		// creazione userbean e funzione di registrazione
		UserBean u = new UserBean(user, password, nome, cognome, email);
		UtenteDAO a = new UtenteDAO();
		a.registrazione(u);
		

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}