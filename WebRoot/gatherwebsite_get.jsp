<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="/xiangmu/UI/style.css" />
		<link href='http://fonts.googleapis.com/css?family=Belgrano'
			rel='stylesheet' type='text/css'>
		<link href="images/skin.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.tabify.js"
			charset="gb2312"></script>

		<script src="js/statefresh.js" type="text/javascript" charset="gb2312"></script>

	</head>

	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
	min-heigh: 800px;
	height: auto !important;
	height: 800px;
	overflow: visible;
}
-->
</style>
	<body>



		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="images/mail_leftbg.gif">
					<img src="images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt">
									查看任务详情
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
				<td valign="middle" background="images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="98%" height="480px" border="0" align="center"
						cellpadding="0" cellspacing="0">
						<tr style="height: 15px">
							<td valign="top">
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
							<td valign="top">
								&nbsp;
							</td>
						</tr>
						<TR>
							<td>
								<TD height="auto" style="width: 1150px" colspan="4" valign="top">

									<TABLE width=98% height="auto" border="1" cellspacing="0"
										cellpadding="0" align="center">

										<thead>
											<TR>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													任务编号
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													网站名称
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													网站类型
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													网站区域
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													网站权重
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													种子链接
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													深度
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													Action
												</th>

											</TR>

										</thead>

										<TBODY>
											<s:iterator value="#request['GatherWebSite']"
												id="gatherwebsite">
												<tr>

													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.TaskId" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.SiteName" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.SiteType" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.SiteArea" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.SiteWeight" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.SiteEnterUrl" />
													</td>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#gatherwebsite.CrawlerDepth" />
													</td>
													<td class='actions'>


														<a
															href="GatherWebSite_remove.action?SiteId=<s:property value="#gatherwebsite.SiteId" />&TaskId=<s:property value="#gatherwebsite.TaskId" />">
															删除 </a>



														<a
															href="GatherWebSite_getById.action?SiteId=<s:property value="#gatherwebsite.SiteId" />">
															修改</a>



													</td>
												</tr>




											</s:iterator>
										</TBODY>


									</TABLE>

								
								</Td>
						</TR>
						<tr>
							<td height="40" colspan="4">
								<table width="100%" height="1" border="0" cellpadding="0"
									cellspacing="0" bgcolor="#CCCCCC">
									<tr>
										<td></td>
									</tr>
								</table>
							</td>
						</tr>
						<!-- PP -->
						<tr>
							<td width="2%">
								&nbsp;
							</td>
							<td width="51%" height="10">
							</td>
							<td>
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>
				</td>

				<td background="images/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td valign="bottom" background="images/mail_leftbg.gif">
					<img src="images/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="images/buttom_bgs.gif">
					<img src="images/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="images/mail_rightbg.gif">
					<img src="images/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>


	</body>
</html>