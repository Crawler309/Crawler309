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

		<title>查询Lucene</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.tabify.js" type="text/javascript"
			charset="utf-8"></script>

		<link href="images/skin.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
	</head>

	<body>
		<body>
			<table style="margin: 0px 0 0 0" width="100%" height="100%"
				border="0" cellpadding="0" cellspacing="0">
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
										关键词搜索
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
						<table width="98%" height="450px" border="0" align="center"
							cellpadding="0" cellspacing="0">
							<tr>
								<td colspan="4" valign="top">
									&nbsp;
								</td>
								<td>
									&nbsp;
								</td>
								<td valign="top">
									&nbsp;
								</td>
							</tr>

							<tr>
								<td>

								</td>
							</tr>



							<tr>
								<td valign="top" align="center">

									<p align="center">
										Welcome to the Lucene Template application. (This is the
										header)
										<form name="Search" action="Search_get.action" method="post">

											请输入关键词
											<p>
												<input name="keyword" size="44" />
												&nbsp;Search Criteria
											</p>
											<select name="sela" id="sela" class='{required:true}'>
												<option value="1">
													精确查询
												</option>
												<option value="2">
													模糊查询
												</option>

											</select>
											<input type="submit" class='btn btn-primary'>


										</form>
									</p>
									<p align="center">
										Apache Lucene Template WebApp 1.0
									</p>
								</td>
							</tr>


							<tr>
								<td>
									&nbsp;
								</td>
							</tr>

							<tr>
								<td width="100%" colspan="6" valign="top">
									<table width="100%" height="25" border="0" cellpadding="0"
										cellspacing="0">

									</table>
								</td>
							</tr>





							<%------------------------------------------------------------------------------------------------- --%>


							<%-- -------------------------------------------- bottompPagejump ------------------------------------- --%>


							<%-- -------------------------------------------- bottompPagejump ------------------------------------ --%>

						</table>






						<s:iterator value="#request['Result']" id="result">



							<strong><s:property value="#result.Title" /> </strong>
							<br />
							<s:property value="#result.Content" />


						</s:iterator>









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
			</td>
			</table>











		</body>
</html>
