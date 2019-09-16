<html>
<head>
<%@ page import="com.nuc.model.Book" %>
<%@ page import="java.util.List" %>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: DELL--%>
<%--  Date: 2019/7/13--%>
<%--  Time: 17:39--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>
    .div_list{
        margin: 0 auto;
    }
    .booklist1{
        float: left;
        margin: 0 auto;
    }
    .booklist1 li>h2{
        color: #4D4D4D;
        font-size: 16px;
    }
    .booklist1 li {
        margin: 10px;
        list-style-type:none;
        float:left
    }
    .booklist1 li p:first-of-type{
        color: #640000;
        font-size: 14px;
    }
    .booklist1 li p:nth-of-type(2){
        color: red;
        font-size: 14px;
    }
    .booklist1 img{
        height: 150px;
        width: 100px;
    }
    .booklist2{
        float: left;
        margin: 0 auto;
    }
    .booklist2 li>h2{
        color: #4D4D4D;
        font-size: 16px;
    }
    .booklist2 li {
        margin: 10px;
        list-style-type:none;
        float:left
    }
    .booklist2 li p:first-of-type{
        color: #640000;
        font-size: 14px;
    }
    .booklist2 li p:nth-of-type(2){
        color: red;
        font-size: 14px;
    }
    .booklist2 img{
        height: 150px;
        width: 100px;
    }
</style>
<head>
<body>
<div class="div_list">
    <ul class="booklist1">
        <%
            List<Book> list_allBooks = (List<Book>)request.getAttribute("list_books");
            int count = 1;
            for (Book book:list_allBooks){
            %>
                <%
                    if (count <= 9){
                        %>
                        <li>
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" height="100" width="100" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <h2><a href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a></h2>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                        </li>
                        <%
                    }else {
                        %>
                        <li></li>
                        <%
                    }
                    count++;
                %>
            </li>
            <%
            }
        %>
    </ul>
</div>
</body>
</html>