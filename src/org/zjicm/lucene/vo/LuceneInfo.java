package org.zjicm.lucene.vo;

import java.sql.Timestamp;

/**
 * LuceneInfo entity. @author MyEclipse Persistence Tools
 */

public class LuceneInfo implements java.io.Serializable {

	// Fields

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

	// Constructors

	/** default constructor */
	public LuceneInfo() {
	}

	/** minimal constructor */
	public LuceneInfo(String luceneName, String luceneIp, Integer lucenePort,
			Integer ifinsert) {
		this.luceneName = luceneName;
		this.luceneIp = luceneIp;
		this.lucenePort = lucenePort;
		this.ifinsert = ifinsert;
	}

	/** full constructor */
	public LuceneInfo(String luceneName, String luceneIp, Integer lucenePort,
			String remark, Integer totalMemory, Integer usedMemory,
			Timestamp firstTime, Timestamp lastTime, Integer ifinsert) {
		this.luceneName = luceneName;
		this.luceneIp = luceneIp;
		this.lucenePort = lucenePort;
		this.remark = remark;
		this.totalMemory = totalMemory;
		this.usedMemory = usedMemory;
		this.firstTime = firstTime;
		this.lastTime = lastTime;
		this.ifinsert = ifinsert;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLuceneName() {
		return this.luceneName;
	}

	public void setLuceneName(String luceneName) {
		this.luceneName = luceneName;
	}

	public String getLuceneIp() {
		return this.luceneIp;
	}

	public void setLuceneIp(String luceneIp) {
		this.luceneIp = luceneIp;
	}

	public Integer getLucenePort() {
		return this.lucenePort;
	}

	public void setLucenePort(Integer lucenePort) {
		this.lucenePort = lucenePort;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getTotalMemory() {
		return this.totalMemory;
	}

	public void setTotalMemory(Integer totalMemory) {
		this.totalMemory = totalMemory;
	}

	public Integer getUsedMemory() {
		return this.usedMemory;
	}

	public void setUsedMemory(Integer usedMemory) {
		this.usedMemory = usedMemory;
	}

	public Timestamp getFirstTime() {
		return this.firstTime;
	}

	public void setFirstTime(Timestamp firstTime) {
		this.firstTime = firstTime;
	}

	public Timestamp getLastTime() {
		return this.lastTime;
	}

	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}

	public Integer getIfinsert() {
		return this.ifinsert;
	}

	public void setIfinsert(Integer ifinsert) {
		this.ifinsert = ifinsert;
	}

}