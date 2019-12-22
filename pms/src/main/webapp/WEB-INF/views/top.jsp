<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

      <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/top.css">
      <script src="${pageContext.servletContext.contextPath}/static/js/top.js"></script>
  </head>
  
  <body  style="margin:0; padding:0; background-color:#b5e1ed;">
    <div id="top22" >
    
    <div style="float:right; margin-right:100px; margin-top:15px">
    <img src="${pageContext.servletContext.contextPath}/static/images/top_logo.jpg" />
    </div>
    </div>
    <div id="top33" >



        <div id="Time" style="float:left; margin-left:10px; width:25px; line-height:25px; vertical-align:middle; width:250px; font-size:13px;">
    	
    </div>
   
    <div style="float:left; width:25px; width:800px;" >
        <img style=" margin:0; padding:0; width:25px; width:500px;" src="${pageContext.servletContext.contextPath}/static/images/top_menu.jpg" />
    </div>
        <div style="float:right;  margin-right:10px; height:25px; font-size:12px;  vertical-align:middle;">
        <img src="${pageContext.servletContext.contextPath}/static/images/icon_home.png" /> <a style="text-decoration:none;" href="<%=path %>/servlet/getHome" target="PageFrame">主页</a>
        <img src="${pageContext.servletContext.contextPath}/static/images/icon_logout2.png" /><a style="text-decoration:none;"  href="login_out.do" target="_parent">注销</a>
        <img src="${pageContext.servletContext.contextPath}/static/images/icon_help.png" />帮助文档
        </div>
    </div>
  </body>
</html>
