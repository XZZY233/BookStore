<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="utf-8"%>
<%@ include file="/statics/common/common.jsp"%>
<html>
<head>
<title>修改个人密码</title>
<script type="text/javascript">
	function validatePassword(value)
	{
		var flag =false;
	    var aId=$("#aId").val();
	    $.ajax({
			  url: "<%=bathPath%>/admin/validatepasswordok",
			  type:"POST",
			  //设置为传统方式传送参数
			  traditional:true,
			  data:{aPwd:value,aId:aId},
			  dataType:'json',
			  success: function(result){
				  if(result==0){
					  flag= false;
					  $("#partnerMsg").text("注：你输入的原始密码不正确，请重新输入...");
				  }else{
					  flag=true;
					  $("#partnerMsg").text("");
				  }
			  },
			  error: function (XMLHttpRequest, textStatus, errorThrown) {
				    $.messager.alert('输入错误','请联系管理员处理！','error');
				}
		});
	    
	    return flag;
	}

	function repeatvalidatemsg(value)
	{
		var flag = false;
		if(value=="")
		{
			$("#partnerMsg").text("注：请输入新密码...");
			flag= false;
		}
		else
	    {
			var reppwd=$("#newpasswordrep").val();
			if(reppwd=="")
			{
				$("#partnerMsg").text("注：请输入确认密码...");
				flag= false;
			}else
		    {
				if(value!=reppwd)
				{
					$("#partnerMsg").text("注：输入新密码与确认不匹配,请重新输入确认密码...");
					flag= false;
				}else
			    {
					$("#partnerMsg").text("");
					flag = true;
			    }
		    }	
	    }
		
		return flag;
	}
	
	function validatetwopassword(value) {
		var newPwd=$("#newpassword").val();
		if(newPwd=="")
		{
			$("#partnerMsg").text("注：请先输入新密码...");
			return false;
		}
		
		if(value=="")
		{
			$("#partnerMsg").text("注：请输入确认密码...");
			return false;
		}else
	    {
			$("#partnerMsg").text("");
	    }	
		
		if(value!=newPwd)
		{
			$("#partnerMsg").text("注：输入新密码与确认不匹配,请重新输入确认密码...");
			return false;
		}else
	    {
			$("#partnerMsg").text("");
	    }
		
		return true;
	}

</script>
</head>
<body class="mybody">
	<form id="ff" class="myfm" method="post">
		<div class="myftitle">请输入信息</div>
		<div class="myfitem">
			<input type="hidden"
				name="aId" id="aId" value="${sessionScope.admin.aId }"/>
		</div>
		<div class="myfitem">
			<label for="aPwd">原始密码:</label><input type="password" class="easyui-validatebox"
				name="aPwd" id="aPwd" onblur="return validatePassword(this.value)" missingMessage="请输入原始密码"  data-options="required:true,textField:'text'"/>
		</div>
		<div class="myfitem">
			<label for="newpassword">新&nbsp;&nbsp;密&nbsp;码:</label><input type="password" class="easyui-validatebox" 
			name="newpassword" id="newpassword" missingMessage="请输入新密码" onblur="repeatvalidatemsg(this.value);" data-options="required:true,textField:'text'"/>
		</div>
		<div class="myfitem">
			<label for="newpasswordrep">确认密码:</label><input type="password" class="easyui-validatebox"
				name="newpasswordrep" id="newpasswordrep" onblur="return validatetwopassword(this.value);" missingMessage="请输入确认密码"  data-options="required:true,textField:'text'"/>
		</div><hr>
		<div class="myfitem">
		<span id="partnerMsg" style="color: red;"></span></div>
		<hr>
		<div class="myfitem" align="center">
			<a id="btn" href="#" class="easyui-linkbutton">提交</a> <a id="btn2"
				href="#" class="easyui-linkbutton"
				onclick="javascript:parent.$('#win').window('close');">关闭</a>
		</div>
	</form>

	<script type="text/javascript">
		$(function() {
			//禁用验证
			$("#ff").form("disableValidation");

			$("#btn").click(function() {
				$("#ff").form("enableValidation");
				if ($("#ff").form("validate")) {
					var msg = $("#partnerMsg").text();
					if(msg!="")
					{
						alert(msg);
						return;
					}
					
					//获取值
					var aid=$("#aId").val();
					var newPwd=$("#newpassword").val();
					
					$.ajax({
						url : "<%=bathPath%>/admin/updatepwd",
						type : "POST",
						//设置为传统方式传送参数
						traditional : true,
						data : {
							aId : aid,
							newPassword:newPwd
						},
						dataType : 'json',
						success : function(result) {
							if (result > 0) {
								alert("恭喜您 ，修改密码成功.");
							} else {
								alert("对不起 ，修改密码失败.");
							}
							parent.$("#win").window("close");
						},
						error : function(XMLHttpRequest,textStatus,errorThrown) {
							$.messager.alert('修改错误','请联系管理员！','error');
						}
					});
				}
			});
		});
	</script>
</body>
</html>
