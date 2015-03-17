package org.zjicm.crawler.service;

import java.util.List;

import org.zjicm.crawler.vo.AdministratorUser;

public interface IUserService {

  public Boolean login(AdministratorUser user); 	
  public Boolean updatePassword(AdministratorUser updateuser);
}
