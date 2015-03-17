package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.ILuceneServerDao;
import org.zjicm.crawler.service.ILuceneServerService;

public class LuceneServerService implements ILuceneServerService {
	protected ILuceneServerDao luceneServerDao;

	public ILuceneServerDao getLuceneServerDao() {
		return luceneServerDao;
	}

	public void setLuceneServerDao(ILuceneServerDao luceneServerDao) {
		this.luceneServerDao = luceneServerDao;
	}

	public List getServer() {
		return luceneServerDao.getServer();
	}

}
