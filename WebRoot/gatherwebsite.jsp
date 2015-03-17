<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="/xiangmu/UI/style.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css'>
<link href="images/skin.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tabify.js" charset="UTF-8"></script>
function checkForm()
{	var w = window.confirm("确认启动");
       
 
	if(w)
		{
		return true;
		
		}
	else
		{return false;
		}
}
function checkForm1()
{	var w = window.confirm("确认关闭");
       
 
	if(w)
		{
		return true;
		
		}
	else
		{return false;
		}
}
function checkboxstart() {
	
	var arr=[];
	var num =document.getElementById("Isize").value;	
	var name=document.getElementById("loginname").value;
	//window.alert(num+"ss");
	var n=0;
	for(var i=0;i<num;i++)
		{var a = document.getElementById("checkbox"+i).value;
		
		var b= document.getElementById("checkbox"+i);
		
		if(b.checked)
			{
		arr[n]=a;
		
		n++;
			}
		else
		{continue;}
		}
	
	 	if(n>0){
	 		  if(checkForm()){
	 			 
	  location.href="TaskInfo?action=start&p="+arr+"&username="+name;}
	 	}
	 	else
	 		{window.alert("未选择对象");}
}
function checkboxstop() {
	var arr=[];
	var num = document.getElementById("Isize").value;
	var name=document.getElementById("loginname").value;
	var n=0;
	for(var i=0;i<num;i++)
		{var a = document.getElementById("checkbox"+i).value;
		var b= document.getElementById("checkbox"+i);
		if(b.checked)
			{
		arr[n]=a;
		n++;
			}
		else
		{continue;}
			
		}
	if(n>0){
	 		  if(checkForm1()){
	 			 location.href="TaskInfo?action=stop&p="+arr+"&username="+name;
	 			 }
	 			 	}
	else
		{window.alert("未选择对象");}
	 
	 	
	 
}
function openwindow(id){ 
	//window.alert(id);
	var name = document.getElementById("name"+id).value;
	//window.alert(name); 
	var url="TaskInfo?action=controlpackge&username="+name;
	window.showModalDialog(url,window,'dialogTop:150px;dialogHeight:500px;dialogWidth:800px;center:yes;location=no;resizable=no; scroll:off;help:no;status:no');
}
 


</script>
<script src="js/statefresh.js" type="text/javascript" charset="gb2312"></script>
 
 <!-- --------------------------------------------------------------------- -->

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
	min-heigh:800px; height:auto !important; 
	height:800px;   

    overflow:visible;  
}
-->
</style>
</head>
<body>
	<div class="content">

			<div class="row-fluid">
				<div class="span6">
					<div class="box">
						<div class="box-head">
							<h3>
								Gatherwebsite
							</h3>
						</div>
						<div class="box-content box-nomargin">
							<div class="alert alert-error">
							<strong>这里是gatherwebsite内容信息</strong>
