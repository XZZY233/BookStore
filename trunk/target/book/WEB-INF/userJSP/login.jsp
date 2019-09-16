<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/7/10
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/statics/css/common_form.css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery-1.12.4.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<header>
    <div class="header-line"></div>
</header>
<img class="form_left" src="${pageContext.request.contextPath}/statics/images/login_left.png">
<img class="form_right" src="${pageContext.request.contextPath}/statics/images/login_right.png">
<div class="content">
    <img class="content-logo" src="${pageContext.request.contextPath}/statics/images/form_login1.png" alt="logo">

    <h1 class="content-title">登录</h1>
    <div class="content-form">
        <form method="post" action="${pageContext.request.contextPath}/user/login" onsubmit="return submitTest()">
            <div id="change_margin_1">
                <input id="remind_1" class="tel" type="tel" name="uTel" placeholder="请输入手机号" onblur="oBlur_1()" onfocus="oFocus_1()">
            </div>
            <div id="change_margin_2">
                <input id="remind_2" class="password" type="password" name="uPwd" placeholder="请输入密码" onblur="oBlur_2()" onfocus="oFocus_2()">
            </div>
            <div id="change_margin_3">
                <input class="content-form-signup" type="submit" value="登录">
                <br>
                ${msg}
            </div>
        </form>
    </div>
    <div class="content-login-description">没有账户？</div>
    <div><a class="content-login-link" href="${pageContext.request.contextPath}/user/toregister">注册</a></div>
</div>
<footer>
 <%@include file="/WEB-INF/jsp/indexpage/index_bottom.jsp"%>--%>
</footer>
<script src="${pageContext.request.contextPath}/statics/js/common_form_test.js"></script>
</body>
</html>