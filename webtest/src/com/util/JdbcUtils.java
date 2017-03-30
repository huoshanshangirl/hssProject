package com.util;

import java.sql.Connection;
import java.sql.SQLException;



import com.mchange.v2.c3p0.ComboPooledDataSource;


public class JdbcUtils {
private  static ComboPooledDataSource dataSource=new ComboPooledDataSource();
private static ThreadLocal <Connection> threadLocal=new ThreadLocal<Connection>();

public static Connection getConnection() throws SQLException{
	 Connection con=threadLocal.get();
	if(con==null){
		
		con=dataSource.getConnection();
		threadLocal.set(con);
	}
	 
	return con;
	
}
public static void StartTransction () throws SQLException{
	 Connection con=threadLocal.get();
	 
	 if(con==null){
		 con=getConnection();
		
		 threadLocal.set(con);
		 
	 }
	
	 con.setAutoCommit(false);
}
public static void commit() throws SQLException{
	Connection con=threadLocal.get();
	con.commit();
}
public static void rollback() throws SQLException{
	Connection con=threadLocal.get();
	con.rollback();
}
public static void close() throws SQLException{
	Connection con=threadLocal.get();
	con.close();
}

}
