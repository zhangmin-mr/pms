<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/main.css">
	
	<style type="text/css">
			textarea {
				display: block;
			}
	</style>
	<script type="text/javascript" language="javascript" charset="utf-8" src="<%=path %>/editor/kindeditor-min.js"></script>
	<script type="text/javascript" language="javascript" charset="utf-8" src="<%=path %>editor/lang/zh_CN.js"></script>
	<script type="text/javascript" language="javascript">
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="sRemark"]', {
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
  </head>
<body>
<form name="form1" method="post" action="<%=path %>/servlet/updateAdmin" >
 <div id="nav"><img src="<%=path %>/images/icon_home.gif" />
 当前位置：主页 >> 系统管理>> 管理员信息更新
 </div>
 <div id="content">
 <div class="right_tittle"><span>管理员信息更新</span></div>
 <table>
 <tr><td style="width:20%;">管理员编号：</td><td class="last2" align="left">
 <input name="id" type="text" readonly="readonly" value="<c:out value="${ad.id}"></c:out>" style="width:345px;background-color:#c4eaf3;"/>
 </td></tr>
 <tr><td style="width:20%;">管理员登录名：</td><td class="last2" align="left">
 <input name="aName" type="text" value="<c:out value="${ad.aName}"></c:out>" style="width:345px;"/>
 </td></tr>
<tr><td style="width:20%;">管理员密码：</td><td class="last2" align="left">
 <input name="aPwd" type="text" value="<c:out value="${ad.aPwd}"></c:out>" style="width:345px;"/>
 </td></tr>
  <tr><td style="width:20%;">类型：</td><td class="last2" align="left">
  <select name="aTypeId"  style="width:350px;" >
  <option value="0" selected="selected">普通管理员</option>
  <option value="1">系统管理员</option>
 
  </select>
  </td></tr>
  <tr><td colspan="2" class="last"><label><input  name="submit" type="submit" value="提交" class="btn"/></label></td></tr>
  
 </table>
  </div>
  </form>
  </body>
</html>
