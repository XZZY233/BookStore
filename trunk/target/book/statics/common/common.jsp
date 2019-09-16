<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String bathPath = request.getContextPath();
	pageContext.setAttribute("bathPath",bathPath);
%>
<link rel="stylesheet" type="text/css"
	href="<%=bathPath%>/statics/jquery-easyui-1.3.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=bathPath%>/statics/jquery-easyui-1.3.5/themes/icon.css">
<script type="text/javascript" src="<%=bathPath%>/statics/jquery-easyui-1.3.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=bathPath%>/statics/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=bathPath%>/statics/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=bathPath%>/statics/js/common.js"></script>
<link rel="stylesheet" href="<%=bathPath%>/statics/css/mycss.css" type="text/css"></link>
<script type="text/javascript" src="<%=bathPath%>/statics/js/jscharts.js"></script>
<link rel="stylesheet" href="<%=bathPath%>/statics/css/my.css" type="text/css"></link>


