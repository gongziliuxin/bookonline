<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/17
  Time: 9:23
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
    <title>我的订单</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css?v=1.2" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypurse.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/myaddress.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/personmassage.css" type="text/css" media="all">
    <!-- pc_order_detail -->
    <style type="text/css">
        .mypurse .mypurse-part1-2.select{
            display: block;
        }
        .mypurse .mypurse-part1-2{
            display: none;
        }

    </style>
</head>
<body class="" >
<div class="Header">
    <div class="headerinner">
        <ul>
            <li id="customName"></li>
            <li>|</li>
            <li><a href="/myAcoount" target="_blank">我的账户</a></li>
            <li>|</li>
            <li>
                <i><img src="${pageContext.request.contextPath}/static/picture/icon-shopingcar.png" alt="" class="img2"></i>
                <a href="" target="_blank">购物车(<span id="detail_item">2</span>)</a>
            </li>
        </ul>
    </div>
</div>
<div class="Article">
    <form action="http://www.22bat.com/pc/product/search" class="Seach">
        <input type="text"  name="keywords" value="" class="border-0" placeholder="书名/ISBN/作者">
        <input type="submit" value="搜索" class='border-1' >
    </form>
    <a href="/bookcityinto"><img src="${pageContext.request.contextPath}/static/picture/logo.jpg" alt="" class="img3"></a>
</div>
<div class="T-nav">
    <ul class="Nav">
        <li class="First-nav">
            <div class="category">全部书类</div>
            <ul class=" nav-1 ">
                <li class="nav-menu-table">
                    <h4>教育</h4>
                    <div class="menu-table">
                        <a href="/category/category=语文">语文</a>
                        <a href="/category/category=数学">数学</a>
                        <a href="/category/category=英语">英语</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=教材">
                                    <span>教材</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=英语">
                                    <span>英语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=考试">
                                    <span>考试</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=四级">
                                    <span>四级</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=六级">
                                    <span>六级</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=考研">
                                    <span>考研</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=数学">
                                    <span>数学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=教科书">
                                    <span>教科书</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <h4>文学</h4>
                    <div class="menu-table">
                        <a href="/category/category=小说">小说</a>
                        <a href="/category/category=名著">名著</a>
                        <a href="/category/category=青春">青春</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=小说">
                                    <span>小说</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=名著">
                                    <span>名著</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=青春">
                                    <span>青春</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=艺术">
                                    <span>艺术</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=外国文学">
                                    <span>外国文学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=中国文学">
                                    <span>中国文学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=传记">
                                    <span>传记</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=儿童文学">
                                    <span>儿童文学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=爱情">
                                    <span>爱情</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=随笔">
                                    <span>随笔</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=言情">
                                    <span>言情</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=散文">
                                    <span>散文</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=推理">
                                    <span>推理</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=悬疑">
                                    <span>悬疑</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=奇幻">
                                    <span>奇幻</span>
                                </a>
                            </div>

                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <a href="/category/category=经管"><h4>经管</h4></a>
                    <div class="menu-table">
                        <a href="/category/category=经济">经济</a>
                        <a href="/category/category=管理">管理</a>
                        <a href="/category/category=投资">投资</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=经济">
                                    <span>经济</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=管理">
                                    <span>管理</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=投资">
                                    <span>投资</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=金融">
                                    <span>金融</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=营销">
                                    <span>营销</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=会计">
                                    <span>会计</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=心理学">
                                    <span>心理学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=经济学">
                                    <span>经济学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=商业">
                                    <span>商业</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <a href="/category/category=人文"><h4>人文</h4></a>
                    <div class="menu-table">
                        <a href="/category/category=历史">历史</a>
                        <a href="/category/category=政治">政治</a>
                        <a href="/category/category=发育">法律</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=历史">
                                    <span>历史</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=政治">
                                    <span>政治</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=法律">
                                    <span>法律</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=心理">
                                    <span>心理</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=百科">
                                    <span>百科</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=文化">
                                    <span>文化</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=励志">
                                    <span>励志</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=哲学">
                                    <span>哲学</span>
                                </a>
                            </div>

                            <div class="menu-panel-se">
                                <a href="/category/category=旅行">
                                    <span>旅行</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=思维">
                                    <span>思维</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=健康">
                                    <span>健康</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <a href="/category/category=科技"><h4>科技</h4></a>
                    <div class="menu-table">
                        <a href="/category/category=编程">编程</a>
                        <a href="/category/category=人工智能">人工智能</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=46">
                                    <span>编程</span>
                                </a>
                            </div>

                            <div class="menu-panel-se">
                                <a href="/category/category=数据库">
                                    <span>数据库</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=网络">
                                    <span>网络</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=计算机">
                                    <span>计算机</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <<h4>儿童</h4></a>
                    <div class="menu-table">
                        <a href="/category/category=少年">少年</a>
                        <a href="/category/category=启蒙">启蒙</a>
                        <a href="/category/category=绘本">绘本</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=少年">
                                    <span>少年</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=启蒙">
                                    <span>启蒙</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=绘本">
                                    <span>绘本</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=同书">
                                    <span>童书</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <h4>语言</h4>
                    <div class="menu-table">
                        <a href="/category/category=英语">英语</a>
                        <a href="/category/category=日语">日语</a>
                        <a href="/category/category=德语">德语</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=英语">
                                    <span>英语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=日语">
                                    <span>日语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=德语">
                                    <span>德语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=57">
                                    <span>韩语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=法语">
                                    <span>法语</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=西班牙">
                                    <span>西班牙</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <a href="/category/category=工具书"><h4>工具书</h4></a>
                    <div class="menu-table">
                        <a href="/category/category=考研">考研</a>
                        <a href="/category/category=词典">词典</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=考研">
                                    <span>考研</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=字典">
                                    <span>字典</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-menu-table">
                    <h4>其他</h4>
                    <div class="menu-table">
                        <a href="/category/category=摄影">摄影</a>
                        <a href="/category/category=摄影">医学</a>
                        <a href="/category/category=建筑">建筑</a>
                    </div>
                    <div class="menu-panel">
                        <div class="menu-panel-totle">
                            <div class="menu-panel-se">
                                <a href="/category/category=摄影">
                                    <span>摄影</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=医学">
                                    <span>医学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=建筑">
                                    <span>建筑</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=科学">
                                    <span>科学</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=保健">
                                    <span>保健</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=家庭">
                                    <span>家庭</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=生活">
                                    <span>生活</span>
                                </a>
                            </div>
                            <div class="menu-panel-se">
                                <a href="/category/category=餐饮">
                                    <span>餐饮</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li><a href="/bookcityinto">首页</a></li>
        <li>
            <a href="${pageContext.request.contextPath}/category/hot=all"target="_blank">热门推荐</a>
            <img src="${pageContext.request.contextPath}/static/picture/hot.png" alt="" class="img5">
        </li>
    </ul>
