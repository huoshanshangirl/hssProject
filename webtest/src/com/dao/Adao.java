package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.service.Aservice;
import com.util.JdbcUtils;

public class Adao {
	public void update() {
		Connection con=null;
		PreparedStatement ps=null;
		try {
			con=JdbcUtils.getConnection();
			
			int rmbString=200;
			rmbString++;
			String sql="update test set rmb="+rmbString+" where  id=?";
			 ps = con.prepareStatement(sql);
			ps.setString(1,"1");
			ps.executeUpdate();
		} catch (Exception e) {
			
		}finally{
			try {
				if(ps!=null){
					ps.close();
				}
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
	   
		
		
		
	}
	
	public void delete(){
		
		Connection con=null;
		PreparedStatement ps=null;
		try {
			  con=JdbcUtils.getConnection();
			  String sql="delete  from test where id=?";
			   ps = con.prepareStatement(sql);
			  ps.setObject(1, "2");
			  
			  ps.execute();
			  
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			
		}
	}

}
