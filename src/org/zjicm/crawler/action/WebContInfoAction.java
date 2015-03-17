package org.zjicm.crawler.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.zjicm.crawler.service.IWebContInfoService;
import org.zjicm.crawler.util.Pager;
import org.zjicm.crawler.vo.Webcontinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class WebContInfoAction extends ActionSupport {
	private Integer currentPage = 1;
	protected IWebContInfoService webContInfoService;

	public IWebContInfoService getWebContInfoService() {
		return webContInfoService;
	}

	public void setWebContInfoService(IWebContInfoService webContInfoService) {
		this.webContInfoService = webContInfoService;
	}

	public Integer getId() {
		return id;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

	public String getPageUrl() {
		return pageUrl;
	}

	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}

	public String getColectTime() {
		return colectTime;
	}

	public void setColectTime(String colectTime) {
		this.colectTime = colectTime;
	}

	public String getTextTitle() {
		return textTitle;
	}

	public void setTextTitle(String textTitle) {
		this.textTitle = textTitle;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPageTime() {
		return pageTime;
	}

	public void setPageTime(String pageTime) {
		this.pageTime = pageTime;
	}

	public String getReproter() {
		return reproter;
	}

	public void setReproter(String reproter) {
		this.reproter = reproter;
	}

	public String getJoiner() {
		return joiner;
	}

	public void setJoiner(String joiner) {
		this.joiner = joiner;
	}

	public String getCommenter() {
		return commenter;
	}

	public void setCommenter(String commenter) {
		this.commenter = commenter;
	}

	public String getEmotionClass() {
		return emotionClass;
	}

	public void setEmotionClass(String emotionClass) {
		this.emotionClass = emotionClass;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	private Integer id;
	private String taskId;
	private String siteId;
	private String pageUrl;
	private String colectTime;
	private String textTitle;
	private String text;
	private String pageTime;
	private String reproter;
	private String joiner;
	private String commenter;
	private String emotionClass;
	private String remark;
	private String state;

	public String get() throws Exception {

		int totalSize = webContInfoService.getTotal();

		Pager pager = new Pager(currentPage, totalSize);

		List list = webContInfoService.getWebContInfoPaging(currentPage, pager
				.getPageSize());
		// Iterator<Webcontinfo> it = webContInfos.iterator();
		//
		// while (it.hasNext()) {
		// Webcontinfo w = new Webcontinfo();
		// w = it.next();
		// System.out.println(w.getId() + "__" + w.getTextTitle());
		// }
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("WebContInfo", list);
		request.put("pager", pager);

		return SUCCESS;
	}

}
