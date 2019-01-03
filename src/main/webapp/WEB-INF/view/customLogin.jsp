<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/13
  Time: 6:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <title>登陆</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min_2.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index_2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/r-l-public.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" type="text/css" media=" all">
    <!-- pc_login_forgetpassword -->
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
    <img src="${pageContext.request.contextPath}/static/picture/icon_loading_1.gif" />
    <br>信息正在加载中... 请稍候</div>
<div class="all-content">
    <div class="r-content">
        <div class="r-content-l">
            <img src="${pageContext.request.contextPath}/static/picture/reg_1.jpg" alt="" >
        </div>
        <div class="containor register">
            <form style="display: block;">
                <div class="l-header">
                    <p>欢迎登录</p>
                </div>
                <div class="input-inline">
                    <p>手机号码：</p>
                    <input name="userinfo"  id="userinfo" type="text" class="required" >
                </div>
                <div class="input-inline">
                    <p>密码：</p>
                    <input name="password"  id="password" type="password" class="required" >
                </div>
                <div class="submit-inline">
                    <a href="javascript:;"  id="submit" >登陆</a>
                </div>
            </form>
            <p class="remember-p">
                <label class="fl">
                    <a href="http://www.22bat.com/pc/login/forgetpassword" class="forget-password">
                        忘记密码？    </a>
                </label>
                <a href="/customRegister" class="reg-password">
                    注册</a>
            </p>
            <div class="error-alert" id="J_alert" >
            </div></div>
    </div>
</div>
<div style="width: 100%;height: 40px;clear: both;"></div>
<script type="text/javascript">
    $("#password").focus(function () {
        var telTxt=$("#userinfo").val();
        if(telTxt.length==0){
            $('#session_message').children().html("手机号不能为空！");
            $('#session_message').show(100).delay(3000).hide(0);
            $("#userinfo").attr({placeholder:"手机号不能为空！",style:"border:2px red solid"});
        }else {
            $.ajax({
                url:"/customTelSelect/"+$("#userinfo").val(),
                type:"POST",
                data:"json",
                success:function(result) {
                    $("#userinfo").attr({style: "border:1px black solid"})
                    var custom = result.extend.pageInfo.list;
                    if (custom[0] !=null) {
                        var customPW;
                        $.each(custom, function (index, item) {
                            customPW = item.cPw;
                            getLogin(customPW);
                        });
                    }else{
                        $("#userinfo").val("");
                        $("#userinfo").attr({placeholder:"该手机号不存在！",style:"border:2px red solid"});
                        $('#session_message').children().html("该手机号不存在！");
                        $('#session_message').show(100).delay(3000).hide(0);
                    }
                },
                fail:function () {
                        $("#userinfo").val("");
                        $("#userinfo").attr({placeholder:"该手机号不存在！",style:"border:2px red solid"});
                        $('#session_message').children().html("该手机号不存在！");
                        $('#session_message').show(100).delay(3000).hide(0);

                }


            })
        }

    });
    function getLogin(customPW) {
        $("#password").focusout(function () {
            $("#userinfo").attr({style:"border:1px black solid"})
            if(adminPW==$("#password").val()){

            } else{
                $("#password").attr({placeholder:"密码错误！",style:"border:2px red solid"});
                $('#session_message').children().html("密码错误！");
                $('#session_message').show(100).delay(3000).hide(0);

    }


        });
    };
    $(function(){
        $('#submit').click(function() {
            var tel = $("#userinfo").val();
            var pw = $("#password").val();
        $.ajax({
                url:"/customTelSelect/"+tel,
                type:"POST",
                success:function (result) {
                    var custom = result.extend.pageInfo.list;
                    if (custom[0] != null) {
                        $.each(custom, function (index, item) {
                            if(item.cPw==pw){
                                window.open("/bookcityinto","_top");
                            }
                        })
                }
                }
                

            })
        })

    })
</script>
</body>
</html>

