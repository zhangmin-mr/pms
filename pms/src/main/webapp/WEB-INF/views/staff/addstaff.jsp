<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static//css/main.css">

<%--    <script language="javascript">--%>
<%--     // 对应的职位对对应的薪水--%>
<%--        function gongzi() {--%>
<%--            var obj = document.getElementById("sPost");--%>
<%--            var index = obj.selectedIndex;--%>
<%--            var obj2 = document.getElementById("sSalary");--%>
<%--            obj2.selectedIndex = index;--%>
<%--        }--%>


<%--    </script>--%>
</head>
<body>

<form name="form1" method="post" action="<%=path %>/servlet/addStaff">
    <div id="nav"><img src="${pageContext.servletContext.contextPath}/static/images/icon_home.gif"/>
        当前位置：主页 >> 员工信息管理 >> 员工入职登记
    </div>
    <div id="content">
        <div class="right_tittle"><span>员工入职登记</span></div>
        <table>
            <tr>
                <td>员工姓名：</td>
                <td class="last2"><input name="sName" type="text" style="width:345px;"/></td>
            </tr>
            <tr>
                <td style="width:20%;">性别：</td>
                <td class="last2" align="left">
                    <select name="sSex" style="width:350px;">
                        <option value="男" selected="selected">男</option>
                        <option value="女">女</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>出生年月：</td>
                <td class="last2">
                    <select id="birthyear" name="birthyear">
                        <%
                            int i = 0;
                            for (i = 1970; i <= 2011; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>年
                    <select id="birthmon" name="birthmon">
                        <%
                            for (i = 1; i <= 12; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>月
                    <select id="birthday" name="birthday">
                        <%
                            for (i = 1; i <= 31; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>日
                </td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td class="last2"><input name="sIdentityId" type="text" maxlength="18" style="width:345px;"/></td>
            </tr>
            <tr>
                <td style="width:20%;">部门名称：</td>
                <td class="last2" align="left">
                    <select name="dDepartment" id="dDepartment" style="width:350px;" >
                        <c:forEach items="${departments}" var="dp">
                            <option value="${dp.dName}">${dp.dName}</option>
                        </c:forEach>
                    </select>
                </td>

            </tr>
            <tr>
                <td style="width:20%;">职位名称：</td>
                <td class="last2" align="left">
                    <select name="sPost" id="sPost" style="width:350px;" >
                        <c:forEach items="${post}" var="pt">
                            <option value="${pt.pName}">${pt.pName}</option>
                        </c:forEach>
                    </select>
                    &nbsp;对应职位薪水：
<%--                    <select name="sSalary" id="sSalary" style="width:100px;">--%>
<%--                        <c:forEach items="${post}" var="pt">--%>
<%--                            <option value="${pt.pSalary }"><c:out--%>
<%--                                    value="${pt.pSalary }"></c:out></option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>&nbsp;--%>
                    <input name="sSalary" type="text"/>

                    元人民币（月薪）
                </td>
            </tr>
            <tr>
                <td>入职时间：</td>
                <td class="last2">
                    <select id="jobyear" name="jobyear">
                        <%
                            for (i = 1970; i <= 2011; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>年
                    <select id="jobmon" name="jobmon">
                        <%
                            for (i = 1; i <= 12; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>月
                    <select id="jobday" name="jobday">
                        <%
                            for (i = 1; i <= 31; i++)
                                out.print("<option value=" + i + ">" + i + "</option>");
                        %>
                    </select>日
                </td>
            </tr>
            <tr>
                <td colspan="2" class="last"><label><input name="submit" type="submit" value="提交" class="btn"/></label>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
