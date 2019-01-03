<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/13
  Time: 8:48
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
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/goodsdetail.css" type="text/css" media="all">
    <script src="${pageContext.request.contextPath}/static/js/mzp-packed.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/lrtk.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/magiczoomplus.css" type="text/css" media="all">
    <script src="${pageContext.request.contextPath}/static/js/goodsdetail.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <!-- pc_checkout_list -->
</head>
<body class="" >
<div class="Header">
    <div class="headerinner">
        <ul>
            <li id="customName"></li>
            <li id="login"><a href="/customLogin" target="_top">请登录</a></li>
            <li id="register"><a href="/customRegister" target="_top">免费注册</a></li>
            <li>|</li>
            <li><a href="/myAccount" target="_blank">我的账户</a></li>
            <li>
                <i><img src="static/picture/icon-shopingcar.png" alt="" class="img2"></i>
                <a href="/myBuyCar" target="_blank">购物车(<span id="detail_item">0</span>)</a>
            </li>
        </ul>
    </div>
</div>
<div class="Article">
    <form action="/search" class="Seach">
        <input type="text"  name="keywords" value="" class="border-0" placeholder="书名/ISBN/作者">
        <input type="submit" value="搜索" >
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
            <a href="/category/hot=all"target="_blank">热门推荐</a>
            <img src="${pageContext.request.contextPath}/static/picture/hot.png" alt="" class="img5">
        </li>
    </ul>
</div>



<!--书籍销售展示页面展示-->
<div id="book_sale_show">

</div>

<!--热销书推荐-->
<div class="part-two1">
    <div style="float: left;width: 200px; height: auto;">
        <ul class="part-two1-1" id="hot_ul">
            <li>热门推荐</li>
        </ul>
    </div>
    <div style="float: right;width: 960px;">
    <ul class="part-two1-2">
        <li>
            <span>商品详情</span>
        </li>
        <li>
            <span>配送政策</span>
        </li>
        <li>
            <span>售后服务</span>
        </li>
        <li>
            <span>购买须知</span>
        </li>
    </ul>
    <div style="clear: both;"></div>
    <div class="table-menu" style="display: block;">
        <div class="details" id="book_details"></div>
    </div>
    <div class="table-menu">
        <div class="details"><div class=&#39;details&#39;>
            <p>1.订单状态【待发货】时，无法取消，退款问题与客服协商解决。</p>
            <p>2.【退换货】服务，收货后发现书籍有缺页，少页等问题，请拍照发往官方微信公众号与客服联系，协商解决后客服会为您办理退换货业务。</p>
            <p>3.退款将以原支付方式，退回原支付银行，支付宝账号</p>
            <p>4.收到退货商品或与客服协商后，在5—10个工作日完成退款</p>
            <p>5.客服人员回复时间：周一至周日：08:00-22:00，节假日及下班时间均可回复。</p>
            <p>我们承诺：您的满意是我们的极致追求。</p>
        </div></div>
    </div>
    <div class="table-menu">
        <div class="details"><div  class=&#39;details&#39;>
            <p>售后服务热线：13248259383</p>
            <p>公司电话：021-80370070</p>
            <p>咨询QQ：212452321</p>
            <p>微信公众号：WLSH2115</p>
            <p>微信客服专员：WLSH2117</p>
        </div></div>
    </div>
    <div class="table-menu">
        <div class="details"><div class=&#39;details&#39;>
            <p>22bat是全国最大的二手书销售平台，所有的书籍均经过翻新消毒，八九成新！</p>
        </div></div>
    </div>
</div>

</div>

