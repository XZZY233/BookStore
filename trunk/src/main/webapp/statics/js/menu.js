$(document).ready(function () {
    $(".li1").mouseover(function () {
        $(this).css("border","none");
        $(this).children("div").show();
    }).mouseout(function () {
        $(this).css("border","1px solid #78b5d9");
        $(this).children("div").hide();
    });
    $(".bname").mouseover(function () {
        $(this).css({"color":"orange"});
    }).mouseout(function () {
        $(this).css({"color":"black"});
    });
});