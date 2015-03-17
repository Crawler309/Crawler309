package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IWebContInfoDao;

public class WebContInfoDao extends BaseDAO implements IWebContInfoDao {

	public List getWebContInfo() {

		Session session = getSession();
		Query query = session.createQuery("from Webcontinfo");
		query.setFirstResult(0);
		query.setMaxResults(5);
		List WebContInfos = query.list();
		session.close();
		return WebContInfos;

	}

	public int getTotal() {
		Session session = getSession();
		String hql = "select count(*) from Webcontinfo";
		Query query = session.createQuery(hql);
		int totalSize = ((Number) query.uniqueResult()).intValue();
		session.close();
		return totalSize;
	}

	public List getWebContInfoPading(int currentPage, int pageSize) {
		
		Session session = getSession();
		Query query = session.createQuery("from Webcontinfo");
		query.setFirstResult(0);
		query.setMaxResults(5);
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list = query.list();
		session.close();

		return list;
	}

}
