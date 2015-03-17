package org.zjicm.crawler.service;

import java.util.List;

import org.zjicm.lucene.lucene_ik.pojo.Result;

public interface ISearchResultService {
	public List<Result> getSearchResult(String keyword);
	public int getTotal();
	public List getKeyWordsPaging(int currentPage, int pageSize);
}
