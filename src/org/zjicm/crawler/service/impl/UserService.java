package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.IUserDao;
import org.zjicm.crawler.dao.impl.UserDao;
import org.zjicm.crawler.service.IUserService;
import org.zjicm.crawler.vo.AdministratorUser;

public class UserService implements IUserService {

	protected IUserDao userDao;

	public IUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public Boolean login(AdministratorUser user) {

		List list = userDao.login(user);
		if (list.size() != 0) {
			return true;
		} else {
			return false;
		}
	}

	public Boolean updatePassword(AdministratorUser updateuser) {
		return userDao.updatePassword(updateuser);
	}
}
