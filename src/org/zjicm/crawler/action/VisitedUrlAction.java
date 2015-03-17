package org.zjicm.crawler.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;


import org.zjicm.crawler.service.IVisitedUrlService;
import org.zjicm.crawler.service.IWebContInfoService;
import org.zjicm.crawler.service.impl.VisitedUrlService;
import org.zjicm.crawler.util.Pager;
import org.zjicm.crawler.vo.Visitedurl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class VisitedUrlAction extends ActionSupport{

	private Integer currentPage = 1;
	protected IVisitedUrlService visitedUrlService;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	
	public IVisitedUrlService getVisitedUrlService() {
		return visitedUrlService;
	}
	public void setVisitedUrlService(IVisitedUrlService visitedUrlService) {
		this.visitedUrlService = visitedUrlService;
	}


	private String url;
	private String md5;
	private String time;

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getMd5() {
		return md5;
	}
	public void setMd5(String md5) {
		this.md5 = md5;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	

	public String get() throws Exception {
		int totalSize = visitedUrlService.getTotal();
		Pager pager = new Pager(currentPage, totalSize);

		List visitedUrls =visitedUrlService.getVisitedUrlPaging(currentPage, pager.getPageSize());

//		Iterator<Webcontinfo> it = webContInfos.iterator();
//
//		while (it.hasNext()) {
//			Webcontinfo w = new Webcontinfo();
//			w = it.next();
//			System.out.println(w.getId() + "__" + w.getTextTitle());
//		}
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("VisitedUrl", visitedUrls);
		request.put("pager", pager);

		return SUCCESS;
	}
}
