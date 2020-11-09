/*
*
* 进入验证
* ajax请求
* 获取数据
*
*
* */
// 登录验证;
function login(){
    var param = {}
    param.user=$("#user").val();
    param.pass=$("#pass").val();
    $("#btn").val("登录中...")
    $("#btn").attr("disabled","disabled")
    $.ajax({
        type: "post",
        url: "isAdmin",
        dataType: "json",
        data: param,
        success: function (data) {
            if (data) window.location="admin"
            else alert("登录失败")
            $("#btn").val("登录")
            $("#btn").removeAttr("disabled")
        },
        error:function (data) {
            alert("服务器错误")
        }
    })
}

/*获取当前登录用户u*/
function getNowAdmin() {
    var param = {}
    $.ajax({
        type: "post",
        url: "getNowAdmin",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            if (data.id == "0"){
                window.location="index"

            }else {
                $(".user").text(data.user)
                if (data.power==1) $(".title_log").css("display","block")
            }
        },
        error:function (data) {
            alert("服务器错误")
        }
    })
}

/*获取所有用户*/
function getUsers() {
    var param = {}
    $(".table").empty();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>学号/工号</span><span>姓名</span><span>身份</span><span>入学时间</span><span>专业</span><span>院系</span><span>学院</span></li>\n");
    $.ajax({
        type: "post",
        url: "getUsers",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].type+"</span><span>"+data[i].syear+"</span><span>"+data[i].zhuanye+"</span><span>"+data[i].yuanxi+"</span><span>"+data[i].school+"</span></li>")
            }
           addTan()
            setpage()
        }
    })
}
/*搜索用户*/
function searchUser() {
    var param = {}
    param.type=$("#lei").val()
    param.value=$("#how").val();
    $(".table").empty();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>学号/工号</span><span>姓名</span><span>身份</span><span>入学时间</span><span>专业</span><span>院系</span><span>学院</span></li>\n");
    $.ajax({
        type: "post",
        url: "searchUser",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].type+"</span><span>"+data[i].syear+"</span><span>"+data[i].zhuanye+"</span><span>"+data[i].yuanxi+"</span><span>"+data[i].school+"</span></li>")
            }
           addTan()
            setpage()
            closeTan()
        }
    })
}
/*修改用户*/
function modifyUser() {
    var param = {}
    param.id=$("#id").val()
    param.sno=$("#sno").val();
    param.sname=$("#sname").val();
    param.syear=$("#syear").val();
    param.zhuanye=$("#zhuanye").val();
    param.yuanxi=$("#yuanxi").val();
    param.type=$("#type").val();
    param.school=$("#school").val();
    // console.log(param)
    $.ajax({
        type: "post",
        url: "modifyUser",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
                closeTan()
                location.reload()
        }
    })
}
/*获取所有管理员*/
function getAdmins() {
    var param = {}
    $(".table").empty();
    $(".table").append("    <li class=\"table_li\"><span>id</span><span>用户名</span><span>密码</span><span>身份</span><span>权限</span></li>\n")
    $.ajax({
        type: "post",
        url: "getAdmins",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].user+"</span><span>"+"****"+"</span><span>管理员</span><span>"+data[i].power+"</span></li>")
            }
            addTan()
            setpage()
        }
    })
}
/*搜索管理员*/
function searchAdmin() {
    var param = {}
    param.type=$("#lei").val()
    param.value=$("#how").val();
    // console.log(param)
    $(".table").empty();
    $(".table").append("    <li class=\"table_li\"><span>id</span><span>用户名</span><span>密码</span><span>身份</span><span>权限</span></li>\n")
    $.ajax({
        type: "post",
        url: "searchAdmin",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].user+"</span><span>"+"****"+"</span><span>管理员</span><span>"+data[i].power+"</span></li>")
            }
            addTan()
            setpage()
            closeTan()
        }
    })
}
/*获取报修列表*/
function getRepairs() {
    var param = {}
    $(".table").empty();
    $(".table").append("    <li class=\"table_li\"><span>id</span><span>报修人学号</span><span>报修人姓名</span><span>报修时间</span><span>地址</span><span>详情</span><span>图片</span><span>状态</span></li>\n")
    $.ajax({
        type: "post",
        url: "getRepairs",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].time+"</span><span>"+data[i].add+"</span><span>"+data[i].deta+"</span><span>"+data[i].photo+"</span><span>"+data[i].state+"</span></li>")
            }
            addTan(6)
            setpage()
        }
    })
}
/*查询报修列表*/
function searchRepairs() {
    var param = {}
    param.type=$("#lei").val()
    param.value=$("#how").val();
    $(".table").empty();
    $(".table").append("    <li class=\"table_li\"><span>id</span><span>报修人学号</span><span>报修人姓名</span><span>报修时间</span><span>地址</span><span>详情</span><span>图片</span><span>状态</span></li>\n")
    $.ajax({
        type: "post",
        url: "searchRepairs",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].time+"</span><span>"+data[i].add+"</span><span>"+data[i].deta+"</span><span>"+data[i].photo+"</span><span>"+data[i].state+"</span></li>")
            }
            addTan(6)
            setpage()
            closeTan()
        }
    })
}
/*修改报修列表*/
function modifyRepair() {
    var param = {}
    param.id=$("#id").val()
    param.sno=$("#sno").val()
    param.sname=$("#sname").val()
    param.time=$("#time").val();
    param.add=$("#add").val();
    param.deta=$("#deta").val();
    param.photo=$("#photo").attr("title");
    param.state=$("#state").val();
    $.ajax({
        type: "post",
        url: "modifyRepair",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
            closeTan()
            location.reload()
        }
    })
}
/*获取失物列表*/
function getLosts() {
    var param = {}
    $(".table").empty();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>拾取人学号</span><span>拾取姓名</span><span>物品</span><span>拾取时间</span><span>图片</span><span>拾取地点</span><span>领取地点</span></li>\n")
    $.ajax({
        type: "post",
        url: "getLosts",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].deta+"</span><span>"+data[i].time+"</span><span>"+data[i].photo+"</span><span>"+data[i].fontadd+"</span><span>"+data[i].getadd+"</span></li>")
            }
           addTan(5)
            setpage()
        }
    })
}
/*搜索失物列表*/
function searchLosts() {
    var param = {}
    param.type=$("#lei").val()
    param.value=$("#how").val();
    $(".table").empty();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>拾取人学号</span><span>拾取人姓名</span><span>物品</span><span>拾取时间</span><span>图片</span><span>拾取地点</span><span>领取地点</span></li>\n")
    $.ajax({
        type: "post",
        url: "searchLosts",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span><span>"+data[i].sno+"</span><span>"+data[i].sname+"</span><span>"+data[i].deta+"</span><span>"+data[i].time+"</span><span>"+data[i].photo+"</span><span>"+data[i].fontadd+"</span><span>"+data[i].getadd+"</span></li>")
            }
            addTan(5)
            setpage()
            closeTan()
        }
    })
}
/*修改失物列表*/
function modifyLost() {
    var param = {}
    param.id=$("#id").val()
    param.sno=$("#sno").val()
    param.sname=$("#sname").val()
    param.deta=$("#deta").val();
    param.time=$("#time").val();
    param.photo=$("#photo").attr("title");
    param.fontadd=$("#fontadd").val();
    param.getadd=$("#getadd").val();
    $.ajax({
        type: "post",
        url: "modifyLost",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
            closeTan()
            location.reload()
        }
    })
}

