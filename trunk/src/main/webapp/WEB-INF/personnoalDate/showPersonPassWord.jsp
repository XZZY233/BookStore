<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/7/11
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/showPersonal.css">
</head>
<body>
<section>
    <div id="perCentre">
        <div id="left_first">
            <h2>个人中心</h2>
            <hr/>
            <p><a href="${pageContext.request.contextPath}/user/toshowPersonalData">&nbsp;我的信息</a></p>
            <p><a href="${pageContext.request.contextPath}/user/toshowPersonPassWord">&nbsp;修改密码</a></p>
            <p>  <a href="${pageContext.request.contextPath}/base/goURL/personnoalDate/confirmReceipt">&nbsp;收货管理</a></p>
            <p><a href="${pageContext.request.contextPath}/books/list">&nbsp;返回首页</a></p>
        </div>
        <div id="left_second">
            <h2>我的记录</h2>
            <hr/>
            <p>  <a href="${pageContext.request.contextPath}/base/goURL/personnoalDate/showPersonOrder">&nbsp;购买记录</a></p>
            <p> <a href="${pageContext.request.contextPath}/base/goURL/personnoalDate/showOrder">&nbsp;我的订单</a></p>
            <p><a href="${pageContext.request.contextPath}/books/list">&nbsp;返回首页</a></p>
        </div>
    </div>
    <div id="showData">
        <h3>卐安全中心卍</h3>
        <br><br>
        <hr/>
        <form action="${pageContext.request.contextPath}/user/changePwd" method="post" onsubmit="return submitTest()">
            <table >
                <tr>
                    <td><input type="hidden" name="uId" value="${sessionScope.user.uId}"></td>
                </tr>
                <tr>
                    <td>输入密码：</td>
                    <td><input id="password_first" class="text" type="password" name="uPwd" ></td>
                    <td><span>:输入要更改的密码</span></td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td><input id="password_second" class="text" type="password" name="pwd2" ></td>
                    <td><span>&nbsp;&nbsp;:两次密码必须相同</span></td>
                </tr>
            </table>
            <hr/>
            <div><input class="form_sigup" type="submit" value="确认"></div>
        </form>
    </div>
</section>
<footer>
    <%@include file="/WEB-INF/jsp/indexpage/index_bottom.jsp"%>
</footer>
<script src="${pageContext.request.contextPath}/statics/js/change_pass.js"></script>
</body>

</html>