<s:set name="pager" value="#request.pager" />
			<s:if test="#pager.hasFirst">
				<a href="browseGatherWebSitePaging.action?currentPage=1">首页</a>
			</s:if>
			<s:if test="#pager.hasPrevious">
				<a
					href="browseGatherWebSitePaging.action?currentPage=<s:property  value="#pager.currentPage-1"/>">上一页</a>
			</s:if>
			<s:if test="#pager.hasNext">
				<a
					href="browseGatherWebSitePaging.action?currentPage=<s:property  value="#pager.currentPage+1"/>">下一页</a>
			</s:if>
			<s:if test="#pager.hasLast">
				<a
					href="browseGatherWebSitePaging.action?currentPage=<s:property  value="#pager.totalPage"/>">尾页</a>
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
		
		
		<table width="98%" height="480px" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr style="height:15px">
        <td  valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
 <!-- ------------------------------------------------------------------------------------------ --> 
      <TR>
      <td >
      <TD height="auto" style="width:1150px" colspan="4" valign="top">
      
        <TABLE width=98% height="auto"border="1" cellspacing="0" cellpadding="0" align="center" >
          
          <thead>     
                 <TR>
                     <th height="25" width="27" background="images/news-title-bg.gif">&nbsp;</td>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">任务编号</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">任务名称</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">任务状态</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">最近活动采集数据量</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">累计采集数据量</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">最近任务启动时间</th>
                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">最近任务结束时间</th>

                     <th height="25" background="images/news-title-bg.gif" align="center" class="left_txt">任务详情<font color="#FFFFFF" class="left_ts"><b></b></th>
                
                </TR>
                
           </thead>     
                
           <TBODY> 
               <s:iterator value="#request['GatherWebSite']" id="gatherwebsite">
                <tr >
                <td><input type="hidden" id="Isize" name="Isize"></input>
	            <input type="hidden" id="loginname" name="loginname"></input>
	            </td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >没有设置任务</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                <td height="25" bgcolor="#FAFBFC" class="left_txt" align="center" >&nbsp;</td>
                </tr>
               
               <TR>
               <TD height="25" bgcolor="#FAFBFC" align="center"><input type="checkbox" />
               <s:property value="#gatherwebsite.SiteId" />
               </TD>
               <TD height="25" bgcolor="#FAFBFC" align="center" class="left_txt">
               <s:property value="#gatherwebsite.SiteEnterURL" />
               </TD>
               <TD height="25" bgcolor="#FAFBFC" align="center" class="left_txt">
               <s:property value="#gatherwebsite.CrawlerDepth" />
               </TD>
               
               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">已停止
               <s:property value="#gatherwebsite.FilterDomain" />
               </TD>
            
               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">执行中
               <s:property value="#gatherwebsite.Remark" />
               </TD> 

               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">停止
               <s:property value="#gatherwebsite.TemplateName" />
               </TD> 
             
               <td height="25" align="center" bgcolor="#FAFBFC"  class="left_txt">启动
               <s:property value="#gatherwebsite.DirectDomain" />
               </td>
      
               <TD align="center" height="25" bgcolor="#FAFBFC" class="left_txt">
               <s:property value="#gatherwebsite.ContentLimitFields" />
               </TD>
               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">
               <s:property value="#gatherwebsite.DirectUrl" />
               </TD>
               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">
               
               </TD>
               <TD height="25" align="center" bgcolor="#FAFBFC" class="left_txt">
               
               </TD>
  
											<tr>
											<td id="Text" width="400">
													
												</td>
												<td id="Text" width="400">
													<s:property value="#gatherwebsite.SiteName" />
												</td>
												<td id="Text" width="400">
													<s:property value="#gatherwebsite.SiteEnterURL" />
												</td>
												<td id="Text" width="400">
													<s:property value="#gatherwebsite.CrawlerDepth" />
												</td>
													<td id="Text" width="400">
													<s:property value="#gatherwebsite.FilterDomain" />
												</td>
												<td id="Text" width="400">
													<s:property value="#gatherwebsite.Remark" />
												</td>
													<td id="Text" width="400">
													<s:property value="#gatherwebsite.TemplateName" />
												</td>
												<td id="Text" width="400">
													<s:property value="#gatherwebsite.DirectDomain" />
												</td>
													<td id="Text" width="400">
													<s:property value="#gatherwebsite.ContentLimitFields" />
												</td>
													<td id="Text" width="400">
													<s:property value="#gatherwebsite.DirectUrl" />
												</td>
<td class='actions'>
										<div class="btn-group">
									
											<a href="gatherwebsite.jsp?id=<s:property value="#gatherwebsite.SiteId" />" class='btn btn-mini tip deleteRow' title="Remove">
												<img src="img/icons/fugue/cross.png" alt=""> </a>
												<a href="addGatherwebsiteDetail.jspid=<s:property value="#gatherwebsite.SiteId" />" class='btn btn-mini tip' title="Add">
													<img src="img/icons/fugue/magnifier.png" alt="">
												</a>
												<a href="GatherWebSite.action?id=<s:property value="#gatherwebsite.SiteId" />" class='btn btn-mini tip animateRow' data-target=".pendingContainer" data-user='1' data-date='3' data-title='2' title="Update">
													<img src="img/icons/fugue/document-task.png" alt="">
												</a>
									
										</div>
									</td>
											</tr>
										</s:iterator>		
                         
                  
          </TBODY>
       </TABLE>
        <div class="visit_sub_buttons">
        <input float="right" name="stop" type="button" value="停止" onClick="checkboxstop();" class="newbutton"></input>
        <input float="right" name="start" type="button" value="启动" onClick="checkboxstart();"class="newbutton"></input>
       </div>
     
      </Td>
      </TR>
<!-- ------------------------------------------------------------------------------------------- --> 
     
      <tr>
        <td height="40" colspan="4"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
      <tr>
        <td></td>
      </tr>
    </table>
    </td>
    </tr><!-- PP -->
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="51%" height="10">
               </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      </table>
      </td>
    
      <td background="images/mail_rightbg.gif">&nbsp;</td>
   </tr>
   <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
  </table>
   
</body>
</html>