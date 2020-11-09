/*

内部页面
同名公用类添加事件
函数集合
* */
getNowAdmin();//当前是否登录用户

agin();//刷新
search();//搜索动作
build();//新建动作
seeImg();//点击查看图片
godelete();//删除动作

/*弹出框关闭动作*/
$(".close").click(function () {
    closeTan();//关闭弹窗
})
function closeTan() {
    $(".tan_kuang").css("display", "none")
    $(".tan").css("display", "none")

}

/*弹出框开启动作，以及添加*/
function addTan(img_page){
    $(".table_li").click(function () {
        $(".tan_content").css("display","block")
        $(".tan").css("display","block")

        var tanc = $(".tan_content").children().children(".value")
        var lic = $(this).children()

        for (let i = 0; i < lic.length; i++) {
            tanc.eq(i).val(lic.eq(i).text())
            if (i == img_page){
                tanc.eq(i).attr("title",lic.eq(i).text())
                tanc.eq(i).val("点击查看图片")
            }
        }
    })
}
/*弹出框打开图片*/
function seeImg(){
    $(".value_img").click(function () {
        $(".tan_img").css("display","block")
        $(".tan_img").css("background-image","url(http://wuqiu.vaiwan.com/"+ $(this).attr("title") +")")
    })
    $(".tan_img").click(function () {
        $(this).css("display","none")
    })
}


/*刷新动作*/
function agin() {
    $(".agin").click(function () {
        location.reload()
    })
}
/*搜索动作*/
function search() {
    $(".search").click(function () {
        $(".tan_search").css("display","block")
        $(".tan").css("display","block")
    })
}
/*新建动作*/
function build() {
    $(".build").click(function () {
        $(".tan_build").css("display","block")
        $(".tan").css("display","block")
    })
}
/*删除动作*/
function godelete() {
    $(".delete").click(function () {
        alert("您当前无此权限！")
    })
}

/*换页操作*/
function setpage(){
    var table_li = $(".data");

    var content_len = table_li.length;
    var allpage=Math.ceil(content_len/10);
    if (allpage==0) allpage=1
    var nowpage = 1;
    ready()
    /*添加事件，上一页*/
    $(".pagup").click(function () {

        console.log("上一页")
        if (nowpage > 1){
            nowpage--;
            gopage(nowpage);
        }
    })
    /*添加事件，下一页*/
    $(".pagnext").click(function () {
        console.log("下一页")
        if (nowpage < allpage){
            nowpage++;
            gopage(nowpage);
        }
    })

    /*准备工作，只显示前十条数据*/
    function ready(){
        if(content_len > 10){
            for(var i = 10; i < content_len; i++){
                table_li.eq(i).css("display","none");
            }
        }
        $(".allpage").text(allpage);
        $(".nowpage").text(nowpage);
        /*清除原有绑定事件*/
        $(".pagup").unbind()
        $(".pagnext").unbind()
    }
    /*跳转页面至第几页*/
    function gopage(page) {
        if (page => 1 && page <= allpage){
            for(var i = 0; i < content_len; i++){
                if(i >= ((page * 10) - 10) && i <= ((page * 10)-1))
                    table_li.eq(i).css("display","flex");
                else
                    table_li.eq(i).css("display","none");
            }
            $(".nowpage").text(nowpage);
        }
    }
}


