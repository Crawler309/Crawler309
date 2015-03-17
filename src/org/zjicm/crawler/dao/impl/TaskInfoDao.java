package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.ITaskInfoDao;
import org.zjicm.crawler.vo.Taskinfo;

public class TaskInfoDao extends BaseDAO implements ITaskInfoDao {

	public List getTaskInfo() {
		Session session = getSession();
		Query query = session.createQuery("from Taskinfo");
		query.setFirstResult(0);
		query.setMaxResults(5);
		List TaskInfos = query.list();
		session.close();
		return TaskInfos;
	}

	public List getTaskInfoPading(int currentPage, int pageSize) {
		Session session = getSession();
		Query query = session.createQuery("from Taskinfo");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List taskinfos = query.list();
		session.close();
		return taskinfos;

	}

	public int getTotal() {

		Session session = getSession();
		Query query = session.createQuery("from Taskinfo");
		List taskinfos = query.list();
		int totalSize = taskinfos.size();
		session.close();
		return totalSize;
	}

	public List getTaskInfoById(int TaskId) {

		Session session = getSession();
		Query query = session.createQuery("from Taskinfo where TaskId =?");
		query.setInteger(0, TaskId);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List list = query.list();
		session.close();
		return list;
	}

	public Boolean saveTaskInfo(Taskinfo taskinfo) {

		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.save(taskinfo);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {

			return false;
		}
	}

	public Boolean updateTaskInfoDetail(Taskinfo updatetaskinfo) {

		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.update(updatetaskinfo);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return true;
		}
	}

	public Boolean remove(int Id) {
		
		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			String hql="delete from Taskinfo where TaskId="+Id;
            session.createQuery(hql).executeUpdate();
            tx.commit();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return true;
		}
	}

}
