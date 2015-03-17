package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.ILuceneServerDao;

public class LuceneServerDao extends BaseDAO implements ILuceneServerDao {

	public List getServer() {

		Session session = getSession();
		Query query = session.createQuery("from Gatherwebsite where SiteId =?");

		List list = query.list();
		session.close();
		return list;
	}

}
