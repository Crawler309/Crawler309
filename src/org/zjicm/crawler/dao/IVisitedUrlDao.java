package org.zjicm.crawler.dao;

import java.util.List;

public interface IVisitedUrlDao {
	public List getVisitedUrl();

	public List getVisitedUrlPading(int currentPage, int pageSize);

	public int getTotal();
}
