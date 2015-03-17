<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-responsive.css">
	<link rel="stylesheet" href="css/jquery.fancybox.css">
	<link rel="stylesheet" href="css/style.css">
<body>

<div class="content">

			<div class="row-fluid">
				<div class="span6">
					<div class="box">
						<div class="box-head">
							<h3>
								待抓队列
							</h3>
						</div>
						<div class="box-content box-nomargin">
							<div class="alert alert-error">
								<strong>这里是已抓的未访问的url信息</strong>
							<s:set name="pager" value="#request.pager" />
			<s:if test="#pager.hasFirst">
				<a href="UnVisitedUrl_get.action?currentPage=1">首页</a>
			</s:if>
			<s:if test="#pager.hasPrevious">
				<a
					href="UnVisitedUrl_get.action?currentPage=<s:property  value="#pager.currentPage-1"/>">上一页</a>
			</s:if>
			<s:if test="#pager.hasNext">
				<a
					href="UnVisitedUrl_get.action?currentPage=<s:property  value="#pager.currentPage+1"/>">下一页</a>
			</s:if>
			<s:if test="#pager.hasLast">
				<a
					href="UnVisitedUrl_get.action?currentPage=<s:property  value="#pager.totalPage"/>">尾页</a>
			</s:if>
			<br>

			当前第
			<s:property value="#pager.currentPage" />
			页, 总共
			<s:property value="#pager.totalPage" />
			页	
							</div>
							
						</div>
					</div>
				</div>

			</div>

		</div>
		



<div class="content">
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head">
							<h3>
								Table with actions in header
							</h3>
							<div class="actions">
								<ul>
									<li class="dropdown">
										<a href="TaskInfo_add.action"
											class='tip btn btn-mini btn-square dropdown-toggle'
											title="Click for more actions" data-toggle="dropdown"> <img
												src="img/icons/fugue/gear.png" alt=""> </a>
										<ul class="dropdown-menu pull-right custom">
											<li>
												<a href="#" class='fugue'><img
														src="img/icons/fugue/printer.png" alt=""> Print
													table</a>
											</li>
											<li class="divider"></li>
											<li>
												<a href="#" class='fugue'><img src="img/icons/fugue/gear.png"
														alt=""> Table settings</a>

											</li>
											<li>
												<a href="#" class='fugue'><img
														src="img/icons/fugue/bin-metal.png" alt=""> Delete
													table</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#" class='btn btn-mini btn-square tip'
											title="Download this table"> <img
												src="img/icons/fugue/arrow-270.png" alt=""> </a>
									</li>
									<li>
										<a href="#" class='btn btn-mini btn-square tip'
											title="Save this table"> <img
												src="img/icons/fugue/disk-black.png" alt=""> </a>
									</li>
								</ul>
							</div>
						</div>
						<div class="box-content box-nomargin">
							<table class='table table-striped dataTable dataTable-noheader dataTable-nofooter table-bordered'>
								<thead>
									<tr>
								
										<th>
											url
										</th>
										<th>
											md5
										</th>
										<th>
											time
										</th>
									</tr>
								</thead>
								<tbody>
							<s:iterator value="#request['UnVisitedUrl']" id="unvisitedurl">
									<tr>

												<td id="Text" width="400">
													<s:property value="#unvisitedurl.Url" />
												</td>
												<td id="Text" width="400">
													<s:property value="#unvisitedurl.Md5" />
												</td>
												<td id="Text" width="400">
													<s:property value="#unvisitedurl.Time" />
												</td>
									</tr>
</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>						
</body>
</html>