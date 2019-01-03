<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/18
  Time: 0:57
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
    <title>购物车</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <%--<script src="${pageContext.request.contextPath}/static/js/index.js"></script>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css?v=1.2" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/shopcar.css" type="text/css" media="all">
    <!-- pc_checkout_submit -->
</head>
<body class="" >
<header>
    <div class="header-1">
        <a href="/bookcityinto"><img src="${pageContext.request.contextPath}/static/picture/r-l.jpg" alt=""  ></a>
    </div>
</header>
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
<form  class="add-address-form">
    <div class="cont wd1200" style="padding-bottom:20px;">
        <div class="shop_car clr" id="shop_car">

            <!--购物车列表-->
            <table class="table table-border table-bordered table-bg table-hover table-sort" id="booksList">
                <thead>
                <tr class="text-c">
                    <th width="40"><input name="" type="checkbox" value=""id="check_all" checked></th>
                    <th width="80">全选</th>
                    <th width="100">商品信息</th>
                    <th width="100">ISBN</th>
                    <th width="100">库存</th>
                    <th width="100">价格(元)</th>
                    <th width="100">特价(元)</th>
                    <th width="150">数量</th>
                    <th width="100">操作</th>
                </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
            </table>

        </div>
        <div class="shop_car_coupon">
            <div class="shop_car_coupon_list">
                <div class="use_conpon clr">

                    <div class="shop_car_slide fl">
                        <a href="javascript:void(0)">
                            <i></i>
                        </a>
                    </div>
                </div>
                <div class="coupon_triger">

                </div>
            </div>
        </div>
        <div class="shop_car_bot clr">

            <div class="shop_car_right fr">
                <p>总共有：
                        <span id="subtotalnum"></span>

                    商品
                </p>
                <p>合计：
                    <span>
                        ¥ <span id="subtotal"></span>
                    </span>
                </p>

                <input type="button" class="shop_car_btn" value="结账" id="submit">
            </div>
        </div>
    </div>
    </div>
</form>
<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<script type="text/javascript">

    /*
    * 构造购物车列表
    * */

    $(function () {
        $.ajax({
            url:"/shopcard",
            type:"GET",
            success:function (result) {
                bulid_shopcard(result);
                total();
            }
        });

    });
    function bulid_shopcard(result) {
        var books=result.extend.pageInfo.list;
        $.each(books,function(index,item){
            var checkBoxTd = $("<td><input type='checkbox' class='check_item' checked/></td>");
            var bCoverpicTd = $("<td></td>")
                .append($("<a></a>").attr({href:"/bookshow/id="+item.bid})
                    .append($("<img />").attr({src:item.books.bCoverpic}).height(50).width(50)));
            var bNameTd = $("<td></td>").append(item.books.bName);
            var IsbnTd =$("<td></td>").append(item.books.bIsbn);
            var bStorageTd=$("<td></td>").append(item.books.bStorage);
            var bPriceTd=$("<td></td>").append(item.books.bPrice);
            var salePriceTd=$("<td></td>").append((item.books.bPrice * item.books.bDiscount).toFixed(2));
            var numTd=$("<td></td>")
                .append($("<span></span>").addClass("fl book_add book_operate").attr({"add-id":item.bid})
                    .append("+"))
                .append($("<input />").attr({type:"text", class:"shop_car_list_num fl", value:item.scNum, readonly:"readonly",id:"scNum"+item.bid}))
                .append($("<span></span>").addClass("fl book_reduce book_operate").attr({"sub-id":item.bid})
                    .append("-"));
            var delTd=$("<td></td>")
                .append($("<a></a>").addClass("delhref").attr({"del-id":item.bid,"href":"javascript:void(0);"})

                    .append("删除"));
            $("<tr></tr>").append(checkBoxTd)
                .append(bCoverpicTd)
                .append(bNameTd)
                .append(IsbnTd)
                .append(bStorageTd)
                .append(bPriceTd)
                .append(salePriceTd)
                .append(numTd)
                .append(delTd)
                .appendTo("#tbody")

        })


    }

    /*
    * 增加数量
    * */
    $(function () {
        $(document).on("click",".book_add",function (){

            var V=$("#scNum"+$(this).attr("add-id")).val();
            var i=parseInt(V);
            i=i+1;
            $("#scNum"+$(this).attr("add-id")).val(i);
            var cid="<%=session.getAttribute("customId")%>";
            var bid=$(this).attr("add-id");
            var scNum=$("#scNum"+$(this).attr("add-id")).val();
            var shopcard={
                "cid":cid,
                "bid":bid,
                "scNum":scNum
            }
            $.ajax({
                url:"/updatascNum",
                type:"PUT",
                data:shopcard,
                success:function () {
                    total();
                }

            })
        })
    })
    /*
    * 减少数量
    * */
    $(function () {

        $(document).on("click",".book_reduce",function () {
            var V=$("#scNum"+$(this).attr("sub-id")).val();
            var i=parseInt(V);
            i=i-1;
            if(i<1){
                i=1;
            }
            $("#scNum"+$(this).attr("sub-id")).val(i);
            $("#scNum"+$(this).attr("sub-id")).val(i);
            var cid="<%=session.getAttribute("customId")%>";
            var bid=$(this).attr("sub-id");
            var scNum=$("#scNum"+$(this).attr("sub-id")).val();
            var shopcard={
                "cid":cid,
                "bid":bid,
                "scNum":scNum
            }
            $.ajax({
                url:"/updatascNum",
                type:"PUT",
                data:shopcard,
                success:function () {
                    total();
                }

            })
        })
    })

    $(document).on("click",".delhref",function(){
        var bid = $(this).attr("del-id");
        var cid="<%=session.getAttribute("customId")%>"
        $.ajax({
            url:"/delshopcarbook/"+cid+"-"+bid,
            type:"POST",
            success:function () {
                window.open("/myBuyCar","_self")

            }
        })
    })

    $(document).on("click",".check_item",function () {
        total();
    })


    //完成全选/全不选功能
    $("#check_all").click(function(){
        //attr获取checked是undefined;
        //我们这些dom原生的属性；attr获取自定义属性的值；
        //prop修改和读取dom原生属性的值
        $(".check_item").prop("checked",$(this).prop("checked"));
        total();
    });

    //check_item
    $(document).on("click",".check_item",function(){
        //判断当前选择中的元素是否5个
        var flag = $(".check_item:checked").length==$(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    /*
    * 计算总价和总量
    * */
    function total() {
        var total_price=0;
        var total_count=0;
        //.shop_car_list input[type='checkbox']
        $.each($(".check_item:checked"),function () {
            var saleprice=$(this).parents("tr").find("td:eq(6)").text();
            var num=$(this).parents("tr").find("td:eq(7)").find("input").val();
            total_count = parseInt(total_count)+parseInt(num);
            total_price = parseFloat(total_price)+parseFloat(parseFloat(saleprice) *parseInt( num));
        });

        $("#subtotalnum").text(total_count);
        $("#subtotal").text(total_price);

    };
    /*
    * 响应提交
    *
    * */

    $("#submit").click(function () {
        var bookids = "";
        $.each($(".check_item:checked"),function (){
        bookids+=    $(this).parents("tr").find("td:eq(8)").find("a").attr("del-id")+"-"

        })
        bookids= bookids.substring(0, bookids.length-1);
         window.open("/submit/"+bookids,"_self");
    })

</script>

</body>
</html>
