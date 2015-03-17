<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>

	</head>
	
	
	<link href="images/skin.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="UI/dialog.css" />
	<link href='http://fonts.googleapis.com/css?family=Belgrano'
		rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.tabify.js" type="text/javascript"
		charset="utf-8"></script>



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
	<body>
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
									添加任务
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
				<td height="71" valign="middle" background="images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="740px" height="138" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td valign="top">
								<form action="TaskInfo_save.action"
												class='validate form-horizontal'>
								<table width="98%" border="0" align="center" cellpadding="0"
									cellspacing="0">
								
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

													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															TaskName
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.TaskName" id="req"
											class='TaskName'>
														</td>



													</tr>

													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															TaskDescription
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.TaskDescription" id="pw3"
											class='TaskDescription'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															GatherThead
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.GatherThead" id="req"
											class='GatherThead'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															InfoDB
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.InfoDB" id="req"
											class='InfoDB'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															SourceFileSave
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.SourceFileSave" id="req"
											class='SourceFileSave'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
														SourceFileDB
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.SourceFileDB" id="req"
											class='SourceFileDB'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															InfoUpdateServer
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.InfoUpdateServer" id="req"
											class='InfoUpdateServer'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
														TaskBeginTime
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.TaskBeginTime" id="pw4"
											class='TaskBeginTime' equalTo="#pw3">
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
														TaskRemark
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.TaskRemark" id="email3"
											class='TaskRemark'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															StartTime
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.StartTime" id="email3"
											class='StartTime'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															StopTime
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="taskinfo.StopTime" id="email3"
											class='StopTime'>
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															OperateType
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.OperateType" id="email3"
											class='OperateType'>
														</td>

													</tr>
													
													
													
																<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															TotalDataSize
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.TotalDataSize" id="email3"
											class='TotalDataSize'>
														</td>

													</tr>
													
													
													
																			<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															LastGathDateSize
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<input type="text" name="taskinfo.LastGathDateSize"
											id="email3" class='LastGathDateSize'>
														</td>

													</tr>
													
													
																					<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															TaskState
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
														<select name="taskinfo.TaskState" id="sela"
											class='{required:true}'>
											<option value=''></option>
											<option value="start">
												开始
											</option>
											<option value="pause">
												暂停
											</option>
											<option value="">
												停止
											</option>
											<option value="4">
												重启
											</option>
										</select>
														</td>

													</tr>
													
													
													
													</td>


												</table>
										
										</td>

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
									<tr>

									</tr>
									
								</table>
									</form>
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
	
	

		

	</body>
</html>