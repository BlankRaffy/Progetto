package dao;

import java.sql.*;

import model.DB;
import model.Utente;

public class UtenteDAO 
{	
	public Utente login(String user, String pass) 
	{
		Utente u2 = null;
		
		try 
		{				
			Connection conn = DB.getInstance().getConnection();

			PreparedStatement ps = conn.prepareStatement("SELECT username FROM utenti WHERE username = ? AND password = ?");

			ps.setString(1, user);
			ps.setString(2, pass);
			
			ResultSet result = ps.executeQuery();
			
			if (result.first()) 
				u2 = new Utente(result.getString("username"), null); 
			
			conn.close();
			
			return u2;

		} catch (SQLException e) {
			System.out.println("Errore durante la connessione." + e.getMessage());
		}

		return null;
	}

	public boolean registrazione(Utente u) 
	{
		try
		{
			Connection conn = DB.getInstance().getConnection();

			Statement st = conn.createStatement();
			
			st.executeUpdate("INSERT INTO utenti (username, password) VALUES ('" + u.getUser() + "', '" + u.getPassword() + "');");
		
		}
		catch (SQLException e) {
			System.out.println("Errore durante la connessione." + e.getMessage());
			return false;
		}
		
		return true;
	}
}
