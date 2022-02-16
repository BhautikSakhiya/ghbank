package password;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dao {
public static Connection initializeDatabase() throws ClassNotFoundException, SQLException{  
		
		String dbUrl = "jdbc:mysql://localhost:3306/banking";
		String dbUname = "root";
		String dbPassword = "root";
		String dbDriver = "com.mysql.cj.jdbc.Driver";
		
		
		Class.forName(dbDriver);  
		Connection con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);
		return con;
		
	
}
}
