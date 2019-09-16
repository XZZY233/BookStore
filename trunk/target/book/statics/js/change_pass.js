function submitTest() {
    var a = document.getElementById("password_first").value;
    var b = document.getElementById("password_second").value;
    if (a == null && b == null || a == "" && b == "") { //两次密码为空
        alert("要修改的密码不能为空！")
        return false; //只有返回true表单才会提交
    } else if (a == null || a == "") { //用户框value值为空
        alert("密码不能为空");
        return false;
    } else if (b == null || b == "") { //密码框value值为空
        alert("密码不能为空");
        return false;
    }else if (a!=b){
        alert("两次密码必须一致！")
        return false;
    }
}