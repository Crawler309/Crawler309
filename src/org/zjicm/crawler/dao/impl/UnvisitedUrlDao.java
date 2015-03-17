package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IUnVisitedUrlDao;

public class UnvisitedUrlDao extends BaseDAO implements IUnVisitedUrlDao {

	public List getUnVisitedUrl() {

		Session session = getSession();
		Query query = session.createQuery("from Unvisitedurl");
		query.setFirstResult(0);
		query.setMaxResults(5);
		List UnVisitedUrls = query.list();
		session.close();
		return UnVisitedUrls;

	}

	public int getTotal() {
		Session session = getSession();
		Query query = session.createQuery("select count(*) from Unvisitedurl");
		int totalSize = ((Number) query.uniqueResult()).intValue();

		session.close();
		return totalSize;
	}

	public List getUnVisitedUrlPading(int currentPage, int pageSize) {
		Session session = getSession();
		Query query = session.createQuery("from Unvisitedurl");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List unvsitedurls = query.list();
		session.close();
		return unvsitedurls;
	}
}
