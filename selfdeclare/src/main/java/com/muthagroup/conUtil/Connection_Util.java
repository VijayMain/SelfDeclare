package com.muthagroup.conUtil;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_Util {
	static Connection con = null;

	public static Connection getLocalUserConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/complaintzilla", "root",
					"root");
			//System.out.println("Connection Estab");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Connection Failed");
		}
		return con;
	}
}
