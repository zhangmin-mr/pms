<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<% String path = request.getContextPath(); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>


    <title>My JSP 'top.jsp' starting page</title>
    <meta name="referrer" content="no-referrer" />
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">


    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->


    <script src="${pageContext.servletContext.contextPath}/static/js/leftmenu.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/leftmenu.css">
</head>

<body style="margin:0; padding:0; background-color:#f6f9fd;">
<div class="nav">
    您好,<%=session.getAttribute("name") %>
</div>
<div style="margin:0;padding:0; width:210px; margin-top:10px; ">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%" style="margin-left:10px;">
        <!--<tr>
        	<td>
            	<table style="width:100%px;">
                <tr height="50">
                <td width=210 height=30 valign="middle" align=center  style="background-image:url(images/right_nav2.gif); background-repeat:repeat-x;">你好，蔡智明</td>
                </tr>
                </table>
            </td>
        </tr>-->
        <tr>
            <td>
                <table class="lefttitle">
                    <tr style="cursor:hand;" onmouseup="opencur(menu1,img1)">
                        <td class="tittle1"><img src="${pageContext.servletContext.contextPath}/static/images/icon_title_left.gif"/>员工信息管理</td>
                        <td><img id="img1" src="${pageContext.servletContext.contextPath}/static/images/icon_rig.gif"/></td>
                </table>
                <table id="menu1" style="display:none;">
                    <tr>
                        <td>
                            <ul>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/searchStaff"
                                                                        target="PageFrame">员工信息查询</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="staff/gotoAddstaff.do"
                                                                        target="PageFrame">员工入职登记</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="staff/staffManager.do"
                                                                        target="PageFrame">员工信息管理</a></li>

                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td><img src="${pageContext.servletContext.contextPath}/static/images/spacer.gif" height="10px"/></td>
        </tr>

        <tr>
            <td>
                <table class="lefttitle">
                    <tr style="cursor:hand;" onmouseup="opencur(menu2,img2)">
                        <td class="tittle1"><img src="${pageContext.servletContext.contextPath}/static/images/icon_title_left.gif"/>员工调动信息</td>
                        <td><img id="img2" src="${pageContext.servletContext.contextPath}/static/images/icon_rig.gif"/></td>
                    </tr>
                </table>
                <table id="menu2" style="display:none;">
                    <tr>
                        <td>
                            <ul>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="servlet/searchStaffchange"
                                                                        target="PageFrame">员工调动记录查询</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="servlet/gotoAddstaffchange"
                                                                        target="PageFrame">员工调动登记</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="servlet/manageStaffchange"
                                                                        target="PageFrame">员工调动信息管理</a></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.servletContext.contextPath}/static/images/spacer.gif" height="10px"/></td>
        </tr>
        <tr>
            <td>
                <table class="lefttitle">
                    <tr style="cursor:hand;" onmouseup="opencur(menu3,img3)">
                        <td class="tittle1"><img src="${pageContext.servletContext.contextPath}/static/images/icon_title_left.gif"/>银行账户信息</td>
                        <td><img id="img3" src="${pageContext.servletContext.contextPath}/static/images/icon_rig.gif"/></td>
                    </tr>
                </table>
                <table id="menu3" style="display:none;">
                    <tr>
                        <td>
                            <ul>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/getCompanybank"
                                                                        target="PageFrame">公司银行账户查看</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/gotoUpdatecompanybank"
                                                                        target="PageFrame">公司银行账户更新</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="
                                /bank/addstaffbank.jsp"
                                                                        target="PageFrame">员工银行账户登记</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="servlet/manageStaffbank"
                                                                        target="PageFrame">员工银行账户管理</a></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.servletContext.contextPath}/static/images/spacer.gif" height="10px"/></td>
        </tr>
        <tr>
            <td>
                <table class="lefttitle">
                    <tr style="cursor:hand;" onmouseup="opencur(menu4,img4)">
                        <td class="tittle1"><img src="${pageContext.servletContext.contextPath}/static/images/icon_title_left.gif"/>公司信息管理</td>
                        <td><img id="img4" src="${pageContext.servletContext.contextPath}/static/images/icon_rig.gif"/></td>
                    </tr>
                </table>
                <table id="menu4" style="display:none;">
                    <tr>
                        <td>
                            <ul>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/getCompany"
                                                                        target="PageFrame">公司基本信息</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/updateCompany"
                                                                        target="PageFrame">公司信息更新</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/company/adddept.jsp"
                                                                        target="PageFrame">新部门登记</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/manageDepartment"
                                                                        target="PageFrame">部门信息管理</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/company/addpostcategory.jsp"
                                                                        target="PageFrame">职位类别添加</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/managePost"
                                                                        target="PageFrame">职位类别维护</a></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img src="${pageContext.servletContext.contextPath}/static/images/spacer.gif" height="10px"/></td>
        </tr>
        <tr>
            <td>
                <table class="lefttitle">
                    <tr style="cursor:hand;" onmouseup="opencur(menu5,img5)">
                        <td class="tittle1"><img src="${pageContext.servletContext.contextPath}/static/images/icon_title_left.gif"/>系统管理功能</td>
                        <td><img id="img5" src="${pageContext.servletContext.contextPath}/static/images/icon_rig.gif"/></td>
                    </tr>
                </table>
                <table id="menu5" style="display:none; ">
                    <tr>
                        <td>
                            <ul>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/system/addadmin.jsp"
                                                                        target="PageFrame">管理员添加</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/manageAdmin"
                                                                        target="PageFrame">管理员信息维护</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/servlet/manageAdmin"
                                                                        target="PageFrame">登录密码修改</a></li>
                                <li><img src="${pageContext.servletContext.contextPath}/static/images/icon_list.gif"/><a href="<%=path %>/login.jsp" target="_parent">退出系统</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


</div>
</body>
</html>
