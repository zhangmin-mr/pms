<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页</title>
    <script
            src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script
            src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script
            src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<%--    <link--%>
<%--            href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css"--%>
<%--            rel="stylesheet">--%>
<%--    <script--%>
<%--            src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>--%>
<%--    <script--%>
<%--            src="${pageContext.servletContext.contextPath}/static/js/pintuer.js"></script>--%>
   ß
    </script>

</head>
<body>
<div class="jumbotron text-center" style="margin-bottom: 0">
    <h1>My Main</h1>
    <p>
        欢迎&nbsp;&nbsp;&nbsp;${user.getUserName() }！&nbsp;&nbsp;&nbsp;&nbsp;性别:
        <c:if test="${user.getSex()==0}">	 男
        </c:if>
        <c:if test="${user.getSex()==1}"> 	女
        </c:if>
    </p>
    <p>

        <img src="${pageContext.servletContext.contextPath }${user.getHeaderUri()}" onerror="this.src='img/error.png'"/>
        <%-- <img width="100px" height="100px"
            src="${pageContext.servletContext.contextPath }${user.getHeaderUri()}"> --%>
    </p>
    <br>
    <p>
        <a href="login_out.do">注销</a>
    </p>

    <div class="wrapper">
        <a href="authority_module_list.do">模块设置</a><i></i>&nbsp;&nbsp;
        <a class="on" href="authority_roles_list.do">角色设置</a><i></i>&nbsp;&nbsp;<a
            href="authority_function_list.do">功能设置</a>
    </div>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#myNavbar">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">NET PASS</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul id="u1" class="nav navbar-nav">
                <li class="active"><a href="#">主页</a></li>
                <li><a href="#">页面 2</a></li>
                <li><a href="#">页面 3</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <h2>关于我</h2>
            <h5>我的照片:</h5>
            <div class="fakeimg">这边插入图像</div>
            <p>关于我的介绍..</p>
            <h3>链接</h3>
            <p>描述文本。</p>
            <ul id="u2" class="nav nav-pills nav-stacked">
                <li class="active"><a target="contents" href="user_lists.do">链接 1</a></li>
                <li><a target="contents" href="#">链接 2</a></li>
                <li><a target="contents" href="#">链接 3</a></li>
            </ul>
            <hr class="hidden-sm hidden-md hidden-lg">
        </div>
        <div class="col-sm-8">
            <iframe  name="contents" width="100%"
                     height="100%"></iframe>
            <!-- <h2>标题</h2>
            <h5>副标题</h5>
            <div class="fakeimg">图像</div>
            <p>一些文本..</p>
            <p>菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！</p>
            <br>
            <h2>标题</h2>
            <h5>副标题</h5>
            <div class="fakeimg">图像</div>
            <p>一些文本..</p>
            <p>菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！</p> -->
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom: 0">
    <p>底部内容</p>
</div>

</body>
</html>