<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/13
  Time: 6:49
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN" class="">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <script type= "text/javascript">
        if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE6.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE7.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE8.0"){
            self.location='application/up.html';
        }
    </script>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content='' />
    <meta name="description" content='' />
    <title>注册</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min_2.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/r-l-public.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reg.css" type="text/css" media="all">
    <!-- pc_login_index -->
</head>
<body class="" >
<div class="r-header">
    <div class="r-header1">
        <a href="/bookcityinto"><img src="${pageContext.request.contextPath}/static/picture/r-l_1.jpg" alt=""  ></a>
    </div>
</div>
<style>
    .ui-dialog {
        overflow:hidden;
        margin:0 auto;
        z-index:1002;
        position:fixed;
        left:0;
        top:-10000px;
        display:none;
        -webkit-tap-highlight-color:rgba(255,255,255,0);
        background-color:#fff;
        -webkit-transform:translateZ(0);
        -webkit-user-select:none;
        -webkit-user-drag:none
    }
    .ui-alert {
        text-align:center;
        background:0 0
    }
    .ui-alert .ui-dialog-content {
        background:#0f0f0f;
        border-radius:5px;
        padding:20px;
        color:#fff;
        display:inline-block
    }
</style>
<div id="session_message" class="ui-dialog ui-alert" style="width: 270px; height: auto; left: 50%; margin-left: -135px; top:50%; margin-top: -44px; display: none;">
    <div class="ui-dialog-content" style="text-align: left;" id="messagecontent">
    </div>
</div>
<div id="loading" class="ui-dialog ui-alert" style="width: 270px; height: auto; left: 50%; margin-left: -135px; top: 179px; margin-top: -44px; display: none;">
    <img src="static/picture/icon_loading_1.gif" />
    <br>信息正在加载中... 请稍候</div>
<div class="all-content">
    <div class="r-content">
        <div class="r-content-l">
            <img src="${pageContext.request.contextPath}/static/picture/reg_1.jpg" alt="" >
        </div>
        <div class="containor register">
            <form name="register" action="" method="post" id="register">
                <div class="input-inline">
                    <p>手机号码：</p>
                    <input name="cTel" id="userinfo" type="text" class="required" >
                </div>
                <div class="input-inline">
                    <p>密码：</p>
                    <input name="cPw"  id="password" type="password" class="required">
                </div>
                <div class="input-inline">
                    <p>确认密码：</p>
                    <input name="comfirm_passsword"  id="comfirm_passsword" type="password" class="required">
                </div>
                <div class="submit-inline">
                    <a href="javascript:;" id="submit" >注册</a>
                </div>
                <p class="go-login"><a href="/customLogin">已有账户登录</a></p>
            </form>
            <div class="error-alert" id="J_alert" >
            </div></div>
    </div>
</div>
 <script type="text/javascript">
     $("#password").focus(function () {
         var cTelTxt = $("#userinfo").val();
         if (cTelTxt.length == 0) {
             $("#userinfo").attr({placeholder: "手机号不能为空！", style: "border:2px red solid"});
             $('#session_message').children().html("手机号不能为空");
             $('#session_message').show(100).delay(3000).hide(0);
         } else if (cTelTxt.length < 11 || cTelTxt.length > 11) {
             $("#userinfo").attr({placeholder: "手机号码非法！", style: "border:2px red solid"});
             $('#session_message').children().html("手机号码非法！");
             $('#session_message').show(100).delay(3000).hide(0);
         } else {
             $.ajax({
                 url:"/customTel/"+$("#userinfo").val(),
                 type:"POST",
                 data:"json",
                 success:function(result) {
                     var custom = result.extend.pageInfo.list;
                     if (custom[0] !=null) {
                         $("#userinfo").val("");
                         $("#userinfo").attr({placeholder: "手机号已注册！", style: "border:2px red solid"});
                         $('#session_message').children().html("手机号已注册！");
                         $('#session_message').show(100).delay(3000).hide(0);
                     }else{
                         $("#userinfo").attr({style: "border:1px black solid"});
                     }
                 }
             })
         }
     });
    $("#submit").click(function () {
        var cPwTxt =$("#password").val();
        var reCpwTxt=$("#comfirm_passsword").val();
        if(cPwTxt != reCpwTxt){
            $("#password").val("");
            $("#comfirm_passsword").val("");
            $("#password").attr({placeholder: "两次密码输入不一致！", style: "border:2px red solid"});
            $("#comfirm_passsword").attr({placeholder: "注意大小写！", style: "border:2px red solid"});
            $('#session_message').children().html("两次密码输入不一致！");
            $('#session_message').show(100).delay(3000).hide(0);
        }else {
            $.ajax({
                url:"/customRegister",
                type:"POST",
                data:$("#register").serialize(),
                success:function (result) {
                    if(result.code==100){
                        //$.session.set("custom",$("#userinfo"));
                        window.open("/bookcityinto","_top");
                    }
                }
            })
        }

    });


</script>

</body>
</html>

