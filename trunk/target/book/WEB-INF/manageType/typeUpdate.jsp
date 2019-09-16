<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ include file="/statics/common/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>修改种类</title>
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
            var tId=$("#tId").val();
            $.ajax({
                url: "<%=bathPath%>/type/validateupdatetypeisexsit",
                type:"POST",
                //设置为传统方式传送参数
                traditional:true,
                data:{tName:value,tId:tId},
                dataType:'json',
                success: function(result){
                    if(result>0){
                        $("#msg").text("该种类名已存在，请重新输入！");
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
            <li><input type="hidden" class="easyui-textbox" name="tId" id="tId" style="width: 200px"></li>
            <li>种类名称: <input type="text" class="easyui-textbox" name="tName" onblur="validateTName(this.value)" style="width: 200px"></li><br>
            <li><em id="msg" style="color: red;"></em></li>
        </ul>
        <a id="btn" href="#" class="easyui-linkbutton" >提交</a>
        <a id="btn2" href="#" class="easyui-linkbutton" onclick="javascript:parent.$('#win').window('close');" >关闭</a>

    </form>
</div>
<script type="text/javascript">
    $(function() {
        var win = parent.$("iframe[title='种类列表']").get(0).contentWindow;//返回ifram页面窗体对象（window)

        var row = win.$('#dg').datagrid("getSelected");

        //赋值
        $('#ff').form('load',{
            tId:row.tId,
            tName:row.tName,
        });


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
                    url : '<%=bathPath%>/type/update',
                    onSubmit : function() {
                        return true;
                    },
                    success : function(count) {
                        //可以定义为对应消息框
                        if(count>0){
                            alert("修改成功！");
                        }else{
                            alert("修改失败！");
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
</body>
</html>