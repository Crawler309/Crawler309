package org.zjicm.crawler.service.impl;

import org.zjicm.crawler.dao.IControlDao;
import org.zjicm.crawler.service.IControlService;
import org.zjicm.crawler.vo.Taskinfo;

public class ControlService implements IControlService {
	protected IControlDao controlDao;

	public IControlDao getControlDao() {
		return controlDao;
	}

	public void setControlDao(IControlDao controlDao) {
		this.controlDao = controlDao;
	}

	public boolean TruncateTable(String TableName) {

		return controlDao.TruncateTable(TableName);
	}

	public boolean ModifyState(String state ,int taskId) {
		return controlDao.ModifyState(state,taskId);
	}

}
