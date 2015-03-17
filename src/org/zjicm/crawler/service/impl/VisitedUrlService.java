package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.IVisitedUrlDao;
import org.zjicm.crawler.dao.IWebContInfoDao;
import org.zjicm.crawler.service.IVisitedUrlService;

public class VisitedUrlService implements IVisitedUrlService{

	protected IVisitedUrlDao visitedUrlDao;
	
	public List getVisitedUrl() {

		return visitedUrlDao.getVisitedUrl();
	}

	public IVisitedUrlDao getVisitedUrlDao() {
		return visitedUrlDao;
	}

	public void setVisitedUrlDao(IVisitedUrlDao visitedUrlDao) {
		this.visitedUrlDao = visitedUrlDao;
	}

	public int getTotal() {
		return visitedUrlDao.getTotal();
	}

	public List getVisitedUrlPaging(int currentPage, int pageSize) {		
			return visitedUrlDao.getVisitedUrlPading(currentPage, pageSize);
	}

	

}
