package com.callcenter.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtilDaoImp {

	public static Connection getConnection() throws Exception {
		Connection con=null;
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection
		("jdbc:mysql://localhost:3306/callcenter", "root", "root");
		
	} catch(ClassNotFoundException e) {
	
		e.printStackTrace();
		
	}catch(SQLException e){
		
		e.printStackTrace();
	}
	return con;
}
	
	/*
	 * To create the statement.
	 */
	
	public static Statement createStatement(Connection con){
		Statement stmt=null;
		try{
			stmt=con.createStatement();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return stmt;
	}
	public static ResultSet executeQuery(Statement stmt,String sql)
	{ResultSet result=null;
	try{
		result=stmt.executeQuery(sql);
	}catch(SQLException e){
		e.printStackTrace();
	}
	return result;
		
	}
	/*
	 * To close the connection.
	 */
	public static void closeConnection(Connection con){
		try{
		con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
