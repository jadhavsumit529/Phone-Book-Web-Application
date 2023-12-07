package com.conn;

//import java.util.Scanner;
import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.Statement;
import java.sql.DriverManager;

public class DbConnect {
	private static Connection conn;

	public static Connection getconn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook", "root", "Sumit@529");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
