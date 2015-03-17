package org.zjicm.crawler.service;

import java.util.List;

public interface IWebContInfoService {

	public List getWebContInfo();

	public List getWebContInfoPaging(int currentPage, int pageSize);

	public int getTotal();
}
