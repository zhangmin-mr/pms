<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%String path=request.getContextPath(); %>
<% 
 	    int PageSize= Integer.parseInt(request.getAttribute("PageSize").toString());
	    int StartRow = Integer.parseInt(request.getAttribute("StartRow").toString());
	    int PageNo = Integer.parseInt(request.getAttribute("PageNo").toString());
	    int CounterStart = Integer.parseInt(request.getAttribute("CounterStart").toString());
	    int CounterEnd = Integer.parseInt(request.getAttribute("CounterEnd").toString());
	    int RecordCount = Integer.parseInt(request.getAttribute("RecordCount").toString());
	    int MaxPage = Integer.parseInt(request.getAttribute("MaxPage").toString());
	    int PrevStart = Integer.parseInt(request.getAttribute("PrevStart").toString());
	    int NextPage = Integer.parseInt(request.getAttribute("NextPage").toString());
	    int LastRec =Integer.parseInt(request.getAttribute("LastRec").toString());
	    int LastStartRecord = 0;//最后一页开始显示记录的编号
		
 %>
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
  </head>
<body>
<form name="form1" method="post" action="<%=path %>/servlet/manageStaffbank">

 <div id="nav"><img src="<%=path %>/images/icon_home.gif" />
 当前位置：主页 >> 系统管理 >> 管理员信息管理
 </div>
 
 <div id="content">
 <div class="right_tittle"><span>管理员信息管理</span></div>
 <table>
 <tr style="font-weight:bold;color:#4f7cac;  background-image:url(<%=path%>/images/table_tittle_bg.jpg); background-repeat:repeat-x;  height:30px;">
 <td>记录编号</td><td>管理员</td><td>密码</td>
 <td>类型</td><td class="last">管理操作</td>
 </tr>
 <c:forEach items="${admins}" var="ad">
 <tr><td><c:out value="${ad.id}"></c:out></td>
<td><c:out value="${ad.aName}"></c:out></td>
 <td ><c:out value="${ad.aPwd}"></c:out></td>
  <td ><c:out value="${ad.aTypeId}"></c:out></td>
  <td width="100px">
  <div class="btn2"><a href="<%=path %>/servlet/gotoUpdateadmin?id=<c:out value="${ad.id}"></c:out>">更改</a></div> 
  <div class="btn2"><a href="<%=path %>/servlet/delAdmin?id=${ad.id}">删除</a></div> 
  </td>
  </tr>
  </c:forEach>
  <tr>
  <td colspan="11" height="40px">
  <div id="paging">
  <div class="btn4">共<%=RecordCount%>条 </div>
  <div class="btn4">第<%=PageNo%>/<%=MaxPage %>页</div>
        <%
            //显示第一页或者前一页的链接
            //如果当前页不是第1页，则显示第一页和前一页的链接
            if (PageNo != 1) {
                PrevStart = PageNo - 1;
                %>
                <div class="btn3"><a href="<%=path %>/servlet/manageStaffbank?page=1">第一页 </a></div>
                <div class="btn3"><a href="<%=path %>/servlet/manageStaffbank?page=<%=PrevStart%>">前一页</a></div>
             <% 
            }
            //打印需要显示的页码
            for (int c = CounterStart; c <= CounterEnd; c++) {
                if (c < MaxPage) {
                    if (c == PageNo) {
                        if (c % PageSize == 0) {
                            out.print("<div class=pagenum>"+c+"</div>");
                        } else {
                            out.print("<div class=pagenum>"+c +"</div>"+ " ");
                        }
                    } else if (c % PageSize == 0) {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageStaffbank?page=" + c + ">" + c
                                + "</a></div>");
                    } else {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageStaffbank?page=" + c + ">" + c
                                + "</a></div>");
                    }
                } else {
                    if (PageNo == MaxPage) {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageStaffbank?page=" + c + ">" + c
                                + "</a></div>");
                        break;
                    } else {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageStaffbank?page=" + c + ">" + c
                                + "</a></div>");
                        break;
                    }
                }
            }
           
            if (PageNo < MaxPage) { //如果当前页不是最后一页，则显示下一页链接
                NextPage = PageNo + 1;
                %><div class="btn3"><a href="<%=path %>/servlet/manageStaffbank?page=<%=NextPage %>">下一页</a></div>
                <%
            }
            //同时如果当前页不是最后一页，要显示最后一页的链接
            if (PageNo < MaxPage) {
                LastRec = RecordCount % PageSize;
                if (LastRec == 0) {
                    LastStartRecord = RecordCount - PageSize;
                } else {
                    LastStartRecord = RecordCount - LastRec;
                }
				%>
                <div class="btn3"><a href="<%=path %>/servlet/manageStaffbank?page=<%=MaxPage%>">最后一页</a></div>
                <%
            }        
        %>
  </div>
  </td>
  </tr>
  </table>
  </div>
  </form>
  </body>
</html>
