package org.zjicm.crawler.dao.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.zjicm.crawler.dao.BaseDAO;
import org.zjicm.crawler.dao.ISearchResultDao;
import org.zjicm.crawler.dao.util.XmlParser;
import org.zjicm.lucene.lucene_ik.SearchKeywords;
import org.zjicm.lucene.lucene_ik.pojo.Result;

public class SearchResultDao extends BaseDAO implements ISearchResultDao {

	public List<Result> getSearchResult(String keyword) {
		XmlParser xmlParser = new XmlParser();

		String indexDir = xmlParser.getIndexPath().getIndexPath();
		List<Result> list = new ArrayList<Result>();
		SearchKeywords search = new SearchKeywords();

		try {
			list = search.search(indexDir, keyword);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return list;
	}

	public List getKeyWordPading(int currentPage, int pageSize) {
		Session session = getSession();
		Query query = session.createQuery("from Keywords");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list = query.list();
		session.close();
		return list;
	}

	public int getTotal() {
		Session session = getSession();
		Query query = session.createQuery("from Keywords");
		List list = query.list();
		int totalSize = list.size();
		session.close();
		return totalSize;
	}

}
