package org.zjicm.crawler.action;

import org.zjicm.crawler.service.IControlService;

import com.opensymphony.xwork2.ActionSupport;

public class ControlAction extends ActionSupport {

	private String state;
	private String tableName;
	private int taskID;

	public int getTaskID() {
		return taskID;
	}

	public void setTaskID(int taskID) {
		this.taskID = taskID;
	}


	protected IControlService controlService;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public IControlService getControlService() {
		return controlService;
	}

	public void setControlService(IControlService controlService) {
		this.controlService = controlService;
	}

	public String get() {
		return "success_get";

	}

	public String truncate() {
		if (getTableName().equals("all")) {
			controlService.TruncateTable("webcontinfo");
			controlService.TruncateTable("visitedurl");
			controlService.TruncateTable("unvisitedurl");

		} else {
			controlService.TruncateTable(getTableName());

		}

		return "truncate";

	}

	public String modify() {

		if (controlService.ModifyState(getState(), getTaskID())) {
			return "modify_success";
		} else {
			return "modify_fail";
		}

	}

}
