<%@ page language="java" isELIgnored="false" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/statics/common/common.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>创建用户</title>
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
        function validateUTel(value)
        {
            $.ajax({
                url: "<%=bathPath%>/user/validateuserisexsit",
                type:"POST",
                //设置为传统方式传送参数
                traditional:true,
                data:{uTel:value},
                dataType:'json',
                success: function(result){
                    if(result>0){
                        $("#msg").text("该手机号已注册，请重新输入...");
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
            <li>用户名: <input type="text" class="easyui-textbox" name="uName" style="width: 200px"></li><br>
            <li>密&nbsp;&nbsp;&nbsp;码: <input type="password" class="easyui-textbox" name="uPwd" style="width: 200px" ></li><br>
            <li>电&nbsp;&nbsp;&nbsp;话: <input type="tel" class="easyui-textbox" name="uTel" onblur="validateUTel(this.value)" style="width: 200px"></li><br>
            <li>地&nbsp;&nbsp;&nbsp;址: <input type="text" class="easyui-textbox" name="uAddress" style="width: 200px" placeholder="选填"></li><br>
            <li> <input type="radio" value="男" name="uGender">男 <input type="radio" value="女" name="uGender">女</li><br>
            <li><em id="msg" style="color: red;"></em></li>
        </ul>
        <a id="btn" href="#" class="easyui-linkbutton" >提交</a>
        <a id="btn2" href="#" class="easyui-linkbutton" onclick="javascript:parent.$('#win').window('close');" >关闭</a>

    </form>
</div>

</body>
<script type="text/javascript">
    $(function() {
        var win = parent.$("iframe[title='用户列表']").get(0).contentWindow;
        //返回ifram页面窗体对象（window)

        $("[name='uNme']").validatebox({
            required : true,
            missingMessage : '请填写用户名！'
        });

        $("[name='uPwd']").validatebox({
            required : true,
            missingMessage : '请填写密码！'
        });

        $("[name='uTel']").validatebox({
            required : true,
            missingMessage : '请填写联系电话！'
        });


        //禁用验证
        $("#ff").form("disableValidation");


        $("#btn").click(function() {
            $("#ff").form("enableValidation");
            if ($("#ff").form("validate")) {
                $('#ff').form('submit', {
                    url : '<%=bathPath%>/user/insert',
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
