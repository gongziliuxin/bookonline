<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/6
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
    <link href="static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>后台登录 </title>

</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
    <div id="loginform" class="loginBox">
        <form class="form form-horizontal" action="/login" method="post" id="form">
            <div class="row cl" id="aNameDiv">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-xs-8">
                    <input  name="" type="text" placeholder="账户" class="input-text size-L" id="aName">
                </div>
            </div>
            <div class="row cl" id="aPwDiv">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input  name="" type="password" placeholder="密码" class="input-text size-L" id="aPw">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"></label>
                <div class="formControls col-xs-8">
                    <div id="slideBar"></div>
                </div>
            </div>

        </form>
    </div>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js "></script>
<link rel="stylesheet" href="static/css/style.css">
<script type="text/javascript" src="static/js/style.js"></script>
<script type="text/javascript">
    login();
    function login() {
        $("#aPw").focus(function () {
            var aNameTxt=$("#aName").val();
            if(aNameTxt.length==0) {
                $("#aName").attr({placeholder:"用户名不能为空！",style:"border:2px red solid"});
            }else{
                $.ajax({
                    url:"/selectAdminName/"+$("#aName").val(),
                    type:"POST",
                    data:"json",
                    success:function(result) {
                        $("#aName").attr({style: "border:1px black solid"})
                        var admin = result.extend.pageInfo.list;
                        if (admin[0] !=null) {
                            var adminPW;
                            $.each(admin, function (index, item) {
                                var adminName = item.adName;
                                adminPW = item.adPw;
                                //alert(adminPW);
                                getLogin(adminPW);

                            });
                        }else{
                            $("#aName").val("");
                            $("#aName").attr({placeholder:"用户名不存在！",style:"border:2px red solid"});
                        }
                    }
                })
            }
        });

    };

    function getLogin(adminPW){
        $("#aPw").focusout(function () {
            $("#aName").attr({style:"border:1px black solid"})
            if(adminPW==$("#aPw").val()){
                $("#aPw").attr({style:"border:1px black solid"});
                codeLogin();
            }else{
                $("#aPw").attr({placeholder:"密码错误！",style:"border:2px red solid"});
                login();
            }
        });    
    };
function codeLogin() {
    var dataList = ["0","1"];
    var options = {
        dataList: dataList,
        success:function(){
            console.log("show");
            window.open("/login/"+$("#aName").val(),"_self");
        },
        fail: function(){
            console.log("fail");
            window.open("${pageContext.request.contextPath}/","_self");
        }
    };
    SliderBar("slideBar", options);
}
</script>

</body>
</html>