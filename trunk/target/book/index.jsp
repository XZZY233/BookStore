<%@ page import="com.nuc.model.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="robots" content="all">
    <title>Home</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/owl.transitions.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/rateit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap-select.min.css">

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/font-awesome.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body class="cnt-home">
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
        <div class="container">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <c:set var="isLogin" value="${empty sessionScope.user}"/>
                        <c:if test="${!isLogin}">
                        <li class="header_cart hidden-xs"><a href="${pageContext.request.contextPath}/shop/list"><span>购物车</span></a></li>
                        <li class="check"><a href="${pageContext.request.contextPath}/base/goURL/personnoalDate/showOrder"><span>订单</span></a></li>
                        <li class="login"><a href="${pageContext.request.contextPath}/user/logout"><span>登出</span></a></li>
                        </c:if>
                        <c:if test="${isLogin}">
                        <li class="login"><a href="${pageContext.request.contextPath}/user/tolog"><span>登录</span></a></li>
                        </c:if>
                    </ul>
                </div>
                <!-- /.cnt-account -->

                <!-- /.cnt-cart -->
                <div class="clearfix"></div>
            </div>
            <!-- /.header-top-inner -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.header-top -->
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"> <img src="${pageContext.request.contextPath}/statics/images/bookslogo.png" alt="logo"></div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= --> </div>
                <!-- /.logo-holder -->

                <div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder">
                    <!-- /.contact-row -->
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form id="form1" name="form1" method="get" action="${pageContext.request.contextPath}/books/search">
                            <a class="control-group">
                                <input class="search-field" name="search_content_text" id="search_content_text" type="text" placeholder="Search here..." />
                                <a class="search-button" onclick="document:form1.submit()" ></a>
                            </a>
                        </form>
                    </div>
                </div>
                    <!-- /.search-area -->
                    <!-- ============================================================= SEARCH AREA : END ============================================================= --> </div>
                <!-- /.top-search-holder -->

<%--                <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 animate-dropdown top-cart-row">--%>
<%--                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->--%>
<%--                           <form id="shop_form" name="shop_form"  method="get" action="${pageContext.request.contextPath}/shop/list">--%>
<%--                               <div class="dropdown dropdown-cart"> <a  class="dropdown-toggle lnk-cart" data-toggle="dropdown" onclick="document:shop_form.submit()">--%>
<%--                                   <div class="items-cart-inner">--%>
<%--                                       <div class="basket">--%>
<%--                                           <div class="total-price-basket"> <span class="lbl">购&nbsp;&nbsp;物&nbsp;&nbsp;车</span> </div>--%>
<%--                                       </div>--%>
<%--                                   </div>--%>
<%--                               </a>--%>
<%--                        <!-- /.dropdown-menu-->--%>
<%--                          </div></form>--%>
<%--                    <!-- /.dropdown-cart -->--%>

