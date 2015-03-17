package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.IGatherWebSiteDao;
import org.zjicm.crawler.service.IGatherWebSiteService;
import org.zjicm.crawler.vo.Gatherwebsite;

public class GatherWebSiteService implements IGatherWebSiteService {

	protected IGatherWebSiteDao gatherWebWiteDao;

	public IGatherWebSiteDao getGatherWebWiteDao() {
		return gatherWebWiteDao;
	}

	public void setGatherWebWiteDao(IGatherWebSiteDao gatherWebWiteDao) {
		this.gatherWebWiteDao = gatherWebWiteDao;
	}

	public List getGatherWebSitePaging(int currentPage, int pageSize, int Id) {
		return gatherWebWiteDao.getGatherWebSitePading(currentPage, pageSize,
				Id);
	}

	public int getTotal(int Id) {
		return gatherWebWiteDao.getTotal(Id);
	}

	public Boolean addGatherWebSite(Gatherwebsite gws) {
		return gatherWebWiteDao.addGatherWebSite(gws);
	}

	public Boolean remove(int Id) {
		return gatherWebWiteDao.remove(Id);
	}

	public Boolean update(Gatherwebsite gatherwebsite) {
		return gatherWebWiteDao.update(gatherwebsite);
	}

	public List getGatherWebSiteById(int Id) {
		return gatherWebWiteDao.getGatherWebSiteById(Id);
	}

}
