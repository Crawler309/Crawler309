package org.zjicm.crawler.dao;

import java.util.List;

public interface IWebContInfoDao {

	public List getWebContInfo();
	public List getWebContInfoPading(int currentPage, int pageSize);

	public int getTotal();
}