<%--                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= --> </div>--%>
                <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.main-header -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-vs" id="top-banner-and-menu">
    <div class="container">
        <div class="row">
            <!-- ============================================== SIDEBAR ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">

                <!-- ================================== TOP NAVIGATION ================================== -->
                <div class="side-menu animate-dropdown outer-bottom-xs">
                    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> 分类</div>
                    <nav class="yamm megamenu-horizontal">
                        <ul class="nav">
                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-shopping-bag" aria-hidden="true"></i>政&nbsp;&nbsp;治</a>
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                                <ul class="links list-unstyled">
                                                    <%
                                                        List<Book> list_type1 = (List) request.getAttribute("list_type1");
                                                        for (Book book : list_type1){
                                                    %>
                                                    <li class="li2">
                                                        <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                            《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                        </a>
                                                    </li>
                                                    <%
                                                        }
                                                    %>
                                                </ul>
                                            <!-- /.col -->
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-laptop" aria-hidden="true"></i>军&nbsp;&nbsp;事</a>
                                <!-- ================================== MEGAMENU VERTICAL ================================== -->
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                            <ul class="links list-unstyled">
                                                <%
                                                    List<Book> list_type2 = (List) request.getAttribute("list_type2");
                                                    for (Book book : list_type2){
                                                %>
                                                <li class="li2">
                                                    <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                        《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                    </a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu -->
                                <!-- ================================== MEGAMENU VERTICAL ================================== --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paw" aria-hidden="true"></i>文&nbsp;&nbsp;明</a>
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                            <ul class="links list-unstyled">
                                                <%
                                                    List<Book> list_type3 = (List) request.getAttribute("list_type3");
                                                    for (Book book : list_type3){
                                                %>
                                                <li class="li2">
                                                    <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                        《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                    </a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-clock-o"></i>历&nbsp;&nbsp;史</a>
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                            <ul class="links list-unstyled">
                                                <%
                                                    List<Book> list_type4 = (List) request.getAttribute("list_type4");
                                                    for (Book book : list_type4){
                                                %>
                                                <li class="li2">
                                                    <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                        《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                    </a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-diamond"></i>儿&nbsp;&nbsp;童</a>
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                            <ul class="links list-unstyled">
                                                <%
                                                    List<Book> list_type5 = (List) request.getAttribute("list_type5");
                                                    for (Book book : list_type5){
                                                %>
                                                <li class="li2">
                                                    <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                        《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                    </a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-heartbeat"></i>心&nbsp;&nbsp;理</a>
                                <ul class="dropdown-menu mega-menu">
                                    <li class="yamm-content">
                                        <div class="row">
                                            <ul class="links list-unstyled">
                                                <%
                                                    List<Book> list_type6 = (List) request.getAttribute("list_type6");
                                                    for (Book book : list_type6){
                                                %>
                                                <li class="li2">
                                                    <a class="bname" href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                        《<%= book.getbName()%>》&nbsp;&nbsp;&nbsp; 作者：<%= book.getbAuthor()%> &nbsp;&nbsp;&nbsp; 价格：￥<%= book.getbPrice()%>
                                                    </a>
                                                </li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- /.yamm-content -->
                                </ul>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paper-plane"></i>计&nbsp;&nbsp;算&nbsp;&nbsp;机</a>
                                <!-- /.dropdown-menu --> </li>
                            <!-- /.menu-item -->

                            <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-futbol-o"></i>互&nbsp;&nbsp;联&nbsp;&nbsp;网</a>
                                <!-- ================================== MEGAMENU VERTICAL ================================== -->
                                <!-- /.dropdown-menu -->
                                <!-- ================================== MEGAMENU VERTICAL ================================== --> </li>
                            <!-- /.menu-item -->

                            <!-- /.menu-item -->

                        </ul>
                        <!-- /.nav -->
                    </nav>
                    <!-- /.megamenu-horizontal -->
                </div>
                <!-- /.side-menu -->
                <!-- ================================== TOP NAVIGATION : END ================================== -->

                <!-- ============================================== HOT DEALS ============================================== -->
                <div class="sidebar-widget hot-deals outer-bottom-xs">
                    <h3 class="section-title">热&nbsp;&nbsp;卖</h3>
                    <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
                        <div class="item">
                            <div class="products">
                                <div class="hot-deal-wrapper">
                                    <div class="image">
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/statics/images/book1_1.jpg" alt="">
                                            <img src="${pageContext.request.contextPath}/statics/images/book2_1.png" alt="" class="hover-image">
                                        </a>
                                    </div>
                                    <div class="sale-offer-tag"><span>49%<br>
                    推荐</span></div>
                                </div>
                                <!-- /.hot-deal-wrapper -->

                                <div class="product-info text-left m-t-20">
                                    <h3 class="name"><a href="${pageContext.request.contextPath}/books/bookInfo?bookId=1">一个人的旅行</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="product-price"> <span class="price"> ￥100.00 </span> <span class="price-before-discount">￥130.00</span> </div>
                                    <!-- /.product-price -->

                                </div>
                                <!-- /.product-info -->

                                <div class="cart clearfix animate-effect">
                                    <div class="action">
                                        <div class="add-cart-button btn-group">
                                            <form method="post" action="${pageContext.request.contextPath}/shop/addShop?bId=1&number=1">
                                                <c:if test="${!isLogin}">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"  type="submit"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn"  type="submit">加入购物车</button>
                                                </c:if>
                                            </form>
                                         </div>
                                    </div>
                                    <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                            </div>
                        </div>
                        <div class="item">
                            <div class="products">
                                <div class="hot-deal-wrapper">
                                    <div class="image">
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/statics/images/book3_1.png" alt="">
                                            <img src="${pageContext.request.contextPath}/statics/images/book4_1.png" alt="" class="hover-image">
                                        </a>
                                    </div>
                                    <div class="sale-offer-tag"><span>35%<br>
                    推荐</span></div>
                                </div>
                                <!-- /.hot-deal-wrapper -->

                                <div class="product-info text-left m-t-20">
                                    <h3 class="name"><a href="${pageContext.request.contextPath}/books/bookInfo?bookId=2">一本好书</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="product-price"> <span class="price"> ￥90.00 </span> <span class="price-before-discount">￥99.00</span> </div>
                                    <!-- /.product-price -->

                                </div>
                                <!-- /.product-info -->

                                <div class="cart clearfix animate-effect">
                                    <div class="action">
                                        <c:if test="${!isLogin}">
                                        <div class="add-cart-button btn-group">
                                            <form method="post" action="${pageContext.request.contextPath}/shop/addShop?bId=2&number=1">
                                                    <button class="btn btn-primary icon"  data-toggle="dropdown" type="submit"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn"  type="submit">加入购物车</button>
                                            </form>
                                        </div>
                                        </c:if>
                                    </div>
                                    <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                            </div>
                        </div>
                    </div>
                    <!-- /.sidebar-widget -->
                </div>
                <!-- ============================================== HOT DEALS: END ============================================== -->

            </div>
            <!-- /.sidemenu-holder -->
            <!-- ============================================== SIDEBAR : END ============================================== -->

            <!-- ============================================== CONTENT ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                <!-- ========================================== SECTION – HERO ========================================= -->

                <div id="hero">
                    <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                        <div class="item" style="background-image: url(../statics/images/book11.png);">
                            <div class="container-fluid">
                                <div class="caption bg-color vertical-center text-left">
                                    <div class="slider-header fadeInDown-1">刘慈欣</div>
                                    <div class="big-text fadeInDown-1"> 三体(全三册)  </div>
                                    <div class="excerpt fadeInDown-2 hidden-xs"> <span>亚洲首部“雨果奖”获奖作品！ </span> </div>
                                    <div class="button-holder fadeInDown-3"> <a href="${pageContext.request.contextPath}/books/bookInfo?bookId=1" class="btn-lg btn btn-uppercase btn-primary shop-now-button">立即购买</a> </div>
                                </div>
                                <!-- /.caption -->
                            </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- /.item -->

                        <div class="item" style="background-image: url(../statics/images/book21.png);">
                            <div class="container-fluid">
                                <div class="caption bg-color vertical-center text-left">
                                    <div class="slider-header fadeInDown-1">刘慈欣</div>
                                    <div class="big-text fadeInDown-1"> 三体(全三册)  </div>
                                    <div class="excerpt fadeInDown-2 hidden-xs"> <span>亚洲首部“雨果奖”获奖作品！ </span> </div>
                                    <div class="button-holder fadeInDown-3"> <a href="${pageContext.request.contextPath}/books/bookInfo?bookId=2" class="btn-lg btn btn-uppercase btn-primary shop-now-button">立即购买</a> </div>                                </div>
                                <!-- /.caption -->
                            </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- /.item -->

                    </div>
                    <!-- /.owl-carousel -->
                </div>

                <!-- ========================================= SECTION – HERO : END ========================================= -->


                <!-- ============================================== SCROLL TABS ============================================== -->
                <div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
                    <div class="more-info-tab clearfix ">
                        <h3 class="new-product-title pull-left">新&nbsp;&nbsp;品</h3>
                    </div>
                    <div class="tab-content outer-top-xs">
                        <div class="tab-pane in active" id="all">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">

                                    <%
                                        List<Book> list_allBooks = (List<Book>)request.getAttribute("list_books");
                                        for (Book book:list_allBooks){
                                    %>

                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>">
                                                            <img src="${pageContext.request.contextPath}/statics/images/<%= book.getbPath()%>" alt="">
                                                        </a>
                                                    </div>
                                                    <!-- /.image -->
                                                </div>
                                                <!-- /.product-image -->

                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="${pageContext.request.contextPath}/books/bookInfo?bookId=<%= book.getbId()%>"><%= book.getbName()%></a></h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>
                                                    <div class="product-price"> <span class="price"> ￥<%= book.getbPrice()%> </span></div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <c:if test="${!isLogin}">
                                                    <div class="cart clearfix animate-effect">
                                                            <form method="post" action="${pageContext.request.contextPath}/shop/addShop?bId=<%=book.getbId()%>&number=1">
                                                                <div class="action">
                                                                    <ul class="list-unstyled">
                                                                        <li class="add-cart-button btn-group">
                                                                            <button  data-toggle="tooltip" class="btn btn-primary icon" type="submit" title="加入购物车"> <i class="fa fa-shopping-cart"></i> </button>
                                                                            <button  class="btn btn-primary cart-btn" type="submit">加入购物车</button>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </form>
                                                        <!-- /.action -->
                                                    </div>
                                                </c:if>
                                                <!-- /.cart -->

                                            </div>
                                        </div>
                                    </div>

                                    <%
                                        }
                                    %>

                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                            <!-- /.product-slider -->
                        </div>
                        <!-- /.tab-pane -->

                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.scroll-tabs -->
            </div>
        </div>
    </div>
</div>

<!--&lt;!&ndash; /#top-banner-and-menu &ndash;&gt; -->

<!-- For demo purposes – can be removed on production -->

<!-- For demo purposes – can be removed on production : End -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap-hover-dropdown.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/echo.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/jquery.easing-1.3.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap-slider.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/jquery.rateit.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/scripts.js"></script>
</body>
</html>
