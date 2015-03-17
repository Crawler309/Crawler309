package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.ITaskInfoDao;
import org.zjicm.crawler.dao.IWebContInfoDao;
import org.zjicm.crawler.service.ITaskInfoService;
import org.zjicm.crawler.vo.Taskinfo;

public class TaskInfoService implements ITaskInfoService {
	protected ITaskInfoDao taskInfoDao;

	public ITaskInfoDao getTaskInfoDao() {
		return taskInfoDao;
	}

	public void setTaskInfoDao(ITaskInfoDao taskInfoDao) {
		this.taskInfoDao = taskInfoDao;
	}

	public List getTaskInfo() {
		return taskInfoDao.getTaskInfo();
	}

	public List getTaskInfoPaging(int currentPage, int pageSize) {
		return taskInfoDao.getTaskInfoPading(currentPage, pageSize);
	}

	public int getTotal() {
		return taskInfoDao.getTotal();
	}

	public List getTaskInfoById(int TaskId) {
		return taskInfoDao.getTaskInfoById(TaskId);
	}

	public Boolean saveTaskInfo(Taskinfo taskinfo) {
		return taskInfoDao.saveTaskInfo(taskinfo);
	}

	public Boolean updateTaskInfoDetail(Taskinfo updatetaskinfo) {
		return taskInfoDao.updateTaskInfoDetail(updatetaskinfo);
	}

	public Boolean remove(int Id) {
		return taskInfoDao.remove(Id);
	}

}
