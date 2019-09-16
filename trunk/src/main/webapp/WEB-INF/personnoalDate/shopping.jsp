<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/7/10
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>购物车</title>
    <link  rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/shopping.css">
    <script src="${pageContext.request.contextPath}/statics/js/shopping.js"></script>
    <style>
        #friend{ margin:0; padding:0;}
        #friend{ font:12px/20px Tahoma;}
        #friend img{ border:0;}
        #friend li{ list-style:none;}

        #friend a{ color:#335884; text-decoration:none;}
        #friend a:hover{ color:#f00; text-decoration:underline;}
        #friend{ clear:both; height:64px; margin:0 auto;}
        .friend_list{ height:40px; overflow:hidden; border:1px solid #bfd0d5;}
        .friend_list ul{ margin:14px 360px 0;}
        .friend_list li{ float:left; margin-right:10px; white-space:nowrap;}
        #footer{ clear:both; width:947px; margin:14px auto 0; text-align:center;}
        #footer p{ font:14px/24px Arial; color:#999;}
        #footer p.copyright{ color:#333; margin-top:15px;}
    </style>
</head>
<body>
<div style="width: 100%;height: 200px"></div>
<div class="content">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/books/list">  <span >首页</span></a>
    </div>
    <div class="cartList" id="cartList">
        <ul>
            <li>商品图片</li>
            <li>商品信息</li>
            <li>单价</li>
            <li>数量</li>
        </ul>
            <c:forEach items="${requestScope.shoppinglist}" var="shopping">
        <ul>
            <li><img src="${pageContext.request.contextPath}/statics/images/${shopping.bPath}" ></li>
            <li>${shopping.bName}</li>
            <li>¥<input type="text" name="price" value=${shopping.bPrice}></li>
            <li>
                <input type="text" name="amount" value=${shopping.sNumber}>
            </li>
            <li id="price0"></li>
            </p><a href="${pageContext.request.contextPath}/shop/delete?sId=${shopping.sId}">删除</a></li>
        </ul>
        </c:forEach>
        <ol>
            <li id="totalPrice">商品总计：￥<span>${requestScope.money}</span></li>
            <li><a href="${pageContext.request.contextPath}/orderBook/add?money=${requestScope.money}"><span>结 算</span></a></li>
        </ol>
    </div>
</div>
<div style="width: 100%;height: 200px"></div>
<footer>
    <div id="friend">
        <div class="friend_list">
            <ul>
                <li> <a href="#">公司简介 |</a> </li>
                <li> <a href="#">诚聘英才 |</a> </li>
                <li> <a href="#">网站联盟 |</a> </li>
                <li> <a href="#">当当招商 |</a> </li>
                <li> <a href="#">机构销售 |</a> </li>
                <li> <a href="#">手机当当 |</a> </li>
                <li> <a href="#">官方 Blog |</a> </li>
                <li> <a href="#">热词搜索</a> </li>
            </ul>
        </div>
    </div>
    <div id="footer">
        <p class=""> 24小时客户服务热线：010-68988888 &#160;&#160;&#160;&#160; <a href="#">常见问题解答</a> &#160;&#160;&#160;&#160; 新闻热线：010-627488888 <br />
            文明办网文明上网举报电话：010-627488888 &#160;&#160;&#160;&#160; 举报邮箱： <a href="#">tony@lkw.com</a> </p>
        <p class="copyright"> Copyright &copy; 1999-2019 News China gov, All Right Reserver <br />
            华轩书海商城 版权所有 </p>
    </div>
</footer>
</body>
</html>
