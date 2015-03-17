package org.zjicm.crawler.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.zjicm.crawler.service.ISearchResultService;
import org.zjicm.lucene.lucene_ik.pojo.Result;
import org.zjicm.lucene.vo.Keywords;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchResultAction extends ActionSupport {

	private Integer currentPage = 1;

	protected ISearchResultService searchResultService;

	private String title;
	private String url;
	private String writer;
	private String content;
	private String time;

	private String keyword;

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public ISearchResultService getSearchResultService() {
		return searchResultService;
	}

	public void setSearchResultService(ISearchResultService searchResultService) {
		this.searchResultService = searchResultService;
	}

	public String get() {

		if (getKeyword() != null) {
			List<Result> list = searchResultService
					.getSearchResult(getKeyword());
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("Result", list);
		}

		return SUCCESS;
	}

	public String getkeywords() {
		int totalSize = searchResultService.getTotal();

		List<Keywords> list = searchResultService.getKeyWordsPaging(
				currentPage, totalSize);

		// 从关键词中查询结果数量
		List<Integer> countList = new ArrayList<Integer>();
		for (int i = 0; i < list.size(); i++) {
			int count = searchResultService.getSearchResult(
					list.get(i).getKeywords()).size();

			list.get(i).setCount(count);
		}

		Map request = (Map) ActionContext.getContext().get("request");
		request.put("KeyWords", list);

		return SUCCESS;
	}

}
