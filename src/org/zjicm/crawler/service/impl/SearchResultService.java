package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.ISearchResultDao;
import org.zjicm.crawler.service.ISearchResultService;
import org.zjicm.lucene.lucene_ik.pojo.Result;

public class SearchResultService implements ISearchResultService {

	public ISearchResultDao getSearchResultDao() {
		return searchResultDao;
	}

	public void setSearchResultDao(ISearchResultDao searchResultDao) {
		this.searchResultDao = searchResultDao;
	}

	protected ISearchResultDao searchResultDao;

	public List<Result> getSearchResult(String keyword) {
		return searchResultDao.getSearchResult(keyword);
	}

	public List getKeyWordsPaging(int currentPage, int pageSize) {
		return searchResultDao.getKeyWordPading(currentPage, pageSize);
	}

	public int getTotal() {
		return searchResultDao.getTotal();
	}

}
