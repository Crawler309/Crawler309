package org.zjicm.crawler.action;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.zjicm.crawler.service.ITaskInfoService;
import org.zjicm.crawler.util.Pager;
import org.zjicm.crawler.vo.Taskinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TaskInfoAction extends ActionSupport {
	private Taskinfo updatetaskinfo;
	private Integer currentPage = 1;
	protected ITaskInfoService taskInfoService;

	
	private Taskinfo taskinfo;

	private Integer taskId;
	private String taskName;
	private String taskDescription;
	private String gatherThead;
	private String infoDb;
	private String sourceFileSave;
	private String sourceFileDb;
	private String infoUpdateServer;
	private String taskBeginTime;
	private String taskRemark;
	private String startTime;
	private String stopTime;
	private String operateType;
	private String totalDataSize;
	private String lastGathDateSize;
	private String taskState;

	public Taskinfo getUpdatetaskinfo() {
		return updatetaskinfo;
	}

	public void setUpdatetaskinfo(Taskinfo updatetaskinfo) {
		this.updatetaskinfo = updatetaskinfo;
	}

	public Taskinfo getTaskinfo() {
		return taskinfo;
	}

	public void setTaskinfo(Taskinfo taskinfo) {
		this.taskinfo = taskinfo;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public ITaskInfoService getTaskInfoService() {
		return taskInfoService;
	}

	public void setTaskInfoService(ITaskInfoService taskInfoService) {
		this.taskInfoService = taskInfoService;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	public String getGatherThead() {
		return gatherThead;
	}

	public void setGatherThead(String gatherThead) {
		this.gatherThead = gatherThead;
	}

	public String getInfoDb() {
		return infoDb;
	}

	public void setInfoDb(String infoDb) {
		this.infoDb = infoDb;
	}

	public String getSourceFileSave() {
		return sourceFileSave;
	}

	public void setSourceFileSave(String sourceFileSave) {
		this.sourceFileSave = sourceFileSave;
	}

	public String getSourceFileDb() {
		return sourceFileDb;
	}

	public void setSourceFileDb(String sourceFileDb) {
		this.sourceFileDb = sourceFileDb;
	}

	public String getInfoUpdateServer() {
		return infoUpdateServer;
	}

	public void setInfoUpdateServer(String infoUpdateServer) {
		this.infoUpdateServer = infoUpdateServer;
	}

	public String getTaskBeginTime() {
		return taskBeginTime;
	}

	public void setTaskBeginTime(String taskBeginTime) {
		this.taskBeginTime = taskBeginTime;
	}

	public String getTaskRemark() {
		return taskRemark;
	}

	public void setTaskRemark(String taskRemark) {
		this.taskRemark = taskRemark;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getStopTime() {
		return stopTime;
	}

	public void setStopTime(String stopTime) {
		this.stopTime = stopTime;
	}

	public String getOperateType() {
		return operateType;
	}

	public void setOperateType(String operateType) {
		this.operateType = operateType;
	}

	public String getTotalDataSize() {
		return totalDataSize;
	}

	public void setTotalDataSize(String totalDataSize) {
		this.totalDataSize = totalDataSize;
	}

	public String getLastGathDateSize() {
		return lastGathDateSize;
	}

	public void setLastGathDateSize(String lastGathDateSize) {
		this.lastGathDateSize = lastGathDateSize;
	}

	public String getTaskState() {
		return taskState;
	}

	public void setTaskState(String taskState) {
		this.taskState = taskState;
	}

	public String get() throws Exception {

		int totalSize = taskInfoService.getTotal();
		Pager pager = new Pager(currentPage, totalSize);
		List TaskInfo = taskInfoService.getTaskInfoPaging(currentPage, pager
				.getPageSize());

		Map request = (Map) ActionContext.getContext().get("request");
		request.put("TaskInfo", TaskInfo);
		request.put("pager", pager);

		return SUCCESS;
	}

	public String look() throws Exception {

		int totalSize = taskInfoService.getTotal();
		List TaskInfo = taskInfoService.getTaskInfoById(getTaskId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("TaskInfo", TaskInfo);

		return SUCCESS;
	}

	public String remove() throws Exception {

		boolean b = taskInfoService.remove(getTaskId());
		if (b == true) {
			return "success_remove";
		} else {
			return "error_remove";
		}
	}

	public String getById() throws Exception {

		List list = taskInfoService.getTaskInfoById(getTaskId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("TaskInfo", list);

		return SUCCESS;
	}

	public String add() throws Exception {
		return SUCCESS;
	}

	public String save() throws Exception {

		boolean b = taskInfoService.saveTaskInfo(taskinfo);
		
		if (b) {

			return "success_save";
		} else {

			return "error_save";
		}
	}

	public String update() throws Exception {

		boolean b = taskInfoService.updateTaskInfoDetail(updatetaskinfo);

		if (b)
			return "success_update";
		else
			return "error_update";
	}

	public String gatherwebsite_add() {
		return SUCCESS;

	}
}
