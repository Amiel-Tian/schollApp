/*获取当前登录用户u*/
getNowAdmin();

$(".title_li").click(function () {
    $(".iframe").attr("src",$(this).attr("src"))
})

/*菜单打开关闭*/
var shou = true
if ($(".content_title").css("width")=="200px"){
    shou = false
}
if ($(".content_title").css("width")=="0"){
    shou = true
}
$(".user").click(function () {
    if (shou){
        $(".content_title").css("width","200px")
        shou = false
    }else {
        $(".content_title").css("width","0")
        shou = true
    }
})
$(document).ready(function () { $('html').css({'height':$(window).height()})});
