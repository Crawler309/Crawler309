package org.zjicm.lucene.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.zjicm.lucene.json.JSONArray;
import org.zjicm.lucene.json.JSONException;


public class DB {
	public static String driver = "com.mysql.jdbc.Driver";
	public static String connString = "jdbc:mysql://192.168.1.136:3306/lucenemanage?useUnicode=true&characterEncoding=UTF-8";
	public static String username = "root";
	public static String password = "";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(connString, username, password);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("驱动不存在");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("数据库连接失败");
		}
		return conn;
	}

	public static void closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

	}

	public static void commitConnection(Connection conn) {
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public static int add(Connection conn, JSONArray array) {
		String sql = "INSERT INTO `lucene_info`"
				+ "( `lucene_name`, `lucene_ip`, `lucene_port`, `remark`, `ifinsert`) "
				+ "VALUES (?,?,?,?,0)";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, array.getString(0));
			ps.setString(2, array.getString(1));
			ps.setInt(3, array.getInt(2));
			ps.setString(4, array.getString(3));
			num = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;

	}

	public static int update(Connection conn, JSONArray array) {
		String sql = "UPDATE `lucene_info` SET `lucene_name`=?,`lucene_ip`=?,`lucene_port`=?,`remark`=?"
				+ " WHERE id=?";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, array.getString(0));
			ps.setString(2, array.getString(1));
			ps.setInt(3, array.getInt(2));
			ps.setString(4, array.getString(3));
			ps.setInt(5, array.getInt(4));
			num = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;

	}

	public static int delete(Connection conn, JSONArray array) {
		String sql = "DELETE FROM `lucene_info` WHERE id=?";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, array.getInt(0));
			num = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = DB.getConnection();
		System.out.println("success!");

		DB.closeConnection(conn);
	}
}
