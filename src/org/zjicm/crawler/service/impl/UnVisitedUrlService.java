package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.IUnVisitedUrlDao;
import org.zjicm.crawler.dao.IVisitedUrlDao;
import org.zjicm.crawler.service.IUnVisitedUrlService;

public class UnVisitedUrlService implements IUnVisitedUrlService{

	protected IUnVisitedUrlDao unvisitedUrlDao;


	public IUnVisitedUrlDao getUnvisitedUrlDao() {
		return unvisitedUrlDao;
	}

	public void setUnVisitedUrlDao(IUnVisitedUrlDao unvisitedUrlDao) {
		this.unvisitedUrlDao = unvisitedUrlDao;
	}

	public int getTotal() {
		return unvisitedUrlDao.getTotal();
	}

	public List getUnVisitedUrl() {
		return unvisitedUrlDao.getUnVisitedUrl();
	}

	public List getUnVisitedUrlPaging(int currentPage, int pageSize) {
		return unvisitedUrlDao.getUnVisitedUrlPading(currentPage, pageSize);
	}


}
