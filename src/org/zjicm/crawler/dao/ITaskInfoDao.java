package org.zjicm.crawler.dao;

import java.util.List;

import org.zjicm.crawler.vo.Taskinfo;

public interface ITaskInfoDao {
	public List getTaskInfo();
	public List getTaskInfoPading(int currentPage, int pageSize);
    public List getTaskInfoById(int TaskId);
	public int getTotal();
	public Boolean saveTaskInfo(Taskinfo taskinfo);
	public Boolean updateTaskInfoDetail(Taskinfo updatetaskinfo);
	public Boolean remove(int Id);
}
