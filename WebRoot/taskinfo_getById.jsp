<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
<script src="js/jquery.tabify.js" type="text/javascript"
		charset="utf-8">
</script>
	<link href="images/skin.css" rel="stylesheet" type="text/css" />

	<link href='http://fonts.googleapis.com/css?family=Belgrano'
		rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="/xiangmu/UI/dialog.css" />
	<script src="js/jquery.min.js">
</script>
	<style type="text/css">
<!--
.textiploghidden {
	BORDER-RIGHT: 1px;
	BORDER-TOP: 1px;
	FONT-SIZE: 15px;
	BORDER-LEFT: 1px;
	WIDTH: 45px;
	COLOR: #000000;
	BORDER-BOTTOM: 1px;
	FONT-FAMILY: sans-serif;
	HEIGHT: 16px;
	border: 1 solid #000000;
}

.textipinput {
	BORDER-RIGHT: 1px;
	BORDER-TOP: 1px;
	FONT-SIZE: 12px;
	BORDER-LEFT: 1px;
	WIDTH: 45px;
	COLOR: #000000;
	BORDER-BOTTOM: 1px;
	FONT-FAMILY: sans-serif;
	HEIGHT: 17px;
	BACKGROUND-COLOR: #ffffff;;
	TEXT-ALIGN: center
}
-->
</style>
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>


	<body>


		<form action="TaskInfo_update.action" class='validate form-horizontal'>
			<s:iterator value="#request['TaskInfo']" id="taskinfo">
				<table style="margin: 10px 0 0 0" width="600px" border="0"
					cellpadding="0" cellspacing="0">
					<tr>
						<td width="17" height="29" valign="top"
							background="images/mail_leftbg.gif">
							<img src="images/left-top-right.gif" width="17" height="29" />
						</td>
						<td width="600" height="29" valign="top"
							background="images/content-bg.gif">
							<table width="100%" height="31" border="0" cellpadding="0"
								cellspacing="0" class="left_topbg" id="table2">
								<tr>
									<td height="31">
										<div class="titlebt">
											任务参数设置
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td width="16" valign="top" background="images/mail_rightbg.gif">
							<img src="images/nav-right-bg.gif" width="16" height="29" />
						</td>
					</tr>
					<tr>
						<td height="71" valign="middle"
							background="images/mail_leftbg.gif">
							&nbsp;
						</td>
						<td valign="top" bgcolor="#F7F8F9">
							<table width="740px" height="138" border="0" cellpadding="0"
								cellspacing="0">

								<tr>
									<td valign="top">
										<table width="98%" border="0" align="center" cellpadding="0"
											cellspacing="0">


											</tr>

											<tr>
												<td>
													<table width="550" height="20" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td>
																&nbsp;&nbsp;&nbsp;&nbsp;
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td>
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" colspan="3">
														<form name=form1 accept-charset="gb2312"
															action="Taskalloctaion?action=insert&username="
															method="post">
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	TaskId：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.TaskId"
																		id="req" class='TaskName'
																		value="<s:property value="#taskinfo.TaskId" />"
																		size="30" readonly="readonly" />
																</td>



															</tr>

															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	TaskName：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.TaskName"
																		size="30"
																		value="<s:property value="#taskinfo.TaskName" />" />
																</td>

															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	TaskDescription：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text"
																		name="updatetaskinfo.TaskDescription" size="30"
																		value="<s:property value="#taskinfo.TaskDescription" />" />
																</td>

															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	GatherThead：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.GatherThead"
																		size="30"
																		value="<s:property value="#taskinfo.GatherThead" />" />
																</td>

															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	InfoDB：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.InfoDB"
																		id="req" class='InfoDB'
																		value="<s:property value="#taskinfo.InfoDB" />"
																		size="30" />
																</td>
																<td height="30" class="left_txt">
																	..
																</td>
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	SourceFileSave：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.SourceFileSave"
																		id="req" class='SourceFileSave'
																		value="<s:property value="#taskinfo.SourceFileSave" />"
																		size="30" />
																</td>
																<td height="30" class="left_txt">
																	..
																</td>
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	InfoUpdateServer：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text"
																		name="updatetaskinfo.InfoUpdateServer" id="req"
																		class='InfoUpdateServer'
																		value="<s:property value="#taskinfo.InfoUpdateServer" />"
																		size="30" />
																</td>
																<td height="30" class="left_txt">
																	..
																</td>
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	TaskBeginTime：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.TaskBeginTime"
																		id="pw4" class='TaskBeginTime' equalTo="#pw3"
																		value="<s:property value="#taskinfo.TaskBeginTime" />"
																		size="30" />
																</td>
																<td height="30" class="left_txt">
																	..
																</td>
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	TaskRemark：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.TaskRemark"
																		id="email3" class='TaskRemark'
																		value="<s:property value="#taskinfo.TaskRemark" />"
																		size="30" />
																</td>
																<td height="30" class="left_txt">
																	..
																</td>
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	StartTime：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.StartTime"
																		id="email3" class='StartTime'
																		value="<s:property value="#taskinfo.StartTime" />"
																		size="30" />
																</td>
															
															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	StopTime：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.StopTime"
																		id="email3" class='StopTime'
																		value="<s:property value="#taskinfo.StopTime" />"
																		size="30" />
																</td>

															</tr>
															<tr>
																<td width="30%" height="30" align="right"
																	class="left_txt2">
																	OperateType：
																</td>
																<td>
																	&nbsp;
																</td>
																<td height="30">
																	<input type="text" name="updatetaskinfo.OperateType"
																		id="email3" class='OperateType'
																		value="<s:property value="#taskinfo.OperateType" />"
																		size="30" />
																</td>

															</tr>
															</td>

															</tr>
													</table>

												</td>

											</tr>

											<tr>

											</tr>
											<tr>
												<td>

													<input type="submit" value="保存"
														style="margin: 5px 5px 0 300px;" class="newbutton"
														onclick="checkForm();" />
													<input type="button" value="取消"
														style="margin: 5px 5px 0 10px;" class="newbutton"
														onclick="window.close()" />

												</td>

											</tr>
											<tr>

											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td background="images/mail_rightbg.gif">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td valign="middle" background="images/mail_leftbg.gif">
							<img src="images/buttom_left2.gif" width="17" height="17" />
						</td>
						<td height="17" valign="top" background="images/buttom_bgs.gif">
							<img src="images/buttom_bgs.gif" width="17" height="17" />
						</td>
						<td background="images/mail_rightbg.gif">
							<img src="images/buttom_right2.gif" width="16" height="17" />
						</td>
					</tr>
				</table>

			</s:iterator>
		</form>

	</body>
</html>