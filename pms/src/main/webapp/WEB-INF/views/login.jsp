<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

    <title>人事管理系统-登录</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/login.css">


</head>

<body>
<form name = "loginForm" method="post" action="userLoginSubmit.do">
    <div id="container">
        <div id="header"></div>
        <div id="content">
            <div id="left">
            </div>
            <div id="right">
                <table width="400"  border="0">
                    <tr>
                        <td  width="150" height="30" align="right">登录名：</td>
                        <td align="left"><input name="userName" type="text" size="20px" maxlength="20px" /></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">登录密码：</td>
                        <td align="left"><input name="passWord" type="password" size="20px" maxlength="20px" /></td>
                    </tr>
                    <tr>
                        <td width="150" height="30" align="right">管理员类型:</td>
                        <td align="left">
                            <select name="type" id="select">
                                <option value="系统管理员">系统管理员</option>
                                <option value="普通管理员">普通管理员</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td align="right" width="100"></td>
                        <td align="left"><input name="login" type="submit" value="登录" /></td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="footer">
            <p>Copyright&copy;2019 </p>
        </div>
    </div>
</form>
</body>
</html>
