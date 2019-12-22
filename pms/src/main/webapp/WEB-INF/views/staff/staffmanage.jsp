<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%String path = request.getContextPath(); %>

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
<form name="form1" method="post" action="staffManager.do">

    <div id="nav"><img src="${pageContext.servletContext.contextPath}/static/images/icon_home.gif"/>
        当前位置：主页 >> 员工信息管理 >> 员工信息管理
    </div>
    <div id="search">
        关键字: <input name="search" style="width:200px;"/>&nbsp;按
        <select name="type">
            <option value="sId" selected="selected">员工编号</option>
            <option value="sName">员工姓名</option>
        </select> &nbsp;<input  type="submit" value="搜索" style="cursor:hand;"/>&nbsp;&nbsp;
    </div>
    <div id="content">
        <div class="right_tittle"><span>员工信息管理</span></div>
        <table>
            <tr style="font-weight:bold;color:#4f7cac;  background-image:url(<%=path%>/images/table_tittle_bg.jpg); background-repeat:repeat-x;  height:30px;">
                <td>记录编号</td>
                <td>员工编号</td>
                <td>员工姓名</td>
                <td>员工性别</td>
                <td>出生年月</td>
                <td>身份证号</td>
                <td>职位</td>
                <td>部门</td>
                <td>薪水</td>
                <td>入职时间</td>
                <td class="last">管理操作</td>
            </tr>
            <c:forEach items="${requestScope.staffByPage}" var="staff">
                <tr>
                    <td><c:out value="${staff.id}"></c:out></td>
                    <td><c:out value="${staff.sId}"></c:out></td>
                    <td><c:out value="${staff.sName}"></c:out></td>
                    <td><c:out value="${staff.sSex}"></c:out></td>
                    <td><fmt:parseDate value="${staff.sBirthday}" var="birthdate"
                                       pattern="yyyy-MM-dd"></fmt:parseDate><fmt:formatDate value="${birthdate }"/></td>
                    <td><c:out value="${staff.sIdentityId}"></c:out></td>
                    <td><c:out value="${staff.sPost}"></c:out></td>
                    <td><c:out value="${staff.sDepartment.dName}"></c:out></td>
                    <td><c:out value="${staff.sSalary}"></c:out></td>
                    <td><fmt:parseDate value="${staff.sEntry}" var="date"
                                       pattern="yyyy-MM-dd"></fmt:parseDate><fmt:formatDate value="${date }"/></td>
                    <td width="100px">
                        <div class="btn2"><a
                                href="<%=path %>/servlet/gotoUpdatestaff?sId=<c:out value="${staff.sId}"></c:out>">更改</a>
                        </div>
                        <div class="btn2"><a href="<%=path %>/servlet/delStaff?sId=${staff.sId}">删除</a></div>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="11" height="40px">
                    <div id="paging">
                        <div class="btn4">共${requestScope.totalCount}条</div>
                        <div class="btn4">第${requestScope.currPage}/${requestScope.totalPage}页
                        </div>


                        <c:if
                                test="${requestScope.currPage != 1}">
                            <div class="btn3"><a
                                    href="${pageContext.request.contextPath }/staff/staffManager.do?currentPage=1">[首页]</a>
                                <a
                                        href="${pageContext.request.contextPath }/staff/staffManager.do?currentPage=${requestScope.currPage-1}">[上一页]</a>
                            </div>
                        </c:if>




                        <c:if
                                test="${requestScope.currPage != requestScope.totalPage}">
                            <div class="btn3"><a
                                    href="${pageContext.request.contextPath }/staff/staffManager.do?currentPage=${requestScope.currPage+1}">[下一页]</a></div>

                            <div class="btn3"><a
                                    href="${pageContext.request.contextPath }/staff/staffManager.do?currentPage=${requestScope.totalPage}">[尾页]</a></div>
                        </c:if>


                    </div>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
