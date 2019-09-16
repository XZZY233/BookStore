<%@ page language="java" isELIgnored="false" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/statics/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>确认收货</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/showPersonal.css">
    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                //支持多条件查询
                url:'<%=bathPath%>/orderBook/myCargo',
                fitColumns:true,
                nowrapL:true,
                idField:'oId',
                rownumbers:true,
                pagination:true,
                pageSize:10,
                pageList:[5,10,20,30,50],

                queryParams: {
                    oId: '%%'
                },
                toolbar:[{
                    iconCls: 'icon-remove',
                    text:'确认收货',
                    handler: function(){
                        var array = $('#dg').datagrid("getSelections");
                        if(array.length>0){
                            //定义数组，通过下边的用来存储选中记录的Id
                            var ids = new Array();
                            for (var i = 0; i < array.length; i++) {
                                ids[i] = array[i].oId;
                            }
                            //如果需要锁整个页面，前面加parent.
                            parent.$.messager.confirm('确认对话框', '确认后商家将收到尾款（如遇问题需进行售后管理），您确认收货吗？', function(r) {
                                if (r) {
                                    $.ajax({
                                        url: "<%=bathPath%>/orderBook/confirmReceipt",
                                        type:"POST",
                                        //设置为传统方式传送参数
                                        traditional:true,
                                        data:{pks:ids},
                                        dataType:'json',
                                        success: function(g){
                                            if(g>0){
                                                alert("恭喜您 ，收货成功");
                                            }else{
                                                alert("对不起 ，确认失败");
                                            }
                                            //重新刷新页面
                                            $("#dg").datagrid("reload");
                                            //请除所有勾选的行
                                            $("#dg").datagrid("clearSelections");
                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            $.messager.alert('确认错误','请联系管理员！','error');
                                        }

                                    });
                                }
                            });

                        }else{
                            alert("请选择以收到的货物！");
                        }
                    }

                }],
                columns : [[{
                    checkbox:true,
                }, {
                    field : 'uId',
                    title : '用户编号',
                    hidden: true
                }, {
                    field : 'oId',
                    title : '订单号',
                    hidden: true
                },{
                    field : 'uName',
                    title : '用户名',
                    hidden: true
                },{
                    field : 'uTel',
                    title : '联系电话',
                    hidden: true
                },{
                    field : 'uAddress',
                    title : '地址',
                    hidden: true
                }, {
                    field : 'bId',
                    title : '图书编号',
                    hidden: true
                }, {
                    field : 'bName',
                    title : '书名',
                    width : 60
                }, {
                    field : 'bPrice',
                    title : '单价',
                    width : 40
                }, {
                    field : 'number',
                    title : '数量',
                    width : 38
                },{
                    field : 'oPrice',
                    title : '总价',
                    width : 38
                },{
                    field : 'oOver',
                    title : '是否完成',
                    hidden: true
                },{
                    field : 'oDate',
                    title : '订单时间',
                    width : 100,
                    formatter: function(value,row,index){
                        var date = new Date(value);
                        var year = date.getFullYear().toString();
                        var month = (date.getMonth() + 1);
                        var day = date.getDate().toString();
                        var hour = date.getHours().toString();
                        var minutes = date.getMinutes().toString();
                        var seconds = date.getSeconds().toString();
                        if (month < 10) {
                            month = "0" + month;
                        }
                        if (day < 10) {
                            day = "0" + day;
                        }
                        if (hour < 10) {
                            hour = "0" + hour;
                        }
                        if (minutes < 10) {
                            minutes = "0" + minutes;
                        }
                        if (seconds < 10) {
                            seconds = "0" + seconds;
                        }
                        return year + "-" + month + "-" + day + " " + hour + ":" + minutes + ":" + seconds;
                    }
                }]]
            });
        });
    </script>
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
            <p>  <a href="">&nbsp;我的订单</a></p>
            <p><a href="${pageContext.request.contextPath}/books/list">&nbsp;返回首页</a></p>
        </div>
    </div>
    <div id="showData">
        <h3>卐确认收货卍</h3>
        <br><br>
        <hr/>
        <table id="dg"></table>
    </div>
</section>
<footer>
    <%@include file="/WEB-INF/jsp/indexpage/index_bottom.jsp"%>
</footer>
</body>
</html>
