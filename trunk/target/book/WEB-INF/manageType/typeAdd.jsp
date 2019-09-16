<%@ page language="java" isELIgnored="false" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/statics/common/common.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>添加种类</title>
    <style>
        .add_form{
            position: relative;
            left: -5vh;
            top: 23vh;
            text-align: center;
        }
        li{
            list-style: none;
        }
    </style>

    <script type="text/javascript">
        function validateTName(value)
        {
            $.ajax({
                url: "<%=bathPath%>/type/validatetypeisexsit",
                type:"POST",
                //设置为传统方式传送参数
                traditional:true,
                data:{tName:value},
                dataType:'json',
                success: function(result){
                    if(result>0){
                        $("#msg").text("该种类已经存在，无需再次添加！");
                    }else{
                        $("#msg").text("");
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $.messager.alert('输入错误','请联系代码管理员处理！','error');
                }
            });
        }

    </script>
</head>
<body>
<div class="add_form">
    <form id="ff" method="post" >
        <ul>
            <li>种类名称: <input type="text" class="easyui-textbox" name="tName" onblur="validateTName(this.value)" style="width: 200px"></li><br>
            <li><em id="msg" style="color: red;"></em></li>
        </ul>
        <a id="btn" href="#" class="easyui-linkbutton" >提交</a>
        <a id="btn2" href="#" class="easyui-linkbutton" onclick="javascript:parent.$('#win').window('close');" >关闭</a>

    </form>
</div>

</body>
<script type="text/javascript">
    $(function() {
        var win = parent.$("iframe[title='种类列表']").get(0).contentWindow;
        //返回ifram页面窗体对象（window)

        $("[name='tNme']").validatebox({
            required : true,
            missingMessage : '请填写种类名！'
        });

        //禁用验证
        $("#ff").form("disableValidation");


        $("#btn").click(function() {
            $("#ff").form("enableValidation");
            if ($("#ff").form("validate")) {
                $('#ff').form('submit', {
                    url : '<%=bathPath%>/type/insert',
                    onSubmit : function() {
                        return true;
                    },
                    success : function(count) {
                        //可以定义为对应消息框
                        if(count>0){
                            alert("添加成功！");
                        }else{
                            alert("添加失败！");
                        }
                        parent.$("#win").window("close");
                        win.$("#dg").datagrid("reload");
                        //清除所有勾选的行
                        win.$("#dg").datagrid("clearSelections");
                    }
                });
            }
        });
    });
</script>
</html>
