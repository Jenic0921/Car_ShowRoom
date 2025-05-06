package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection getConnection() throws SQLException,
	ClassNotFoundException {
		
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/kkh990921db?serverTimezone=UTC&characterEncoding=utf8";
		String user = "kkh990921";
		String password = "kth114455@";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
		return conn;
	}
	
}