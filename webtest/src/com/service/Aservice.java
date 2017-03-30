package com.service;

import java.sql.SQLException;

import com.dao.Adao;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.util.JdbcUtils;

public class Aservice {
	private Adao d=new Adao();
	public static void main(String[] args) throws Exception {
		final Aservice sv =new Aservice();
		 
		 new Thread( new Runnable() {
			public void run() {
				try {
					sv.crud();
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				 try {
					Thread.sleep(10000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}).start();
		 sv.crud();
		  
	}
     public void crud() throws Exception{
    	 try {
			JdbcUtils.StartTransction();
			  d.update();
			  Thread.sleep(10000);
	    	
	    	  JdbcUtils.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				JdbcUtils.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
    	  
     }

	
}