</div>
<div class="mypurse-part1">
    <ul class="mypurse-part1-1">
        <h3>我的账户</h3>
        <li class="tab-item active"><img src="${pageContext.request.contextPath}/static/picture/list.png" alt="" ><a href="#">我的订单</a></li>
        <li class="tab-item" id="myInfo"><img src="${pageContext.request.contextPath}/static/picture/list.png" alt="" ><a href="#">个人信息</a></li>
        <li class="tab-item"><img src="${pageContext.request.contextPath}/static/picture/list.png" alt="" ><a href="#">我的地址</a></li>
    </ul>


    <div class="mypurse" >
        <div class="mypurse-part1-2 select"  id="order">
    <div class="mypurse-part1-21" >
        <p>网站订单</p>
    </div>
    <div class="mypurse-part1-22">
        <ul>
            <li><a href="http://www.22bat.com/pc/order/index/order_status/new">待付款</a><span>(0)</span></li>
            <li><a href="http://www.22bat.com/pc/order/index/order_status/payment">待发货 </a><span>(0)</span></li>
            <li><a href="http://www.22bat.com/pc/order/index/order_status/shipping">待收货 </a><span>(0)</span></li>
            <li><a href="http://www.22bat.com/pc/order/index/order_status/cancel">已取消</a><span>(1)</span></li>
        </ul>
    </div>
    <div class="wait-pay1">
        <div class="purse_top">
            <div class="purse_top1">订单号</div>
            <div class="purse_top3">金额小计</div>
            <div class="purse_top4">下单时间</div>
            <div class="purse_top5">订单状态</div>
            <div class="purse_top6">操作</div>
        </div>
        <div class="purse">
            <div class="purse1">2018090555565634930</div>
            <div class="purse3">15.88</div>
            <div class="purse4">2018-09-05</div>
            <div class="purse5">已取消</div>
            <div class="purse6">
                <a href="http://www.22bat.com/pc/order/detail/order_id/2018090555565634930">查看详情</a>
            </div>
        </div>

    </div>
