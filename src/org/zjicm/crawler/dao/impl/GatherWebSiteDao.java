package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IGatherWebSiteDao;
import org.zjicm.crawler.vo.Gatherwebsite;

public class GatherWebSiteDao extends BaseDAO implements IGatherWebSiteDao{


	public List getGatherWebSitePading(int currentPage, int pageSize, int Id) {
		Session session = getSession();
		Query query = session.createQuery("from Gatherwebsite where TaskID=?");
		query.setInteger(0, Id);
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List gatherwebsites = query.list();
		session.close();
		return gatherwebsites;
	}

	public int getTotal(int Id) {
		Session session = getSession();
		Query query = session.createQuery("from Gatherwebsite where TaskID=?");
		query.setInteger(0, Id);
		List gatherwebsites = query.list();
		int totalSize = gatherwebsites.size();
		session.close();
		return totalSize;
	}

	public List getGatherWebSiteById(int Id) {

		Session session = getSession();
		Query query = session.createQuery("from Gatherwebsite where siteID =?");
		query.setInteger(0, Id);
		
		query.setFirstResult(0);
		query.setMaxResults(5);
		List list = query.list();
		session.close();
		return list;
	}
	
	public Boolean addGatherWebSite(Gatherwebsite gws) {

		try {
			
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.save(gws);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {

			return false;
		}
	}

	public Boolean remove(int Id) {
		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			String hql="delete from Gatherwebsite where SiteId="+Id;
            session.createQuery(hql).executeUpdate();
            tx.commit();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return true;
		}
	}

	public Boolean update(Gatherwebsite gatherwebsite) {
		
		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.update(gatherwebsite);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return true;
		}
	}

}
