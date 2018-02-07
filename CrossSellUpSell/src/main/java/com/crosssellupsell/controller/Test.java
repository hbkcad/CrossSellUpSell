package com.crosssellupsell.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Test {

	public static void main(String[] args) {
		Connection connection = null;
		String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";
		ResultSet rs = null;
		PreparedStatement psmnt = null;
		FileInputStream fis;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "SpringSample", "pass");
			File f = new File("C:\\Users\\Public\\Pictures\\Sample Pictures\\Hydrangeas.jpg");
			psmnt = connection.prepareStatement("insert into image values(?)");
			fis = new FileInputStream(f);
			psmnt.setBinaryStream(1, (InputStream)fis, (int)(f.length()));
			int s = psmnt.executeUpdate();
			if(s>0){
			System.out.println("Uploaded successfully !");
			}
			else{
			System.out.println("Error!");
			}
			}
			catch(Exception e){e.printStackTrace();}
			}

	}


