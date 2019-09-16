package model;

import java.sql.*;

public class DB 
{
  // DATI ACCESSO DB
  private static DB instance;
  private Connection connection;
  private String db_name = "farmacia";
  private String username = "root";
  private String password = "Raffaele99?";
  
  private String url = "jdbc:mysql://localhost:3306/" + db_name + "?useSSL=false";

  // caricamento dei driver
  private DB() throws SQLException {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      this.connection = DriverManager.getConnection(url, username, password);
    } catch (ClassNotFoundException e) {
      System.out.println("DB driver not found:" + e.getMessage());
    }
    }
  
   public Connection getConnection() 
   {
     return connection;
   }
   
   public static DB getInstance() throws SQLException 
   {
        if (instance == null) {
            instance = new DB();
        } else if (instance.getConnection().isClosed()) {
            instance = new DB();
        }

        return instance;
   }
}