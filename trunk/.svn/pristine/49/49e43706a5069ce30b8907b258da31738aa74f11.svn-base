
//用户框失去焦点后验证value值
function oBlur_1() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    if (!a) { //用户框value值为空
        document.getElementById("remind_1").setAttribute("placeholder","账号不能为空！")
        document.getElementById("change_margin_1").style.marginBottom = 1 + "px";
    } else { //用户框value值不为空
        document.getElementById("change_margin_1").style.marginBottom = 19 + "px";
    }
}

//密码框失去焦点后验证value值
function oBlur_2() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    if (!b) { //密码框value值为空
        document.getElementById("remind_2").setAttribute("placeholder","密码不能为空！")
        document.getElementById("change_margin_2").style.marginBottom = 1 + "px";
        document.getElementById("change_margin_3").style.marginTop = 2 + "px";
    } else { //密码框value值不为空
        document.getElementById("change_margin_2").style.marginBottom = 19 + "px";
        document.getElementById("change_margin_3").style.marginTop = 19 + "px";
    }
}

//确认密码框失去焦点后验证value值
function oBlur_3() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    var c =  document.getElementById("remind_3").value;
    if (!c) { //密码框value值为空
        document.getElementById("remind_2").setAttribute("placeholder","确认密码不能为空！")
        document.getElementById("change_margin_4").style.marginBottom = 1 + "px";
        document.getElementById("change_margin_3").style.marginTop = 2 + "px";
    } else if (c) { //密码框value值不为空
        document.getElementById("change_margin_4").style.marginBottom = 19 + "px";
        document.getElementById("change_margin_3").style.marginTop = 19 + "px";
    }else if (b!=c) {
        document.getElementById("remind_2").setAttribute("placeholder","俩次密码必须一致！")
        document.getElementById("change_margin_4").style.marginBottom = 1 + "px";
        document.getElementById("change_margin_3").style.marginTop = 2 + "px";
    }
}
//昵称框失去焦点后验证value值
function oBlur_4() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    var d=document.getElementById("remind_4").value;
    if (!b) { //昵称value值为空
        document.getElementById("remind_2").setAttribute("placeholder","昵称不能为空！")
        document.getElementById("change_margin_5").style.marginBottom = 1 + "px";
        document.getElementById("change_margin_3").style.marginTop = 2 + "px";
    } else { //昵称value值不为空
        document.getElementById("change_margin_5").style.marginBottom = 19 + "px";
        document.getElementById("change_margin_3").style.marginTop = 19 + "px";
    }
}


//用户框获得焦点
function oFocus_1() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    document.getElementById("change_margin_1").style.marginBottom = 19 + "px";
}

//密码框获得焦点的
function oFocus_2() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    document.getElementById("change_margin_2").style.marginBottom = 19 + "px";
    document.getElementById("change_margin_3").style.marginTop = 19 + "px";
}

//若输入框为空，阻止表单的提交
function submitTest() {
    var a=document.getElementById("remind_1").value;
    var b =  document.getElementById("remind_2").value;
    if (a==null && b==null||a==""&&b=="") { //用户框value值和密码框value值都为空
        alert("账号和密码不能为空！")
        return false; //只有返回true表单才会提交
    } else if (a==null||a=="") { //用户框value值为空
        alert("账号不能为空");
        return false;
    } else if (b==null||b=="") { //密码框value值为空
        alert("密码不能为空");
        return false;
    }
}