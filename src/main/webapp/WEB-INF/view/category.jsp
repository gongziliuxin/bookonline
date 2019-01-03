<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/12
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN" class="">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + path + "/";
    %>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content='' />
    <meta name="description" content='' />
    <title>product category</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/shoplist.css" type="text/css" media="all">
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <!-- pc_product_detail -->
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
    <form  class="Seach">
        <input type="text"  name="keywords" value="" class="border-0" placeholder="书名/ISBN/作者" id="selectTxt">
        <input type="submit" value="搜索" id="selectBtn">
    </form>
    <a href="/bookcityinto"><img src="${pageContext.request.contextPath}/static/picture/logo.jpg" alt="" class="img3"></a>
</div>
<div class="T-nav">
    <ul class="Nav">
        <li class="First-nav">
            <div class="category">全部书类</div>
            <ul class=" nav-1">
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
                    <a><h4>儿童</h4></a>
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

<div class="Menubar">
    <ul class="Menubar-1">
        <li>全部结果</li>
        <li>
                <!--文字信息  -->
                <div class="col-md-6" id="page_info_area"></div>

        </li>
    </ul>

    <ul class="Menubar-2">
        <li>
            <div class="menu-L">
                <p>热搜:</p>
            </div>
            <div class="menu-R">
                <a href="/category/category=数学">数学</a>
                <a href="/category/category=四级">四级</a>
                <a href="/category/category=六级">六级</a>
                <a href="/category/category=考研">考研</a>
                <a href="/category/category=考试">考试</a>
                <a href="/category/category=外语">外语</a>
            </div>
        </li>
    </ul>


    <div class="Menubar-3" id="shop-list">
        <div class="Menubar-3-1" id="book-list">


        </div>
    </div>

</div>

<div style="width: 100%;height: 40px;clear: both;"></div>

<script src="${pageContext.request.contextPath}/static/js/jquery.lazyload.js"></script>


<script type="text/javascript">
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
    $(function() {
       to_book_page(1);
    });

    function to_book_page(pn){
        var value = ((decodeURI(window.location.pathname)).split("/"))[2];
        $.ajax({
            url:"${pageContext.request.contextPath}/categoryList/"+value,
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //构造列表
                build_category_table(result);
                //2、解析并显示分页信息
                build_bookspage_info(result);

            }
        });
    }
    function build_category_table(result){

      $("#book-list").empty();

        var books = result.extend.pageInfo.list;
        //console.log("books",books);
        $.each(books,function(index,item){
            var bCoverpicTd=$("<img />").attr({class:"lazy",src:item.bCoverpic,style:"display:inline"});
            var idurl="/bookshow/id="+item.bId;
            var bIdTd=$("<a></a>").attr({href:idurl,target:"_blank"}).append(bCoverpicTd);
            var nameurl="/bookshow/name="+item.bNmae;
            var bNameTd=$("<a></a>").attr({href:nameurl})
                .append(item.bName);
            var bsalePriceTd=$("<p></p>").addClass("final-price").append("¥"+(item.bPrice * item.bDiscount).toFixed(2));
            var  bPriceTd=$("<span></span>").addClass("normal-price").append("¥"+item.bPrice);
            var dtTd=$("<dt></dt>").append(bIdTd);
            var divTd=$("<div></div>").addClass("Prise")
                .append(bsalePriceTd)
                .append(bPriceTd);
            var ddTd=$("<dd></dd>").append(bNameTd).append(divTd);


            $("<dl></dl>").append(dtTd)
                .append(ddTd)
                .appendTo("#book-list")
        });
    }
    //解析显示分页信息
    function build_bookspage_info(result){
        $("#page_info_area").empty();
        $("#page_info_area").append("当前总共找到"+
            result.extend.pageInfo.total+"条相关商品记录");
        totalRecord = result.extend.pageInfo.total;
        currentPage = result.extend.pageInfo.pageNum;
    }

    $("#selectBtn").click(function () {

        window.open("/category/select="+$("#selectTxt").val(),"_self");
    });

</script>
</body>
</html>

