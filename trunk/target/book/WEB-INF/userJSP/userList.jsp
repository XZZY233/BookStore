<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/statics/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户列表</title>
    <style type="text/css">
        .searchbox{
            margin:-6;
        }
    </style>

    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                //支持多条件查询
                url:'<%=bathPath%>/user/query',
                fitColumns:true,
                nowrapL:true,
                idField:'uId',
                rownumbers:true,
                pagination:true,
                pageSize:10,
                pageList:[5,10,20,30,50],

                queryParams: {
                    uName: '%%'
                },

                toolbar: [{
                    iconCls: 'icon-add',
                    text:'新增',
                    handler: function(){
                        parent.$('#win').window({
                            title :'添加用户',
                            width:900,
                            height:500,
                            modal:true,
                            content:"<iframe src='<%=bathPath%>/base/goURL/userJSP/userAdd' height='100%' width='100%' frameborder='0px' ></iframe>"
                        });
                    }
                },'-',{
                    iconCls: 'icon-edit',
                    text:'修改',
                    handler: function(){
                        //判断是否选中一行，并且只能选中一行进行修改
                        var array = $('#dg').datagrid("getSelections");
                        if(array.length!=1){
                            alert("请选择需要修改的记录，并且只能选中一条！");
                            return false;
                        }

                        //打开修改窗口
                        parent.$('#win').window({
                            title :'修改用户信息',
                            width:900,
                            height:500,
                            modal:true,
                            content:"<iframe src='<%=bathPath%>/base/goURL/userJSP/userUpdate' height='100%' width='100%' frameborder='0px' ></iframe>"
                        });

                    }
                },'-',{
                    iconCls: 'icon-remove',
                    text:'删除',
                    handler: function(){
                        var array = $('#dg').datagrid("getSelections");
                        if(array.length>0){
                            //定义数组，通过下边的用来存储选中记录的Id
                            var ids = new Array();
                            for (var i = 0; i < array.length; i++) {
                                ids[i] = array[i].uId;
                            }
                            //如果需要锁整个页面，前面加parent.
                            parent.$.messager.confirm('删除对话框', '您确认要删除吗？', function(r) {
                                if (r) {
                                    $.ajax({
                                        url: "<%=bathPath%>/user/deleteList",
                                        type:"POST",
                                        //设置为传统方式传送参数
                                        traditional:true,
                                        data:{pks:ids},
                                        dataType:'json',
                                        success: function(html){
                                            if(html>0){
                                                alert("恭喜您 ，删除成功，共删除了"+html+"条记录");
                                            }else{
                                                alert("对不起 ，删除失败");
                                            }
                                            //重新刷新页面
                                            $("#dg").datagrid("reload");
                                            //请除所有勾选的行
                                            $("#dg").datagrid("clearSelections");
                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            $.messager.alert('删除错误','请联系管理员！','error');
                                        }

                                    });
                                }
                            });

                        }else{
                            alert("请选择需要删除的记录！");
                        }
                    }
                },'-',{
                    text:"用户名称：&nbsp;&nbsp;<input type='text' id='uName' name='uName'/>",
                }],


                columns : [[{
                    checkbox:true,
                }, {
                    field : 'uId',
                    title : '用户编号',
                    hidden: true
                }, {
                    field : 'uName',
                    title : '用户名',
                    width : 300
                },{
                    field : 'uPwd',
                    title : '密码',
                    width : 80
                },{
                    field : 'uTel',
                    title : '联系电话',
                    width : 100
                },{
                    field : 'uAddress',
                    title : '地址',
                    width : 200
                }, {
                    field : 'uGender',
                    title : '性别',
                    width : 50
                }, {
                    field : 'uOnline',
                    title : '是否在线',
                    width : 80,
                }]]
            });

            //通过关键字查询
            $('#uName').searchbox({
                searcher:function(value,name){
                    $('#dg').datagrid('load',{
                        keyWord: '%'+value+'%'
                    });
                },
                prompt:'请输入用户名称'
            });
        });
    </script>
</head>
<body>
<b>在线总人数：${onLineNumber}</b>
<table id="dg"></table>
</body>
</html>