<script type="text/javascript">

    $(function () {
        var value = ((decodeURI(window.location.pathname)).split("/"))[2];
        $.ajax({
            url:"${pageContext.request.contextPath}/bookSelect/"+value,
            data:"json",
            type:"POST",
            success:function(result){
                bulid_book_show(result);
                hot_book_recommend();
            }
        });

    });
    /*
    * 构造书籍展示页面
    * */
    function bulid_book_show(result) {
        var books = result.extend.pageInfo.list;
        //alert(books);
        $.each(books,function (index,item) {
            var ul1Td=$("<ul></ul>").attr({class:"Menubar-1"})
                .append($("<li></li>")
                    .append($("<a></a>").attr({href:"/bookSelect/id="+item.bId}).append("首页> "))
                    .append($("<a></a>").attr({href:"/bookSelect/name"+item.bName}).append(item.bName)))
                .append($("<li></li>"));

            var t1Td=$("<div></div>").addClass("t1")
                .append($("<div></div>").attr({id:"showArea"})
                    .append($("<a></a>").attr({src:item.bCoverpic,rel:"zoom1",rev:item.bCoverpic})
                        .append($("<img />").attr({src:item.bCoverpic}))));

            var t2Td=$("<div></div>").addClass("t2")
                .append($("<a></a>").attr({id:"zoom1",class:"MagicZoom MagicThumb"})
                    .append($("<img />").attr({id:"main_img",class:"main_img",src:item.bCoverpic,style:"position: relative; display: block; outline: currentcolor none 0px; text-decoration: none; width: 400px;height:400px; -moz-user-select: none;"})));


            var div211Td=$("<div></div>").addClass("Menubar-21-1")
                        .append($("<h2></h2>").append(item.bName))
                        .append($("<p></p>").append(item.bName));


            var div212Td=$("<div></div>").addClass("Menubar-21-2")
                .append($("<ul></ul>").addClass("Menubar-21-21")
                    .append($("<li></li>")
                        .append($("<p></p>").append("作者"))
                        .append($("<p></p>").append(item.bAuthor)))
                    .append($("<li></li>")
                        .append($("<p></p>").append("价格"))
                        .append($("<p></p>").attr({style:"text-decoration: line-through;"})
                            .append($("<i></i>").append("¥"))
                            .append($("<b></b>").append((item.bPrice ).toFixed(2))))
                        .append($("<p></p>").attr({style:"margin-left: 20px;"})
                            .append($("<i></i>").append("¥"))
                            .append($("<b></b>").append((item.bPrice * item.bDiscount).toFixed(2)))))
                    .append($("<li></li>")
                        .append($("<p></p>").append("ISBN"))
                        .append($("<p></p>").append(item.bIsbn)))
                    .append($("<li></li>")
                        .append($("<p></p>").append("温馨提示"))
                        .append($("<p></p>").append("购物满39元包邮哟"))));

            var div2131Td=$("<div></div>").addClass("Menubar-21-31")
                    .append($("<p></p>").append("购买数量"))
                    .append($("<div></div>").addClass("clickme")
                        .append($("<button></button>").attr({class:"del",id:"del"}).append("-"))
                        .append($("<input />").attr({id:"detail_add_to_cart_num",class:"Text",value:"1",type:"text"}))
                        .append($("<button></button>").attr({class:"add",id:"add"}).append("+")));
            var div2132Td=$("<div></div>").addClass("Menubar-21-32")
                .append($("<a></a>").attr({id:"detail_add_to_cart"}).append("加入购物车"));
            var div213Td=$("<div></div>").addClass("Menubar-21-3")
                .append(div2131Td)
                .append(div2132Td);

            var div21Td=$("<div></div>").addClass("Menubar-21")
                .append(div211Td)
                .append(div212Td)
                .append(div213Td);
            var div2Td= $("<div></div>").addClass("Menubar-2")
                .append($("<div></div>").addClass("box")
                    .append($("<div></div>").addClass("left-pro")
                        .append(t1Td)
                        .append(t2Td)))
                .append(div21Td);

            $("#book_sale_show").addClass("Menubar")
                .append(ul1Td)
                .append(div2Td)

        });

    }
    /*
    * 构造书籍热门推荐
    * */
    function hot_book_recommend() {
        $.ajax({
            url:"${pageContext.request.contextPath}/categoryList/hot=7",
            data:"json",
            type:"GET",
            success:function (result) {
                build_hot_book(result)
            }
            });

    }
    function build_hot_book(result) {
        var books = result.extend.pageInfo.list;

        $.each(books,function(index,item) {
           // alert(item.bId);
            $("#book_details").empty();
            var div1 = $("<div></div>").addClass("rently")
                .append($("<div></div>").addClass("little-pic")
                    .append($("<img />").attr({src:item.bCoverpic})))
                .append($("<div></div>").addClass("little-content")
                    .append($("<a></a>").attr({href:"/bookshow/id="+item.bId})
                        .append(item.bName))
                    .append($("<span></span>").addClass("normal-price")
                        .append((item.bPrice ).toFixed(2)))
                    .append($("<span></span>").addClass("final-price")
                        .append((item.bPrice * item.bDiscount).toFixed(2))));
            $("#hot_ul").append(div1);
            $("#book_details").append(item.bIntroduction);

        });

    }


    $(document).on("click","#detail_add_to_cart",function () {
        var urlValue= ((decodeURI(window.location.pathname)).split("/"))[2];
        var bId=urlValue.split("=")[1];
        var scNum=$("#detail_add_to_cart_num").val();
        var cId= "<%=session.getAttribute("customId")%>";
       if(cId == "null"){
           window.open("/customLogin","_top");
       }else {
           var shopcard={
               "bId":bId,
               "cId":cId,
               "scNum":scNum
           };
           $.ajax({
               url:"/joinShopcard",
               type:"POST",
               data:shopcard,
               success:function () {
                   alert("加入购物车成功!");
               }
           });
       }

    });
    $(function () {
        var custom="<%=session.getAttribute("custom")%>";
        //alert(custom);
        if(custom == "null"){
        }else {
            $("#login").hide();
            $("#register").hide();
            $("#customName").append(custom+" 已登录 |")
        }
    });
    
</script>

</body>
</html>
