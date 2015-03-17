package org.zjicm.crawler.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.IUserDao;
import org.zjicm.crawler.vo.AdministratorUser;

public class UserDao extends BaseDAO implements IUserDao {

	public List login(AdministratorUser user) {

		Session session = getSession();
		Query query = session
				.createQuery("from AdministratorUser where Username =? and Password=?");
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		List list = query.list();
		session.close();
		return list;
	}

	public Boolean updatePassword(AdministratorUser updateuser) {

		try {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			session.update(updateuser);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return true;
		}
	}

}
