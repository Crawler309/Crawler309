package org.zjicm.crawler.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IVisitedUrlDao;


public class VisitedUrlDao extends BaseDAO implements IVisitedUrlDao{

	public List getVisitedUrl() {

		Session session = getSession();
		Query query = session.createQuery("from Visitedurl");
		query.setFirstResult(0);
		query.setMaxResults(5);
		List VisitedUrls = query.list();
		session.close();
		return VisitedUrls;

	}

	public int getTotal() {

		Session session = getSession();
		Query query = session.createQuery("select count(*) from  Visitedurl");
		
		int totalSize = ((Number) query.uniqueResult()).intValue();
		session.close();
		return totalSize;
	}

	public List getVisitedUrlPading(int currentPage, int pageSize) {
		Session session = getSession();
		Query query = session.createQuery("from Visitedurl");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List visitedurls = query.list();
		session.close();
		return visitedurls;
	}
}
