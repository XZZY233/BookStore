<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/statics/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>种类列表</title>
    <style type="text/css">
        .searchbox{
            margin:-6;
        }
    </style>

    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                //支持多条件查询
                url:'<%=bathPath%>/type/query',
                fitColumns:true,
                nowrapL:true,
                idField:'tId',
                rownumbers:true,
                pagination:true,
                pageSize:10,
                pageList:[5,10,20,30,50],

                queryParams: {
                    tName: '%%'
                },

                toolbar: [{
                    iconCls: 'icon-add',
                    text:'新增',
                    handler: function(){
                        parent.$('#win').window({
                            title :'添加种类',
                            width:900,
                            height:500,
                            modal:true,
                            content:"<iframe src='<%=bathPath%>/base/goURL/manageType/typeAdd' height='100%' width='100%' frameborder='0px' ></iframe>"
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
                            title :'修改种类信息',
                            width:900,
                            height:500,
                            modal:true,
                            content:"<iframe src='<%=bathPath%>/base/goURL/manageType/typeUpdate' height='100%' width='100%' frameborder='0px' ></iframe>"
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
                                ids[i] = array[i].tId;
                            }
                            //如果需要锁整个页面，前面加parent.
                            parent.$.messager.confirm('删除对话框', '您确认要删除吗？', function(r) {
                                if (r) {
                                    $.ajax({
                                        url: "<%=bathPath%>/type/deleteList",
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
                                            $.messager.alert('删除错误','该种类下，已存在图书，不可删除！','error');
                                        }

                                    });
                                }
                            });

                        }else{
                            alert("请选择需要删除的记录！");
                        }
                    }
                },'-',{
                    text:"种类名称：&nbsp;&nbsp;<input type='text' id='tName' name='tName'/>",
                }],


                columns : [[{
                    checkbox:true,
                }, {
                    field : 'tId',
                    title : '种类编号',
                    hidden: true
                }, {
                    field : 'tName',
                    title : '种类名',
                    width : 300
                }]]
            });


            //通过关键字查询
            $('#tName').searchbox({
                searcher:function(value,name){
                    $('#dg').datagrid('load',{
                        keyWord: '%'+value+'%'
                    });
                },
                prompt:'请输入种类名称'
            });
        });
    </script>
</head>
<body>
<b>管理种类：</b>
<table id="dg"></table>
</body>
</html>