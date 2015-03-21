package com.partdb.eigs.dataImport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionProvider {
	static Connection conn = null;
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("org.postgresql.Driver");
		
		String jdbcUrl="jdbc:postgresql://localhost:5432/EIGS_DB";
		String userID="postgres";
		String userPass="1234";
		
/*		String jdbcUrl="jdbc:postgresql://localhost:5433/EIGS_DB";
		String userID="postgres";
		String userPass="postgre";*/
		
		conn = DriverManager.getConnection(jdbcUrl, userID, userPass);
		return conn;
	}
}
