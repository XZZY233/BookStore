<%@ page import="java.util.List" %>
<%@ page import="com.nuc.model.Book" %>
<%@ page import="com.nuc.model.Type" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>搜索图书</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/searchBooks.css">
</head>
<body>
<div id="searchBooksFirst">
    <ul>
        <%
            List<Book> list_book = (List<Book>) request.getAttribute("books");
            for (Book book:list_book) {
        %>
        <li><a href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
            <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" height="100" width="100">&nbsp&nbsp&nbsp&nbsp书名：<%= book.getbName()%>
            作者：<%= book.getbAuthor()%>
            价格：<%= book.getbPrice()%>
            分类：<%
                 List<Type> types = book.getTypes();
                for (Type type:types) {
                    %>
                    <%= type.gettName()%>&nbsp;
                    <%
                }
            %>
            </a>
            </li>
        <%
        }
        %>
    </a>
    </ul>
</div>
</body>
<footer>
    <%@include file="/WEB-INF/jsp/indexpage/index_bottom.jsp"%>
</footer>
</html>
