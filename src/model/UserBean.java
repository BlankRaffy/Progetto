package model;

public class UserBean {

	public UserBean() {
	}
	public UserBean(String user, String password, String nome,int telefono ,String cognome, String email) 
	{
		this.username = user;
		this.password = password;
		this.cognome =cognome;
		this.nome = nome;
		this.email = email;
		this.telefono = telefono;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	private String nome;
	private String cognome;
	private String username;
	private String password;
	private String email;
	private int telefono;
}
