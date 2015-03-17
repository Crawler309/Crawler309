package org.zjicm.crawler.action;

import java.util.List;
import java.util.Map;

import org.zjicm.crawler.service.IGatherWebSiteService;
import org.zjicm.crawler.util.Pager;
import org.zjicm.crawler.vo.Gatherwebsite;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GatherWebSiteAction extends ActionSupport {

	private Integer currentPage = 1;
	protected IGatherWebSiteService gatherWebSiteService;
	private Gatherwebsite gatherwebsite;

	private Integer siteId;
	private String siteName;
	private String siteType;
	private String siteArea;
	private String siteWeight;
	private String siteEnterUrl;
	private String crawlerDepth;
	private String filterDomain;
	private String userName;
	private String password;
	private String remark;
	private String templateName;
	private Integer taskId;
	private String directDomain;
	private String contentLimitFields;
	private String directUrl;

	public Gatherwebsite getGatherwebsite() {
		return gatherwebsite;
	}

	public void setGatherwebsite(Gatherwebsite gatherwebsite) {
		this.gatherwebsite = gatherwebsite;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public IGatherWebSiteService getGatherWebSiteService() {
		return gatherWebSiteService;
	}

	public void setGatherWebSiteService(
			IGatherWebSiteService gatherWebSiteService) {
		this.gatherWebSiteService = gatherWebSiteService;
	}

	public Integer getSiteId() {
		return siteId;
	}

	public void setSiteId(Integer siteId) {
		this.siteId = siteId;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getSiteType() {
		return siteType;
	}

	public void setSiteType(String siteType) {
		this.siteType = siteType;
	}

	public String getSiteArea() {
		return siteArea;
	}

	public void setSiteArea(String siteArea) {
		this.siteArea = siteArea;
	}

	public String getSiteWeight() {
		return siteWeight;
	}

	public void setSiteWeight(String siteWeight) {
		this.siteWeight = siteWeight;
	}

	public String getSiteEnterUrl() {
		return siteEnterUrl;
	}

	public void setSiteEnterUrl(String siteEnterUrl) {
		this.siteEnterUrl = siteEnterUrl;
	}

	public String getCrawlerDepth() {
		return crawlerDepth;
	}

	public void setCrawlerDepth(String crawlerDepth) {
		this.crawlerDepth = crawlerDepth;
	}

	public String getFilterDomain() {
		return filterDomain;
	}

	public void setFilterDomain(String filterDomain) {
		this.filterDomain = filterDomain;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public String getDirectDomain() {
		return directDomain;
	}

	public void setDirectDomain(String directDomain) {
		this.directDomain = directDomain;
	}

	public String getContentLimitFields() {
		return contentLimitFields;
	}

	public void setContentLimitFields(String contentLimitFields) {
		this.contentLimitFields = contentLimitFields;
	}

	public String getDirectUrl() {
		return directUrl;
	}

	public void setDirectUrl(String directUrl) {
		this.directUrl = directUrl;
	}

	public String remove() throws Exception {

		boolean b = gatherWebSiteService.remove(getSiteId());
		if (b == true) {
			return "success_remove";
		} else {
			return "error_remove";
		}
	}

	public String add() throws Exception {

		return SUCCESS;
	}

	public String save() throws Exception {

		boolean b = gatherWebSiteService.addGatherWebSite(gatherwebsite);
		if (b) {
			return "success_save";
		} else {
			return "error_save";
		}
	}

	public String get() throws Exception {

		int totalSize = gatherWebSiteService.getTotal(getTaskId());

		Pager pager = new Pager(currentPage, totalSize);

		List list = gatherWebSiteService.getGatherWebSitePaging(currentPage,
				pager.getPageSize(), getTaskId());

		Map request = (Map) ActionContext.getContext().get("request");
		request.put("GatherWebSite", list);
		request.put("pager", pager);
		return SUCCESS;
	}

	public String update() throws Exception {

		
		boolean b = gatherWebSiteService.update(gatherwebsite);
		if (b)
			return "success_update";
		else
			return "error_update";
	}

	public String getById() throws Exception {

		List list = gatherWebSiteService.getGatherWebSiteById(getSiteId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("GatherWebSite", list);
		return SUCCESS;
	}
}
