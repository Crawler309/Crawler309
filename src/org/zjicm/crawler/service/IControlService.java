package org.zjicm.crawler.service;

import org.zjicm.crawler.vo.Taskinfo;

public interface IControlService {

	public boolean TruncateTable(String TableName);

	public boolean ModifyState(String state,int taskID);
}
