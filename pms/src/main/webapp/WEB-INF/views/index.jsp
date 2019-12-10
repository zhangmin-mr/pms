<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>

    
    <title>人事管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/index.css">
	
  </head>
    <frameset rows="122px,*" cols="*"  frameborder="no" framespacing="0"> 
		<frame noresize="noresize" src="top.do" scrolling="no"  style="border-bottom:solid 2px #78b2c8;">
		<frameset cols="220px,*" frameborder="no" framespacing="0">
			<frame noresize="noresize" src="leftmenu.do"  scrolling="no" style="border-right:solid 2px #78b2c8;" >
			<frame name="PageFrame" src="homeList.do" scrolling="yes">
		</frameset>
	</frameset>
  
</html>
