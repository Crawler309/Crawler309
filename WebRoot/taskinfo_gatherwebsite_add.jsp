<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/uniform.default.css">
<link rel="stylesheet" href="css/bootstrap.datepicker.css">
<link rel="stylesheet" href="css/jquery.cleditor.css">
<link rel="stylesheet" href="css/jquery.plupload.queue.css">
<link rel="stylesheet" href="css/jquery.tagsinput.css">
<link rel="stylesheet" href="css/jquery.ui.plupload.css">
<link rel="stylesheet" href="css/chosen.css">
<link rel="stylesheet" href="css/jquery.jgrowl.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="content">
<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head">
							<h3>Form validation</h3>
						</div>
						<div class="box-content">
							<form action="GatherWebSite_add.action" class='validate form-horizontal' method="post">
								<div class="control-group">
									<label for="req" class="control-label">siteName</label>
									<div class="controls">
										<input type="text" name="siteName" id="req" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="pw3" class="control-label">siteType</label>
									<div class="controls">
										<input type="text" name="siteType" id="pw3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="req" class="control-label">siteArea</label>
									<div class="controls">
										<input type="text" name="siteArea" id="req" class='required' >
									</div>
								</div>
								<div class="control-group">
									<label for="req" class="control-label">siteWeight</label>
									<div class="controls">
										<input type="text" name="siteWeight" id="req" class='required' >
									</div>
								</div>
								<div class="control-group">
									<label for="req" class="control-label">siteEnterUrl</label>
									<div class="controls">
										<input type="text" name="siteEnterUrl" id="req" class='required' >
									</div>
								</div>
								<div class="control-group">
									<label for="req" class="control-label">crawlerDepth</label>
									<div class="controls">
										<input type="text" name="crawlerDepth" id="req" class='required' >
									</div>
								</div>
								<div class="control-group">
									<label for="req" class="control-label">filterDomain</label>
									<div class="controls">
										<input type="text" name="filterDomain" id="req" class='required' >
									</div>
								</div>
								<div class="control-group">
									<label for="pw4" class="control-label">userName</label>
									<div class="controls">
										<input type="text" name="userName" id="pw4" class='required' equalTo="#pw3">
<!--										<p class="help-block">Must match 'password'</p>-->
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">password</label>
									<div class="controls">
										<input type="text" name="password" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">remark</label>
									<div class="controls">
										<input type="text" name="remark" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">templateName</label>
									<div class="controls">
										<input type="text" name="templateName" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">taskId</label>
									<div class="controls">
										<input type="text" name="taskId" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">directDomain</label>
									<div class="controls">
										<input type="text" name="directDomain" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">contentLimitFields</label>
									<div class="controls">
										<input type="text" name="contentLimitFields" id="email3" class='required'>
									</div>
								</div>
								<div class="control-group">
									<label for="email3" class="control-label">directUrl</label>
									<div class="controls">
										<input type="text" name="directUrl" id="email3" class='required'>
									</div>
								</div>
					
<%--								<div class="control-group">--%>
<%--									<label for="sela" class="control-label">TaskState</label>--%>
<%--									<div class="controls">--%>
<%--										<select name="sela" id="sela" class='{required:true}'>--%>
<%--											<option value=''></option>	--%>
<%--											<option value="start">开始</option>--%>
<%--											<option value="pause">暂停</option>--%>
<%--											<option value="">停止</option>--%>
<%--											<option value="4">重启</option>--%>
<%--										</select>--%>
<%--									</div>--%>
<%--								</div>--%>
								<div class="form-actions">
									<input type="submit" class='btn btn-primary'>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>	
</body>
</html>