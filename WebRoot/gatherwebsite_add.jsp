<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<head>

		<base target="_self" />

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
									添加种子任务
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
								<form action="GatherWebSite_save.action?siteId='${siteId}'"
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
															任务编号
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text" name="gatherwebsite.taskId"
																value="${taskId}" size="30" readonly="readonly" />
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
															<input type="text" name="gatherwebsite.siteName"
																size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.siteType" size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.siteArea" size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.siteWeight" size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.siteEnterUrl"
																size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.crawlerDepth"
																size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.filterDomain"
																size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.userName" size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.password" size="30" />
														</td>

													</tr>
													<tr>
														<td width="30%" height="30" align="right"
															class="left_txt2">
															标志
														</td>
														<td>
															&nbsp;
														</td>
														<td height="30">
															<input type="text"
																name="gatherwebsite.gatherwebsite.remark" size="30" />
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
															<input type="text"
																name="gatherwebsite.gatherwebsite.template" size="30" />
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