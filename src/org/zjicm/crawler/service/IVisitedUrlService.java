package org.zjicm.crawler.service;

import java.util.List;

public interface IVisitedUrlService {

	public List getVisitedUrl();

	public List getVisitedUrlPaging(int currentPage, int pageSize);

	public int getTotal();
}
