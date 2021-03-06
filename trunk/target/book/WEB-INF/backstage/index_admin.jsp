<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="utf-8"%>
<%@include file="/statics/common/common.jsp"%>
<html>
<head>
    <title></title>
    <style type="text/css">
        a{
            text-decoration:none;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            $("a[title]").click(function() {
                var text = this.href;
                //判断是否存在
                if($('#tt').tabs("exists",this.title)){
                    //存在则选中
                    $('#tt').tabs("select",this.title);
                }else{
                    $('#tt').tabs('add', {
                        title:this.title,
                        //面板有关闭按键
                        closable:true,
                        //href对远程页面js的支持不好
                        //href: text
                        //可以加载内容填充到选项卡，页面有Js时，也可加载
                        content:"<iframe src='"+text+"' title='"+this.title+"' height='100%' width='100%' frameborder='0px' ></iframe>"
                    });
                }
                return false;
            });


            $("#pwd").click(function(){
                $('#win').window({
                    title :'修改个人密码',
                    width:600,
                    height:300,
                    modal:true,
                    content:"<iframe src='<%=bathPath%>/base/goURL/backstage/modifypwd' height='100%' width='100%' frameborder='0px' ></iframe>"
                });
            });
        });
    </script>

</head>


<body class="easyui-layout">
<!-- 头部 -->
<div class="wu-header" data-options="region:'north',border:false,split:true">
    <div class="wu-header-left">
        <h1>华轩书海商城后台管理界面</h1>
    </div>
    <div class="wu-header-right">
        <p>欢迎您:&nbsp;<strong class="easyui-tooltip" style="font-size: 28px;">${sessionScope.admin.aName}</strong>
            &nbsp;|&nbsp;<a  href="#" id="pwd">修改密码</a>&nbsp;|&nbsp;<a href="${bathPath }/admin/logout">安全退出</a></p>
    </div>
</div>
<!-- 左边导航 -->
<div data-options="region:'west',title:'导航菜单',split:true"
     style="width:160px;">
    <div id="aa" class="easyui-accordion"
         style="width:152px;height:320px;">
        <div title="用户信息管理">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;">
                <li style="padding: 6px;"><a href="${bathPath }/base/goURL/userJSP/userList" title="用户列表"
                                             style="text-decoration: none;display: block;font-weight:bold;">用户列表</a>
                </li>
            </ul>
        </div>

        <div title="图书信息管理">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;">
                <li style="padding: 6px;"><a href="${bathPath }/base/goURL/manageBooks/booksList" title="图书列表"
                                             style="text-decoration: none;display: block;font-weight:bold;">管理图书</a>
                </li>
                <li style="padding: 6px;"><a href="${bathPath }/base/goURL/manageType/typeList" title="种类列表"
                                             style="text-decoration: none;display: block;font-weight:bold;">管理图书种类</a>
                </li>
            </ul>
        </div>

    </div>
</div>

<!-- 主体内容 -->
<div data-options="region:'center',title:'主要信息'"
     style="padding:5px;background:#eee;">

    <div id="tt" class="easyui-tabs" data-options="fit:true"
         style="width:500px;height:250px;">

        <div title="欢迎使用" style="padding:40 0 0 40px">
            欢迎:&nbsp;&nbsp;<span style="font-size: 40px; color: red;">${sessionScope.admin.aName}</span>
            （${sessionScope.admin.aGender}），&nbsp;&nbsp;使用华轩书海商城后台管理系统。
            <c:if test="${sessionScope.admin.aGender=='女士'}"><img src="${bathPath }/statics/images/woman.gif"/></c:if>
            <c:if test="${sessionScope.admin.aGender=='先生'}"><img src="${bathPath }/statics/images/man.gif"/></c:if>
        </div>

    </div>

</div>
<div id="win" ></div>
<!-- end of main -->
<!-- begin of footer -->
<div class="wu-footer" data-options="region:'south',border:true,split:true">
    &copy; 2017 Alex All Rights Reserved
</div>
</body>
</html>