</div>
        <div class="mypurse-part1-2"  >
        <div class="myaccount-heade">
            <p>个人信息</p>
        </div>
        <div class="per-detail">
            <form class="per-detail1" id="myInfoForm">
                <div class="form-1">
                    <div class="form-L">
                        <p>用户名:</p>
                    </div>
                    <div class="form-R">
                       <input type="text" value="" width="300px"  id="cNickname" name="cNickname"/>
                    </div>
                </div>
                <div class="form-1">
                    <div class="form-L">
                        <p>真实姓名:</p>
                    </div>
                    <div class="form-R">
                        <input type="text" value="" width="300px" id="cName" name="cName"/>
                    </div>
                </div>
                <div class="form-1">
                    <div class="form-L">
                        <p>手机:</p>
                    </div>
                    <div class="form-R">
                        <input type="text" value="" width="300px" id="cTel" />
                    </div>
                </div>
                <div class="form-1">
                    <div class="form-L">
                        <p>邮箱:</p>
                    </div>
                    <div class="form-R">
                        <input type="text" value="" width="300px" id="cMail" name="cMail"/>
                    </div>
                </div>
                <input type="button" value="保存" id="myInfoSave">
            </form>


        </div>
    </div>
        <div class="mypurse-part1-2" >
        <div class="myaddress-1">
            <div class="myaddress-11"  id="add-address">
                <div>
                    <h2>收货地址</h2>
                    <a  class='add-address'>
                        增加新地址				     </a>
                </div>
                <div class="Myadress_top">
                    <div class="Myadress_top1">
                        <p>收货人</p>
                    </div>
                    <div class="Myadress_top2">
                        <p>手机号码</p>
                    </div>
                    <div class="Myadress_top3">
                        <p>详细地址</p>
                    </div>
                    <div class="Myadress_top4">
                        <p>操作</p>
                    </div>
                    <div class="Myadress_top5">
                        <p>是否默认</p>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div class="mypurse-part1-2" id="address" style="display:none">
        <div class="myaddress-1">
            <h3>增加地址</h3>
            <div class="myaddress-11" id="myaddress">
                    <div class="form-address">
                        <div class="form-address-L">
                            <span>*</span>收货人:
                        </div>
                        <div class="form-address-R">
                            <input type="text" required class="Text" name="username" value="" id="aName">
                        </div>
                    </div>
                    <div class="form-address">
                        <div class="form-address-L">
                            <span>*</span>手机:
                        </div>
                        <div class="form-address-R">
                            <input type="text" required class="address-phone" pattern="^1[0-9]{10}" name="phone" value="" id="aTel">
                        </div>
                    </div>
                    <div class="form-address">
                        <div class="form-address-L">
                            <span>*</span>详细地址:
                        </div>
                        <div class="form-address-R">
                            <input name="detail" type="text" required class="address-detail" placeholder="请填写详细地址" value="" id="aAddr">
                        </div>
                    </div>
                    <input type="button" value="保存收货人信息" id="saveaddress">

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        var custom="<%=session.getAttribute("custom")%>";
        //alert(custom);
        if(custom == "null"){
            window.open("/customLogin","_top")
        }else {
            $("#customName").append("欢迎 "+custom);
        }
        $(".mypurse-part1 .tab-item").click(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $(".mypurse .mypurse-part1-2").eq($(this).index()-1).show().siblings().hide();
        })
    });

    /*
    * 个人信息显示
    * */
    $("#myInfo").click(function () {
        var customId="<%=session.getAttribute("customId")%>";
        $.ajax({
            url: "${pageContext.request.contextPath}/custom/" + customId,
            type: "GET",
            success:function (result) {
                //alert(result);
                var customs = result.extend.custom;
                    //alert(item.cNickname);
                    $("#cNickname").val(customs.cNickname);
                    $("#cName").val(customs.cName);
                    $("#cTel").val(customs.cTel);
                    $("#cMail").val(customs.cMail);
            }
        })
    });

    /*
    * 个人信息修改
    * */
    $("#myInfoSave").click(function () {
        var customId="<%=session.getAttribute("customId")%>"
        $.ajax({
            url:"/custom/"+customId,
            type:"PUT",
            data:$("#myInfoForm").serialize(),
            success:function (){
                alert("修改保存成功！")
            }
        });
    });
    function hideaddress() {
        $(".mypurse .mypurse-part1-2").hide();
        $("#address").attr({style:"display:block"});
    }
    $("#add-address").click(
        function () {
            hideaddress();
        }
    );
    $("#saveaddress").click(function () {
        var cId="<%=session.getAttribute("customId")%>";
        var address={
            "cId":cId,
            "aName":$("#aName").val(),
            "aTel":$("#aTel").val(),
            "aAddr":$("#aAddr").val()
        };
        $.ajax({
            url:"/saveaddress",
            type:"POST",
            data:address,
            success:function () {
                alert("新增地址成功！")
                window.open("/myAccount","_self")
            }

        });

    })
    $(function () {
        var cId="<%=session.getAttribute("customId")%>";
        $.ajax({
            url:"/getAddress/"+cId,
            type:"POST",
            success:function (result) {
                var addressList=result.extend.addressList;
                $.each(addressList,function (index,item) {
                var divTd=$("<div></div>").addClass("Myadress")
                    .append($("<div></div>").addClass("Myadress1")
                        .append($("<p></p>").append(item.aName)))
                    .append($("<div></div>").addClass("Myadress2")
                        .append($("<p></p>").append(item.aTel)))
                    .append($("<div></div>").addClass("Myadress3")
                        .append($("<p></p>").append(item.aAddr)))
                    .append($("<div></div>").addClass("Myadress4")
                        .append($("<p></p>").addClass("del-Myadress")
                            .append($("<a></a>").attr({"href":"javascript:void(0);"}).append("编辑"))
                            .append($("<a></a>").attr({"href":"/deladdress/"+item.aId}).append("删除！"))))

                    .append($("<div></div>").addClass("Myadress5")
                        .append($("<p></p>").append(item.aDefault)))
                    $("#add-address").append(divTd);

                })


            }
        })

    })
</script>
</body>
</html>
