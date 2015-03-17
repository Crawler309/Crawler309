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

		<title>My JSP 'Search_getKeyWordsAndCount.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<link rel="stylesheet" type="text/css" href="/xiangmu/UI/style.css" />
	<link href='http://fonts.googleapis.com/css?family=Belgrano'
		rel='stylesheet' type='text/css'>
	<link href="images/skin.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.tabify.js"
		charset="gb2312"></script>

	<script src="js/statefresh.js" type="text/javascript" charset="gb2312"></script>
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
									查询关键词索引
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
													关键词
												</th>
												<th height="25" background="images/news-title-bg.gif"
													align="center" class="left_txt">
													数量
												</th>

											</TR>

										</thead>

										<TBODY>
											<s:iterator value="#request['KeyWords']" id="keyWords">
												<tr>
													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#keyWords.Keywords" />
													</td>

													<td height="25" bgcolor="#FAFBFC" class="left_txt"
														align="center">
														<s:property value="#keyWords.Count" />
													</td>

												</tr>
											</s:iterator>
										</TBODY>


									</TABLE>


								</Td>
						</TR>
						<!-- ------------------------------------------------------------------------------------------- -->
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
