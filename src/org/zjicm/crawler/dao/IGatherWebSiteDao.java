package org.zjicm.crawler.dao;

import java.util.List;

import org.zjicm.crawler.vo.Gatherwebsite;

public interface IGatherWebSiteDao {

	public List getGatherWebSitePading(int currentPage, int pageSize, int Id);

	public List getGatherWebSiteById(int Id);

	public Boolean addGatherWebSite(Gatherwebsite gws);

	public int getTotal(int Id);

	public Boolean remove(int Id);

	public Boolean update(Gatherwebsite gatherwebsite);
}
