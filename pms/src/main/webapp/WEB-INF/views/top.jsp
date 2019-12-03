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
 <script type="text/javascript">
        function tick() {
        var hours, minutes, seconds, xfile;
        var intHours, intMinutes, intSeconds;
        var today;
        today = new Date();
        intYears=today.getYear();
		intMonths=today.getMonth()+1;
		intDates=today.getDate();
        intHours = today.getHours();
        intMinutes = today.getMinutes();
        intSeconds = today.getSeconds();
		if(navigator.appName == "Netscape")
		{
			intYears += 1900;
		}
		if(navigator.appName == "MSIE")
		{
			intYears += 1900;
		}
		if(navigator.appName == "Firefox")
		{
			intYears += 1900;
		}
		if(intHours<=12)
			strTime ="上午：";
		else if(intHours>=12 && intHours<=18)
			strTime ="下午：";
		else
			strTime ="晚上："
		if(intMinutes<10)
			intMinutes = "0" + intMinutes;
      	if(intSeconds<10)
			intSeconds = "0"+intSeconds;
		
		timeString =intYears+"年"+intMonths+"月"+intDates+"日"+" "+strTime+" "+intHours+ ":"+intMinutes+":"+intSeconds;
        //Time.innerHTML = timeString;
		document.getElementById("Time").innerHTML = timeString;
        window.setTimeout("tick();", 100);
        }
        window.onload = tick;
</script>
  </head>
  
  <body style="margin:0; padding:0; background-color:#b5e1ed;">
    <div style=" margin:0 0 0 0; padding:0;   height:100px; width:100%; background-image:url(images/top_bg.gif); background-color:#c4eaf3;  background-repeat:no-repeat; vertical-align:middle;">
    
    <div style="float:right; margin-right:100px; margin-top:15px">
    <img src="images/top_logo.jpg" />
    </div>
    </div>
    <div style=" float:left; margin:0 0 0 0;paddiing:0; width:100%; height:22px; background-image:url(images/top_menu_bg.jpg); background-repeat:repeat-x;">
	<div id="Time" style="float:left; margin-left:10px; width:25px; line-height:25px; vertical-align:middle; width:250px; font-size:13px;">
    	
    </div>
   
    <div style="float:left; width:25px; width:800px;" >
        <img style=" margin:0; padding:0; width:25px; width:500px;" src="images/top_menu.jpg" />
    </div>
        <div style="float:right;  margin-right:10px; height:25px; font-size:12px;  vertical-align:middle;">
        <img src="images/icon_home.png" /> <a style="text-decoration:none;" href="<%=path %>/servlet/getHome" target="PageFrame">主页</a> 
        <img src="images/icon_logout2.png" /><a style="text-decoration:none;"  href="login.jsp" target="_parent">注销</a>
        <img src="images/icon_help.png" />帮助文档
        </div>
    </div>
  </body>
</html>
