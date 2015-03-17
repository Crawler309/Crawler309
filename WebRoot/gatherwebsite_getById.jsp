<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'gatherwebsite_update.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

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
		<form action="GatherWebSite_update.action" method="post"
			class='validate form-horizontal'>
			<s:iterator value="#request['GatherWebSite']" id="gatherwebsite">
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
											修改种子配置
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
																siteId
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteId" id="req"
																	class='SiteId'
																	value="<s:property value="#gatherwebsite.SiteId" />"
																	readonly="readonly">
															</td>



														</tr>

														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																任务编号
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.TaskId" id="req"
																	class='TaskId'
																	value="<s:property value="#gatherwebsite.TaskId" />"
																	readonly="readonly">
																	
																	<input type="hidden" name="TaskId" id="req"
																	class='TaskId'
																	value="<s:property value="#gatherwebsite.TaskId" />"
																	readonly="readonly">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																网站名称
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteName"
																	id="req" class='TaskName'
																	value="<s:property value="#gatherwebsite.SiteName" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																网站类型
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteType"
																	id="pw3" class='SiteType'
																	value="<s:property value="#gatherwebsite.SiteType" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																网站区域
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteArea"
																	id="req" class='GatherThead'
																	value="<s:property value="#gatherwebsite.SiteArea" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																网站权重
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteWeight"
																	id="req" class='InfoDB'
																	value="<s:property value="#gatherwebsite.SiteWeight" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																种子链接
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.SiteEnterUrl"
																	id="req" class='SourceFileSave'
																	value="<s:property value="#gatherwebsite.SiteEnterUrl" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																深度
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.CrawlerDepth"
																	id="req" class='SourceFileDB'
																	value="<s:property value="#gatherwebsite.CrawlerDepth" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																过滤范围
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.FilterDomain"
																	id="req" class='InfoUpdateServer'
																	value="<s:property value="#gatherwebsite.FilterDomain" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																用户名
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.UserName"
																	id="pw4" class='TaskBeginTime' equalTo="#pw3"
																	value="<s:property value="#gatherwebsite.UserName" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																密码
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.Password"
																	id="email3" class='TaskRemark'
																	value="<s:property value="#gatherwebsite.Password" />">
															</td>

														</tr>
														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																标记
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.Remark"
																	id="email3" class='StartTime'
																	value="<s:property value="#gatherwebsite.Remark" />">
															</td>

														</tr>










														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																模板
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
															<textarea rows="7" cols="30" name="gatherwebsite.Template"><s:property value="#gatherwebsite.Template" /></textarea>

																</td>

														</tr>



														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																指示范围
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.DirectDomain"
																	id="email3" class='OperateType'
																	value="<s:property value="#gatherwebsite.directDomain" />">
															</td>

														</tr>



														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																内容限制区域
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text"
																	name="gatherwebsite.ContentLimitFields" id="email3"
																	class='TotalDataSize'
																	value="<s:property value="#gatherwebsite.contentLimitFields" />">
															</td>

														</tr>


														<tr>
															<td width="30%" height="30" align="right"
																class="left_txt2">
																定向url
															</td>
															<td>
																&nbsp;
															</td>
															<td height="30">
																<input type="text" name="gatherwebsite.DirectUrl"
																	id="email3" class='TotalDataSize'
																	value="<s:property value="#gatherwebsite.DirectUrl" />">
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
