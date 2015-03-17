package org.zjicm.crawler.dao;


public interface IControlDao {
	public boolean TruncateTable(String TableName);

	public boolean ModifyState(String state, int taskId);
}