/*获取跳蚤市场列表*/
function getMarkes() {
    var param = {}
    $(".table").empty();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>出售人学号</span><span>出售人姓名</span><span>物品</span><span>上架时间</span><span>图片</span><span>报价</span><span>领取方式</span></li>\n")
    $.ajax({
        type: "post",
        url: "getMarkes",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>" + data[i].id + "</span><span>" + data[i].sno + "</span><span>" + data[i].sname + "</span><span>" + data[i].deta + "</span><span>" + data[i].time + "</span><span>" + data[i].photo + "</span><span>" + data[i].price + "</span><span>" + data[i].getadd + "</span></li>")
            }
            addTan(5)
            setpage()
        }
    })
}
/*查询跳蚤市场列表*/
function searchMarkes() {
    var param = {}
    $(".table").empty();
    param.type=$("#lei").val()
    param.value=$("#how").val();
    $(".table").append("        <li class=\"table_li\"><span>id</span><span>出售人学号</span><span>出售人姓名</span><span>物品</span><span>上架时间</span><span>图片</span><span>报价</span><span>领取方式</span></li>\n")
    $.ajax({
        type: "post",
        url: "searchMarkes",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>" + data[i].id + "</span><span>" + data[i].sno + "</span><span>" + data[i].sname + "</span><span>" + data[i].deta + "</span><span>" + data[i].time + "</span><span>" + data[i].photo + "</span><span>" + data[i].price + "</span><span>" + data[i].getadd + "</span></li>")
            }
            addTan(5)
            setpage()
            closeTan()
        }
    })
}
/*修改市场列表*/
function modifyMarke() {
    var param = {}
    param.id=$("#id").val()
    param.sno=$("#sno").val()
    param.sname=$("#sname").val()
    param.deta=$("#deta").val();
    param.time=$("#time").val();
    param.photo=$("#photo").attr("title");
    param.price=$("#price").val();
    param.getadd=$("#getadd").val();
    $.ajax({
        type: "post",
        url: "modifyMarke",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
            closeTan()
            location.reload()
        }
    })
}

