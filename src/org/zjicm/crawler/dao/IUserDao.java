package org.zjicm.crawler.dao;

import java.util.List;

import org.zjicm.crawler.vo.AdministratorUser;

public interface IUserDao {

	public List login(AdministratorUser user);
	public Boolean updatePassword(AdministratorUser updateuser);
}
