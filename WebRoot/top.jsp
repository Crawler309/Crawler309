<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="images/skin.css" rel="stylesheet" type="text/css">

<body leftmargin="0" topmargin="0">
<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="150"><img src="images/logo.gif" width="750" height="150"></td>
    <td width="39%" valign="top" height="150"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">管理员：${UserName}<b></b> 您好,感谢登陆使用！</td>
        <td width="22%"><a href="#" target="_self" onClick="window.open('User_logout.action','_parent')"><img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="38" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>