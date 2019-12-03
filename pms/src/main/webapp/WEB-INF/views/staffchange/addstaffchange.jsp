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
	
	<script language="javascript">
	function gongzi(){
	 var obj = document.getElementById("sPost");
	 var index = obj.selectedIndex;
	 var obj2 = document.getElementById("sSalary");
	 obj2.selectedIndex = index;
	} 
	 
	
</script>
  </head>
<body >

<form name="form1" method="post" action="<%=path %>/servlet/addStaffchange" >
 <div id="nav"><img src="<%=path %>/images/icon_home.gif" />
 当前位置：主页 >> 员工调动信息管理 >> 员工调动登记
 </div>
 <div id="content">
 <div class="right_tittle"><span>员工调动登记</span></div>
 <table>
 <tr><td>员工姓名：</td><td class="last2"><input name="sName" type="text" style="width:345px;"/></td></tr>
 <tr><td>身份证号：</td><td class="last2"><input name="sIdentityId" type="text" maxlength="18" style="width:345px;"/></td></tr>
 <tr><td style="width:20%;">原职位：</td><td  class="last2" align="left">
  <select name="sPost" id="sPostold" style="width:350px;" onchange="gongzi()"  >
  <c:forEach items="${post}" var="pt"> 
  <option value="<c:out value="${pt.pId }"></c:out>"><c:out value="${pt.pName }"></c:out></option>
  </c:forEach>
  </select>
  调任职位：
  <select name="sPost" id="sPostnew" style="width:350px;" onchange="gongzi()"  >
  <c:forEach items="${post}" var="pt"> 
  <option value="<c:out value="${pt.pId }"></c:out>"><c:out value="${pt.pName }"></c:out></option>
  </c:forEach>
  </select>
  </td>
  </tr>
  <tr><td style="width:20%;">原部门：</td><td  class="last2" align="left">
  <select name="sDeptold" id="sPostold" style="width:350px;" onchange="gongzi()"  >
  <c:forEach items="${department}" var="dt"> 
  <option value="<c:out value="${dt.pId }"></c:out>"><c:out value="${dt.pName }"></c:out></option>
  </c:forEach>
  </select>
  调任部门：
  <select name="sDeptnew" id="sPostnew" style="width:350px;" onchange="gongzi()"  >
  <c:forEach items="${post}" var="dt"> 
  <option value="<c:out value="${dt.pId }"></c:out>"><c:out value="${dt.pName }"></c:out></option>
  </c:forEach>
  </select>
  </td>
  </tr>   
  
  <tr><td>调动性质：</td><td class="last2"><input name="sNature" type="text" style="width:345px;"/></td></tr>
 <tr><td>备注：</td><td class="last2"><input name="sRemark" type="text" style="width:345px;"/></td></tr>
 
 <tr><td colspan="2" class="last"><label><input  name="submit" type="submit" value="提交" class="btn"/></label></td></tr>  
 </table>
 </div>
  </form>
  </body>
</html>
