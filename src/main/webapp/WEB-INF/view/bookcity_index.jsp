<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/11
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN" class="">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="渔书,22世纪未来生活网,捐书,共享图书,图书循环,闲置书籍,二手书,免费回收,教材,英语,数学"/>
    <meta name="description" content='渔书-让闲置书籍发挥价值的地方,以书换书,图书共享,全民环保阅读,闲置图书免费上门收取' />
    <title>渔书-让闲置书籍发挥价值的地方</title>
    <script src="static/js/jquery-1.8.3.min.js"></script>
    <script src="static/js/index.js"></script>
    <link rel="stylesheet" href="static/css/public.css" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="static/css/reset.css" type="text/css" media="all">
    <script src="static/js/index.js"></script>
    <script src="static/js/focus.js"></script>
    <!-- pc_product_search -->
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
                <a target="_blank" id="shopcard">购物车(<span id="detail_item">0</span>)</a>
            </li>
        </ul>
    </div>
</div>
<div class="Article">
    <form  class="Seach">
        <input type="text"  value="" class="border-0" placeholder="书名/作者/出版社" id="selectTxt">
        <input  type="submit" value="搜索" class='border-1' id="selectBtn">
    </form>

    <a href="/bookcityinto"><img src="static/picture/logo.jpg" alt="" class="img3"></a>
</div>
<div class="T-nav">
    <ul class="Nav">
        <li class="First-nav">
            <div class="category">全部书类</div>
            <ul class=" nav-1 show-nav-1">
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
            <a href="/category/hot=all"target="_blank">热门推荐</a>
            <img src="static/picture/hot.png" alt="" class="img5">
        </li>
    </ul>
</div>
<div class="container" id="container">
    <ul id="list">
        <li class="bg5"><a href=""></a></li>
        <li class="bg1"><a href=""></a></li>
        <li class="bg2"><a href=""></a></li>
        <li class="bg3"><a href=""></a></li>
        <li class="bg4"><a href=""></a></li>
        <li class="bg5"><a href=""></a></li>
        <li class="bg1"><a href=""></a></li>
    </ul>
    <a href="javascript:void(0)" class="arrow" id="left" ></a>
    <a href="javascript:void(0)" class="arrow" id="right" ></a>
    <div class="btns">
        <span class="on" index="1"></span>
        <span index="2"></span>
        <span index="3"></span>
        <span index="4"></span>
        <span index="5"></span>
    </div></div>
<div class="Show-del">
    <ul>
        <li><a href="/category/category=英语"><img src="static/picture/del1_2.jpg" alt=""></a></li>
        <li><a href="/category/category=管理"><img src="static/picture/del2_2.jpg" alt=""></a></li>
        <li><a href="/category/category=计算机"><img src="static/picture/del3_2.jpg" alt=""></a></li>
    </ul></div>
<div class="Section">
    <div class="S-part1">
        <ul>
            <li class="S-L">首页推荐</li>
            <li class="S-R"><a href="/category/hot=all" target="_blank">更多 ></a></li>
        </ul>
    </div>
    <div class="S-part2">
        <div class="S-part2-1">
            <a href="/pc/product/recommend/identifier/ids_for_product_top_5"><img src="static/picture/s-part2-1_2.jpg" alt=""></a>
            <a href="/pc/product/recommend/identifier/ids_for_product_top_5">
            </a>
        </div>
        <div class="S-part2-2">
            <a href="http://www.22bat.com/pc/product/detail/sku/9787229047153" target="_blank">张旭旭跳槽记<br><span></span></a>
            <a href="http://www.22bat.com/pc/product/detail/sku/9787229047153" target="_blank"><img src="static/picture/9787229047153_1_400_400_2.jpg" alt="" style="height:239px;margin-top:70px;"></a>
        </div>
        <div class="S-part2-3">
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787503945472" target="_blank">竹马青梅</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787503945472" target="_blank"><img src="static/picture/default_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787539950921" target="_blank">一到三十就回忆</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787539950921" target="_blank"><img src="static/picture/9787539950921_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787550023192" target="_blank">鱼香四溢</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787550023192" target="_blank"><img src="static/picture/9787550023192_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787550023963" target="_blank">一座城，在等你</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787550023963" target="_blank"><img src="static/picture/9787550023963_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
        </div>
    </div></div>
<div class="Section">
    <div class="S-part1">
        <ul>
            <li class="S-L">我们的故事</li>
            <li class="S-R"><a href="/pc/product/recommend/identifier/ids_for_product_top_2">更多 ></a></li>
        </ul>
    </div>
    <div class="S-part2">
        <div class="S-part2-1">
            <a href="/pc/product/recommend/identifier/ids_for_product_top_2"><img src="static/picture/s-part2-12_2.jpg" alt=""></a>
            <a href="/pc/product/recommend/identifier/ids_for_product_top_2">
                <div class="S-part2-11">
                    <p class="first-p">我们和书的故事</p>
                    <p class="sec-p">刚刚开始</p>
                </div>
            </a>
        </div>
        <div class="S-part2-2">
            <a href="http://www.22bat.com/pc/product/detail/sku/9787501963836" target="_blank">咖啡王子1号店<br><span></span></a>
            <a href="http://www.22bat.com/pc/product/detail/sku/9787501963836" target="_blank"><img src="static/picture/9787501963836_1_400_400_2.jpg" alt="" style="height:239px;margin-top:70px;"></a>
        </div>
        <div class="S-part2-3">

            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787506328029" target="_blank">三重门</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787506328029" target="_blank"><img src="static/picture/9787506328029_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787532930166" target="_blank">且让我忧伤</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787532930166" target="_blank"><img src="static/picture/9787532930166_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787533938352" target="_blank">万物生长</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787533938352" target="_blank"><img src="static/picture/9787533938352_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>
            <dl class="S-part2-3-dl-1">
                <dt>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787539979397" target="_blank">曾少年</a>
                </dt>
                <dd>
                    <a href="http://www.22bat.com/pc/product/detail/sku/9787539979397" target="_blank"><img src="static/picture/9787539979397_1_400_400_2.jpg" alt="" ></a>
                </dd>
            </dl>

        </div>
    </div></div>

<script type= "text/javascript">
    if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE6.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE7.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE8.0"){
        self.location='application/up.html';
    }
</script>
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
    $("#selectBtn").click(function () {
        window.open("/category/select="+$("#selectTxt").val());
    });
    $(function () {
        $("#shopcard").click(function () {
            var custom="<%=session.getAttribute("custom")%>";
            if(custom =="null"){
                window.open("/customLogin","_top");
            }else {
                window.open("/myBuyCar","_top");
            }
        })
    })
</script>
</body>
</html>
