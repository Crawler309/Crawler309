package org.zjicm.crawler.service;

import java.util.List;

public interface IUnVisitedUrlService {

	public List getUnVisitedUrl();

	public List getUnVisitedUrlPaging(int currentPage, int pageSize);

	public int getTotal();
}
