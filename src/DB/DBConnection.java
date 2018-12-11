package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public Connection ketNoi()
	{
		Connection conn =null;
		
		try 
		{
			 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");	 
	        String connectionURL = "jdbc:sqlserver://localhost:1433;databaseName=ExaminationOnline;integratedSecurity=true;";
	        conn = DriverManager.getConnection(connectionURL);
	        // conn.close();
		        
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}

}
