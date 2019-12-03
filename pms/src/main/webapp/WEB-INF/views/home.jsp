<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/main.css">
  </head>
<body>

 <div id="nav"><img src="${pageContext.servletContext.contextPath}/static/images/icon_home.gif" />
 当前位置：主页 
 </div>
 <div id="content">
 
 <table>
 <tr style="font-weight:bold;color:#4f7cac; ; background-image:url(<%=path%>/images/table_tittle_bg.jpg); background-repeat:repeat-x;  height:30px;">
 <td colspan="4" style="text-align:left; padding-left:5px;">公司基本信息</td>
 </tr>
 <c:forEach items="${company}" var="cp">
 <tr><td style="width:20%;">公司代号：</td><td ><c:out value="${cp.id}"></c:out></td>
  <td style="width:20%;">公司名称：</td><td class="last"><c:out value="${cp.cName}"></c:out></td></tr>
  <tr><td>企业性质：</td><td ><c:out value="${cp.cNature}"></c:out></td>
  <td>法人代表：</td><td class="last"><c:out value="${cp.cLegalPerson}"></c:out></td></tr>

  <tr><td>开户银行：</td><td ><c:out value="${cb.cBankName}"></c:out></td>
  <td>银行账号：</td><td class="last"><c:out value="${cb.bId}"></c:out></td></tr>
  <tr><td>联系地址：</td><td ><c:out value="${cp.cAddress}"></c:out></td>
  <td>联系电话：</td><td class="last"><c:out value="${cp.cTel}"></c:out></td></tr>
  <tr><td>电子邮件：</td><td  class="last"><c:out value="${cp.cEmail}"></c:out></td><td style="border-right:none;"></td><td style="border-left:none;border-right:none;"></td></tr>
  </c:forEach>
 </table>
 </div>
 <div id="content">
 <div class="right_tittle"><span>部门信息管理</span></div>
 <table>
 <tr style="font-weight:bold;color:#4f7cac;  background-image:url(<%=path%>/images/table_tittle_bg.jpg); background-repeat:repeat-x;  height:30px;">
 <td>记录编号</td><td>部门编号</td><td>部门名称</td><td>部门职能</td><td>部门领导</td><td>管理操作</td>
 </tr>
 <c:forEach items="${departments}" var="dp">
 <tr><td width="80px"><c:out value="${dp.id}"></c:out></td>
  <td width="80px"><c:out value="${dp.dId}"></c:out></td>
  <td width="200px"><c:out value="${dp.dName}"></c:out></td>
  <td><c:out value="${dp.dFunction}"></c:out></td>
  <td width="100px"><c:out value="${dp.dLeader}"></c:out></td>
  <td width="100px">
  <div class="btn2"><a href="${pageContext.servletContext.contextPath}/servlet/gotoUpdatedept?dId=<c:out value="${dp.dId}"></c:out>">更改</a></div>
  <div class="btn2"><a href="${pageContext.servletContext.contextPath}/servlet/delDepartment?id=${dp.id}">删除</a></div>
  </td>
  </tr>
  </c:forEach>
  <tr>
  <td colspan="6" height="40px">
  <div id="paging">
  <div class="btn4">共<%=RecordCount%>条记录 </div>
  <div class="btn4">当前第<%=PageNo%>/<%=MaxPage %></div>
        <%
            //显示第一页或者前一页的链接
            //如果当前页不是第1页，则显示第一页和前一页的链接
            if (PageNo != 1) {
                PrevStart = PageNo - 1;
                %>
                <div class="btn3"><a href="${pageContext.servletContext.contextPath}/servlet/manageDepartment?page=1">第一页 </a></div>
                <div class="btn3"><a href="${pageContext.servletContext.contextPath}/servlet/manageDepartment?page=<%=PrevStart%>">前一页</a></div>
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
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageDepartment?page=" + c + ">" + c
                                + "</a></div>");
                    } else {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageDepartment?page=" + c + ">" + c
                                + "</a></div>");
                    }
                } else {
                    if (PageNo == MaxPage) {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageDepartment?page=" + c + ">" + c
                                + "</a></div>");
                        break;
                    } else {
                        out.print("<div class=pagenum><a href=/permanage/servlet/manageDepartment?page=" + c + ">" + c
                                + "</a></div>");
                        break;
                    }
                }
            }
           
            if (PageNo < MaxPage) { //如果当前页不是最后一页，则显示下一页链接
                NextPage = PageNo + 1;
                %><div class="btn3"><a href="<%=path %>/servlet/manageDepartment?page=<%=NextPage %>">下一页</a></div>
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
                <div class="btn3"><a href="<%=path %>/servlet/manageDepartment?page=<%=MaxPage%>">最后一页</a></div>
                <%
            }        
        %>
  </div>
  </td>
  </tr>
  </table>
  </div>
  </body>
</html>
