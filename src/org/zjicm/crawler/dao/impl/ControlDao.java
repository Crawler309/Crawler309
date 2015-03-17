package org.zjicm.crawler.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IControlDao;
import org.zjicm.crawler.vo.Taskinfo;

public class ControlDao extends BaseDAO implements IControlDao {

	public boolean TruncateTable(String TableName) {

		Connection c = null;
		PreparedStatement ps = null;
		try {
			c = SessionFactoryUtils.getDataSource(getSessionFactory())
					.getConnection();
			String sql = "truncate  table  " + TableName;

			ps = c.prepareStatement(sql);
			ps.executeUpdate();

			c.close();
			ps.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public boolean ModifyState(String state, int taskId) {

		Connection c = null;
		PreparedStatement ps = null;
		try {
			c = SessionFactoryUtils.getDataSource(getSessionFactory())
					.getConnection();
			String sql = "update  taskinfo   set TaskState = '" + state
					+ "' where TaskID = '" + taskId + "'";

			System.out.println(sql);
			ps = c.prepareStatement(sql);
			ps.executeUpdate();

			c.close();
			ps.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
}
