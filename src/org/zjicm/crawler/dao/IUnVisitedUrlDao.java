package org.zjicm.crawler.dao;

import java.util.List;

public interface IUnVisitedUrlDao {

	public List getUnVisitedUrl();

	public List getUnVisitedUrlPading(int currentPage, int pageSize);

	public int getTotal();
}
