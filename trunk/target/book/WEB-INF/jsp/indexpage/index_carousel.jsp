<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/7/15
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@page pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/carousel.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/carousel.js"></script>
</head>
<body>
<div id="div_carousel">
    <iframe id="mainFrame" name="mainFrame" src="#" height="320" width="800" frameborder="no" scrolling="no" allowtransparency="yes"></iframe>
    <a class="a" id="a1" href="${pageContext.request.contextPath}/statics/images/book01.png" target="mainFrame"><span id="first">1</span></a><br/>
    <a class="a" id="a2" href="${pageContext.request.contextPath}/statics/images/book02.png" target="mainFrame"><span id="second">2</span></a><br/>
    <a class="a" id="a3" href="${pageContext.request.contextPath}/statics/images/book03.png" target="mainFrame"><span id="third">3</span></a><br/>
</div>
</body>
</html>
