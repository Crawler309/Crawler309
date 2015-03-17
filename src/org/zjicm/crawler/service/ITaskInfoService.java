package org.zjicm.crawler.service;

import java.util.List;

import org.zjicm.crawler.vo.Taskinfo;

public interface ITaskInfoService {
	public List getTaskInfo();

	public List getTaskInfoPaging(int currentPage, int pageSize);
	public List getTaskInfoById(int TaskId);
	public int getTotal();
	public Boolean saveTaskInfo(Taskinfo taskinfo);
	public Boolean updateTaskInfoDetail(Taskinfo updatetaskinfo);
	public Boolean remove(int Id);
}
