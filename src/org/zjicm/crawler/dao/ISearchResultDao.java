package org.zjicm.crawler.dao;

import java.util.List;

import org.zjicm.lucene.lucene_ik.pojo.Result;

public interface ISearchResultDao {
	public List<Result> getSearchResult(String keyword);

	public List getKeyWordPading(int currentPage, int pageSize);
	public int getTotal();



}
