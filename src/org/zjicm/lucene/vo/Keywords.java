package org.zjicm.lucene.vo;

/**
 * Keywords entity. @author MyEclipse Persistence Tools
 */

public class Keywords implements java.io.Serializable {

	// Fields

	private Integer id;
	private String keywords;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	private int count;

	// Constructors

	/** default constructor */
	public Keywords() {
	}

	/** full constructor */
	public Keywords(String keywords) {
		this.keywords = keywords;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

}