package org.zjicm.crawler.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.zjicm.crawler.service.ILuceneServerService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LuceneServerAction extends ActionSupport {

	private Integer id;
	private String luceneName;
	private String luceneIp;
	private Integer lucenePort;
	private String remark;
	private Integer totalMemory;
	private Integer usedMemory;
	private Timestamp firstTime;
	private Timestamp lastTime;
	private Integer ifinsert;
	protected ILuceneServerService luceneServerService;

	public ILuceneServerService getLuceneServerService() {
		return luceneServerService;
	}

	public void setLuceneServerService(ILuceneServerService luceneServerService) {
		this.luceneServerService = luceneServerService;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLuceneName() {
		return luceneName;
	}

	public void setLuceneName(String luceneName) {
		this.luceneName = luceneName;
	}

	public String getLuceneIp() {
		return luceneIp;
	}

	public void setLuceneIp(String luceneIp) {
		this.luceneIp = luceneIp;
	}

	public Integer getLucenePort() {
		return lucenePort;
	}

	public void setLucenePort(Integer lucenePort) {
		this.lucenePort = lucenePort;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getTotalMemory() {
		return totalMemory;
	}

	public void setTotalMemory(Integer totalMemory) {
		this.totalMemory = totalMemory;
	}

	public Integer getUsedMemory() {
		return usedMemory;
	}

	public void setUsedMemory(Integer usedMemory) {
		this.usedMemory = usedMemory;
	}

	public Timestamp getFirstTime() {
		return firstTime;
	}

	public void setFirstTime(Timestamp firstTime) {
		this.firstTime = firstTime;
	}

	public Timestamp getLastTime() {
		return lastTime;
	}

	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}

	public Integer getIfinsert() {
		return ifinsert;
	}

	public void setIfinsert(Integer ifinsert) {
		this.ifinsert = ifinsert;
	}

	public String get() {
		List list = luceneServerService.getServer();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("WebContInfo", list);

		return SUCCESS;
	}

}
