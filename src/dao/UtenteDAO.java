package dao;

import java.sql.*;

import model.DB;
import model.UserBean;

public class UtenteDAO 
{	
	public UserBean login(String user, String pass) 
	{
		UserBean u2 = null;
		
		try 
		{				
			Connection conn = DB.getInstance().getConnection();

			PreparedStatement ps = conn.prepareStatement("SELECT username FROM utenti WHERE username = ? AND password = ?");

			ps.setString(1, user);
			ps.setString(2, pass);
			
			ResultSet result = ps.executeQuery();
			
			if (result.first()) 
				u2 = new UserBean(result.getString("username"), result.getString("password"), result.getString("nome"), result.getString("cognome"), result.getString("email")); 
			
			conn.close();
			
			return u2;

		} catch (SQLException e) {
			System.out.println("Errore durante la connessione." + e.getMessage());
		}

		return null;
	}

	public boolean registrazione(UserBean u) 
	{
		try
		{
			Connection conn = DB.getInstance().getConnection();

			Statement st = conn.createStatement();
			
			st.executeUpdate("INSERT INTO farmacia.utente (Nome, Cognome, Telefono, Username, Password, Email, n ) VALUES ('" + u.getNome() + "','" + u.getCognome() + "','"+ u.getTelefono() + "', '" + u.getUsername() + "', '" + u.getPassword() + "', '" + u.getEmail() + "');");
		
		}
		catch (SQLException e) {
			System.out.println("Errore durante la connessione." + e.getMessage());
			return false;
		}
		
		return true;
	}
}
