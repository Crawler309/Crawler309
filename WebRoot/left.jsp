
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>左侧工具栏</title>
	</head>


	<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<script src="js/prototype.lite.js" type="text/javascript"></script>
	<script src="js/moo.fx.js" type="text/javascript"></script>
	<script src="js/jquery-last.js" type="text/javascript"></script>
	<script src="js/moo.fx.pack.js" type="text/javascript"></script>

	<script type="text/javascript">
	function dqxuanzhong(hh, id) {

		var a = document.getElementById("hid_msgdq").value;
		var name = document.getElementById("username").value;
		var b = new Array();
		for ( var i = 1; i < 9; i++) {
			b[i] = document.getElementById("dq_" + i);
		}
		//            var newaa = a + id + ',';

		var newaa = a;
		var strs = new Array(); //定义一数组
		strs = newaa.split(","); //字符分割     
		var newa = "";
		//var flag = true;
		if (strs.length > 0) {

			for ( var i = 0; i < strs.length; i++) {
				if (strs[i] != "") {
					if (strs[i] == id) {

						//$('#' + hh).addClass("baise"); //点击后的颜色在这里改就好了
						setCss(b[i + 1]);

						//newa = newa + "";
						if (i == 0) {
							top.frames['main'].location.href = "common_State_visit.jsp";
						}
						if (i == 1) {
							top.frames['main'].location.href = "Taskvisit?action=editpackge&username="
									+ name;
						}
						if (i == 2) {
							top.frames['main'].location.href = "TaskInfo_get.action";
						}
						if (i == 3) {
							top.frames['main'].location.href = "search_index.jsp";
						}
						if (i == 4) {
							top.frames['main'].location.href = "Weibo_state_visit.jsp";
						}
						if (i == 5) {
							top.frames['main'].location.href = "Weibo_User_visit.jsp";
						}
						if (i == 6) {
							top.frames['main'].location.href = "Administrator_control_user.jsp";
						}
						if (i == 7) {
							top.frames['main'].location.href = "Weibo_start_visit.jsp";
						}
						//top.frames['main'].location.href ="search_index.jsp";
						// flag = false;
					} else {
						// $('#dq_' + strs[i]).addClass("lanse");
						setCss2(b[i + 1]);
						// window.alert("111");
						// newa = newa + strs[i] + ',';
					}
				}
			}

		}
		//alert($('#hid_msgdq').val());
	}
	//当然也可以用Jquery的$("a").removeCss() 和addCss()来实现
	var setCss = function(ele) {
		// var m = parseInt(ele.style.marginTop);
		ele.style.backgroundImage = "url(images/menu_bg2.gif)";
		ele.style.color = "#006600";
		ele.style.fontWeight = "bold";
	}
	var setCss2 = function(ele) {
		// var m = parseInt(ele.style.marginTop);
		ele.style.backgroundImage = "url(images/menu_bg1.gif)";
		ele.style.color = "#333333";
		ele.style.fontWeight = "normal";
	}
</script>
	<style>
body {
	font: 12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

.lanse {
	background-color: #333333;
}

.baise {
	background-image: url(images/menu_bg2.gif);
}

#container {
	width: 182px;
}

H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;
}

H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}

.content {
	width: 182px;
	height: 26px;
}

.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}

.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}

.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px, 0px, 0px, 0px);
}

.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
	<body>
		<table width="100%" height="280" border="0" cellpadding="0"
			cellspacing="0" bgcolor="#EEF2FB">
			<tr>
				<td width="182" valign="top">
					<div id="container">
						<h1 class="type">
							<a href="javascript:void(0)">采集任务管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<%-- li ID --%>
										<input type="hidden" id="hid_msgdq" value="1,2,3,4,5,6,7,8" />
										<input type="hidden" id="username" value="" />

										<%-- li ID --%>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">

								<li>
									<a href="TaskInfo_get.action" target="mainFrame">任务信息</a>
								</li>

							</ul>
						</div>


						<%--      <h1 class="type"><a href="javascript:void(0)">数据库表格</a></h1>--%>
						<%--      <div class="content">--%>
						<%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
						<%--          <tr>--%>
						<%--            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>--%>
						<%--          </tr>--%>
						<%--        </table>--%>
						<%--        <ul class="MM">--%>
						<%--        --%>
						<%--        --%>
						<%----%>
						<%--           <li ><a id="dq_3" href="WebContInfo_get.action" target="mainFrame">WebContInfo</a></li>--%>
						<%--           <li ><a id="dq_4" href="VisitedUrl_get.action" target="mainFrame">VisitedUrl</a></li>--%>
						<%--               <li ><a id="dq_4" href="UnVisitedUrl_get.action" target="mainFrame">UnVisitedUrl</a></li>--%>
						<%--        </ul>--%>
						<%--        --%>
						<%----%>
						<%--      </div>--%>
						<h1 class="type">
							<a href="javascript:void(0)">Lucene管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a id="dq_5" href="LuceneServer_get.action" target="mainFrame">配置Lucene</a>
								</li>

								<li>
									<a id="dq_8" href="Search_getkeywords.action"
										target="mainFrame">查询关键词索引 </a>
								</li>
								<li>
									<a id="dq_6" href="Search_get.action" target="mainFrame">自定义查询</a>
								</li>
							</ul>

						</div>
						<h1 class="type">
							<a href="Control_get.action" target="mainFrame">控制台</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>

						</div>

						<h1 class="type">
							<a href="javascript:void(0)">用户管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>

							<ul class="MM">


								<li>
									<a id="dq_8" href="User_getById.action?ID=${username}"
										target="mainFrame">修改密码 </a>
								</li>
								<li>
									<a id="dq_6" href="User_logout.action" target="mainFrame">注销用户</a>
								</li>
							</ul>

						</div>
					</div>

					<script type="text/javascript">
	var contents = document.getElementsByClassName('content');
	var toggles = document.getElementsByClassName('type');

	var myAccordion = new fx.Accordion(toggles, contents, {
		opacity : true,
		duration : 400
	});
	myAccordion.showThisHideOpen(contents[0]);
</script>
				</td>
			</tr>
		</table>


	</body>








</html>