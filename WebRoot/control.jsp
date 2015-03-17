<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap-responsive.css">
		<link rel="stylesheet" href="css/jquery.fancybox.css">
		<link rel="stylesheet" href="css/style.css">


		<title>control</title>
	</head>
	<body>
		

					<form name="TableName" action="Control_truncate.action"
						method="post">
						<select name="TableName">
							<option value="all">
								全部
							</option>
							<option value="webcontinfo">
								webcontinfo
							</option>
							<option value="filterurl">
								filterurl
							</option>
							<option value="unvisitedurl">
								unvisitedurl
							</option>
							<option value="visitedurl">
								visitedurl
							</option>
						</select>

						<input type="submit" id="btn1" value="清除表格数据">

					</form>

	




	</body>
</html>