/*获取新闻列表*/
function getNews() {
    var param = {}
    $(".table").empty();
    $(".table").append("<li class=\"table_li\"><span>id</span><span>类型</span><span>时间</span><span>标题</span><span>内容</span></li>")
    $.ajax({
        type: "post",
        url: "getNews",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>" + data[i].id + "</span><span>" + data[i].type + "</span><span>" + data[i].time + "</span><span>" + data[i].title + "</span><span><xmp>" + data[i].content + "</xmp></span></li>")
            }
            addTan()
            setpage()
        }
    })
}
/*查询新闻列表*/
function searchNews() {
    var param = {}
    $(".table").empty();
    param.type=$("#lei").val()
    param.value=$("#how").val();
    $(".table").append("<li class=\"table_li\"><span>id</span><span>类型</span><span>时间</span><span>标题</span><span>内容</span></li>")
    $.ajax({
        type: "post",
        url: "searchNews",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>" + data[i].id + "</span><span>" + data[i].type + "</span><span>" + data[i].time + "</span><span>" + data[i].title + "</span><span><xmp>" + data[i].content + "</xmp></span></li>")
            }
            addTan()
            setpage()
            closeTan();
        }
    })
}

/*修改新闻列表*/
function modifyNew() {
    var param = {}
    param.id=$("#id").val()
    param.type=$("#type").val()
    param.time=$("#time").val();
    param.title=$("#titles").val();
    param.content=$("#content").val();
    // console.log($("#title").val())
    $.ajax({
        type: "post",
        url: "modifyNew",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
            closeTan()
            location.reload()
        }
    })
}
/*新建新闻列表*/
function addNew() {
    var myDate = new Date;
    var year = myDate.getFullYear(); //获取当前年
    var mon = myDate.getMonth() + 1; //获取当前月
    var date = myDate.getDate();
    var param = {}
    param.type=$("#ntype").val()
    param.title=$("#ntitle").val();
    param.content=$("#ncontent").val();
    param.time=year+"-"+mon+"-"+date;

    $.ajax({
        type: "post",
        url: "addNew",
        dataType: "json",
        data: param,
        success: function (data) {
            // console.log(data)
            alert("完成")
            closeTan()
            location.reload()
        }
    })
}
/*获取日志列表*/
function getLogs() {
    var param = {}
    $(".table").empty();
    $(".table").append(" <li class=\"table_li\"><span>id</span><span>用户</span><span>操作日期</span><span>操作时间</span><span>操作内容</span></li>")
    $.ajax({
        type: "post",
        url: "getLogs",
        dataType: "json",
        // data: param,
        success: function (data) {
            // console.log(data)
            for (let i = 0; i < data.length; i++) {
                $(".table").append("<li class=\"table_li data\"><span>"+data[i].id+"</span>" +
                    "<span>"+data[i].user+"</span><span>"+data[i].date+"</span><span>"+data[i].time+"</span><span>"+data[i].content+"</span>")
            }
            addTan()
            setpage()
        }
    })
}
/*给上传图片的按钮添加事件*/
function upload(url) {
    var fileName1 = "";
    var filePath1 = "";
    var fileM = document.querySelector("#img_z");

    $("#img_z").on("change", function () {
        //获取文件对象，files是文件选取控件的属性，存储的是文件选取控件选取的文件对象，类型是一个数组
        var fileObj = fileM.files[0];
        console.log(fileObj)
        //创建formdata对象，formData用来存储表单的数据，表单数据时以键值对形式存储的。
        var formData = new FormData();
        if (formData != null) {
            formData.append('file', fileObj);
            $.ajax({
                url: url,
                type: "post",
                dataType: "json",
                data: formData,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    // console.log(data)
                    fileName1 = data.fileName;
                    filePath1 = data.filePath;

                },
                error: function (data) {
                    alert("图片上传错误，请重新上传");
                }
            }); //ajaxemd
        }
    });
}
/*删除操作*/
/*function godeletes(url) {
    var param = {}
    param.id = $("#id").val()
    param.img = $("#photo").attr("title")

    $.ajax({
        type: "post",
        url: url,
        dataType: "json",
        data: param,
        success: function (data) {
            console.log(data)
        }
    })
}*/




