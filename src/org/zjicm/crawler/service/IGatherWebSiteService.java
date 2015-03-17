package org.zjicm.crawler.service;

import java.util.List;

import org.zjicm.crawler.vo.Gatherwebsite;

public interface IGatherWebSiteService {

	public List getGatherWebSitePaging(int currentPage, int pageSize,int Id);
	public Boolean addGatherWebSite(Gatherwebsite gws);
	public Boolean remove(int Id);
	public List getGatherWebSiteById(int Id);
	public int getTotal(int Id);
	public Boolean update(Gatherwebsite gatherwebsite);
}
