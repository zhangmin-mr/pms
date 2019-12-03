<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<style type="text/css">
			textarea {
				display: block;
			}
	</style>
	<script type="text/javascript" language="javascript" charset="utf-8" src="editor/kindeditor-min.js"></script>
	<script type="text/javascript" language="javascript" charset="utf-8" src="editor/lang/zh_CN.js"></script>
	<script type="text/javascript" language="javascript">
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					allowFileManager : true
				});
				K('input[name=getHtml]').click(function(e) {
					alert(editor.html());
				});
				K('input[name=isEmpty]').click(function(e) {
					alert(editor.isEmpty());
				});
				K('input[name=getText]').click(function(e) {
					alert(editor.text());
				});
				K('input[name=selectedHtml]').click(function(e) {
					alert(editor.selectedHtml());
				});
				K('input[name=setHtml]').click(function(e) {
					editor.html('<h3>Hello KindEditor</h3>');
				});
				K('input[name=setText]').click(function(e) {
					editor.text('<h3>Hello KindEditor</h3>');
				});
				K('input[name=insertHtml]').click(function(e) {
					editor.insertHtml('<strong>插入HTML</strong>');
				});
				K('input[name=appendHtml]').click(function(e) {
					editor.appendHtml('<strong>添加HTML</strong>');
				});
				K('input[name=clear]').click(function(e) {
					editor.html('');
				});
			});
			
		</script>
		<script language="javascript" >
		function clearText(t)
			{
			switch(t)
			{
			case 4:
			document.getElementById("Text4").value = "";
			break;
			case 1:
			document.getElementById("Text1").value = "";
			break;
			case 2:
			document.getElementById("Text2").value = "";
			break;
			case 3:
			document.getElementById("Text3").value = "";
			break;
			}
			}
		
		</script>
  </head>
  
  
<body>
 <div id="nav"><img src="images/icon_home.gif" />
 主页 >> 员工信息管理>>员工添加录入
 </div>
  <div id="container">
  
    <div id = "header">
    <div id="liuyan_img">员工添加录入</div>
    
    </div>
  <div id = "liuyan">
    <table>
        <tr><td style="width:200px; text-align: right;">姓名：</td>
        <td><input id="Text4" name="name" type="text"  size="40" value="请输入姓名：" onfocus ="clearText(4)" /></td></tr>
        <tr><td style="text-align: right">性别：</td><td><input id="Text1" value="请输入性别：" name="email" type="text"  size="40" onfocus ="clearText(1)" /></td></tr>
        <tr><td style="text-align: right" >年龄：</td><td><input id="Text2" value="请输入年龄：" type="text" name="phone" size="40" maxlength="11" onfocus ="clearText(2)" /></td></tr>
        <tr><td style="text-align: right">职位：</td><td><input id="Text3" type="text" name="title" size="40" value="请输入职位：" onfocus ="clearText(3)" /></td></tr>
        <tr><td style="text-align: right; vertical-align:top;">薪资信息：</td>
        <td><textarea  id="contentText"    name="content" style="width:750px;height:250px;visibility:hidden;"  onfocus ="clearText(5)" >这里输入薪资</textarea></td></tr>
        <tr><td colspan="2" align="center">
      <input id="Submit1" type="submit" value="提交" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input id="Reset1" type="reset" value="重置" /></td></tr>
        <tr><td colspan="2" align="center"><div style="display: block;width:140px;height:30px;line-height:30px;vertical-align:middle;background-color:green;"><a  style="color:white;text-decoration:none; font-weight:bolder;" href="">查看所有留言内容</a></div></td></tr>	
    </table>
  </div>
  </div>
  </body>
</html>
