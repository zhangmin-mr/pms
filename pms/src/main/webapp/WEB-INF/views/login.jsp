<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath}/static/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script type="text/javascript">
        if (top != window)
            top.location.href = window.location.href;
    </script>
</head>
<body>
<div class="login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>Dashboard</h1>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form action="loginSubmit.do" method="post" class="form-validate mb-4">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="loginUsername" required data-msg="Please enter your username" class="input-material">
                                    <label for="login-username" class="label-material">User Name</label>
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="loginPassword" required data-msg="Please enter your password" class="input-material">
                                    <label for="login-password" class="label-material">Password</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form><a href="#" class="forgot-pass">Forgot Password?</a><br><small>Do not have an account? </small><a href="register.do" class="signup">Signup</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights text-center">
        <p>Design by <a href="https://bootstrapious.com/p/bootstrap-4-dark-admin" class="external">Bootstrapious</a></p>
        <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
    </div>
</div>
<!-- JavaScript files-->
<script src="${pageContext.servletContext.contextPath}/static/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/vendor/popper.js/umd/popper.min.js"> </script>
<script src="${pageContext.servletContext.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="${pageContext.servletContext.contextPath}/static/vendor/chart.js/Chart.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/front.js"></script>
</body>
</html>
