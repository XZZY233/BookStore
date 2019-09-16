<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/7/15
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ page import="java.io.*,java.util.List,java.util.ArrayList" %>
<%@ page import="com.nuc.model.Book" %>

<html>
<head>
    <title>Title</title>
    <%@page pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <title>books</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/menu.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/menu.js"></script>
</head>
<body>

<div class="nav-box">
    <div class="nav_top"><a href="typeServletOn" >全部商品分类</a></div>
    <ul id="ul1">
        <li class="li1">
            <a href="#">政治</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type1 = (List) request.getAttribute("list_type1");
                        for (Book book : list_type1){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">军事</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type2 = (List) request.getAttribute("list_type2");
                        for (Book book : list_type2){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">文明</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type3 = (List) request.getAttribute("list_type3");
                        for (Book book : list_type3){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li >
        <li class="li1">
            <a href="#">历史</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type4 = (List) request.getAttribute("list_type4");
                        for (Book book : list_type4){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">儿童</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type5 = (List) request.getAttribute("list_type5");
                        for (Book book : list_type5){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">心理</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type6 = (List) request.getAttribute("list_type6");
                        for (Book book : list_type6){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">计算机</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type7 = (List) request.getAttribute("list_type7");
                        for (Book book : list_type7){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
        <li class="li1">
            <a href="#">互联网</a>
            <div>
                <ul class="ul2">
                    <%
                        List<Book> list_type8 = (List) request.getAttribute("list_type8");
                        for (Book book : list_type8){
                    %>
                    <li class="li2">
                        <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" width="125" height="159" onclick="
                        javascript:location.href='${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>'"/>
                        <br/>
                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a>
                        <p><%= book.getbAuthor()%></p>
                        <p>￥<%= book.getbPrice()%></p>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
