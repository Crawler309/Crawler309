<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>309舆情控制台主页</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

	</head>



	<%--	<frameset rows="82,*" frameborder="yes" border="0" framespacing="0"--%>
	<%--		bordercolor="#FF0000">--%>
	<%--		<frame src="index_top.action" name="topFrame" />--%>
	<%--		<frameset cols="250,*" frameborder="yes" border="0" framespacing="0"--%>
	<%--			bordercolor="#FF0000">--%>
	<%--			<frame src="index_left.action" name="left" scrolling="auto"--%>
	<%--				noresize="noresize" id="left" title="left" />--%>
	<%--			<frame src="TaskInfo_get.action" name="mainFrame" />--%>
	<%--		</frameset>--%>
	<%--	</frameset>--%>
	<%--	<noframes></noframes>--%>

	<frameset rows="150,*" frameborder="NO" border="0" framespacing="0">
		<frame src="index_top.action" noresize="noresize" frameborder="NO"
			name="topFrame" scrolling="no" marginwidth="0" marginheight="0"
			target="main" />
		<frameset cols="250,*" rows="610,*" id="frame">
			<frame src="index_left.action" name="left" noresize="noresize"
				marginwidth="0" marginheight="0" frameborder="0" scrolling="no" />
			<frame src="TaskInfo_get.action" name="mainFrame" marginwidth="0"
				marginheight="0" frameborder="0" scrolling="auto" />
		</frameset>
		<noframes>
			<body></body>
		</noframes>
	</frameset>
</html>
