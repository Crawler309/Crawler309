package org.zjicm.crawler.vo;

/**
 * Filterurl entity. @author MyEclipse Persistence Tools
 */

public class Filterurl implements java.io.Serializable {

	// Fields

	private Integer id;
	private String filterUrl;
	private String md5;

	// Constructors

	/** default constructor */
	public Filterurl() {
	}

	/** full constructor */
	public Filterurl(String filterUrl, String md5) {
		this.filterUrl = filterUrl;
		this.md5 = md5;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilterUrl() {
		return this.filterUrl;
	}

	public void setFilterUrl(String filterUrl) {
		this.filterUrl = filterUrl;
	}

	public String getMd5() {
		return this.md5;
	}

	public void setMd5(String md5) {
		this.md5 = md5;
	}

}