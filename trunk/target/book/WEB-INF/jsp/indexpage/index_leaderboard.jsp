<%@ page import="java.util.List" %>
<%@ page import="com.nuc.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/7/15
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@page pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/leaderboard.css">
</head>
<body>

    <span id="backboad">
        <p id="lp">
            &nbsp;&nbsp;&nbsp;&nbsp;销售榜
        </p>
         <%
             List<Book> list_top = (List<Book>)request.getAttribute("list_top");
         %>
        <ul>
            <%
                int i=1;
                for (Book book:list_top){
            %>
            <li class="lli">
                <%= i%>.<a class="la" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
            </li>
            <%
                i++;
            }
            %>
        </ul>
    </span>
</body>
</html>
