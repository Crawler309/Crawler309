package org.zjicm.lucene.mysql;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class test {

	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		String sql="SELECT * FROM `lucene_info` ";
		Statement stmt= conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		try{
			while(rs.next()){
			/* 	int id=rs.getInt(1);
				String name=rs.getString(2);
				String ip=rs.getString(3);
				int port=rs.getInt(4);
				String remark=rs.getString(5);
				int total_m=rs.getInt(6);
				int used_m=rs.getInt(7);
				String first=rs.getDate(8).toString();
				String last=rs.getDate(9).toString(); */
				int id=rs.getInt("id");
				String name=rs.getString("lucene_name");
				String ip=rs.getString("lucene_ip");
				int port=rs.getInt("lucene_port");
				String remark=rs.getString("remark");
				int total_m=rs.getInt("total_memory");
				int used_m=rs.getInt("used_memory");
				System.out.println(name);
//				Date first=new Date();
				
				
				String last="";

//				System.out.println(first);
			}
		}
			catch (Exception e){}
			finally {
				DB.closeConnection(conn);
			}
		System.out.println();

	}

}
