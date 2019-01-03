<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/20
  Time: 6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content='' />
    <meta name="description" content='' />
    <title>提交订单</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/index.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css?v=1.2" type="text/css" media="all">
    <!-- pc_index_index -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ljjs.css?v=1.0" type="text/css" media="all">
    <!-- pc_login_register -->
</head>
<body class="" >
<header>
    <div class="header-1">
        <a href="/bookcityinto "><img src="${pageContext.request.contextPath}/static/picture/r-l.jpg" alt=""  ></a>
    </div>
</header>
    <div class="ui-dialog-content" style="text-align: left;" id="messagecontent">
    </div>
</div>
<div class="js-part" id="bilid_Address">

</div>
    <div class="js-part">
        <div class="js-part1">
            <div class="js-part1-header">
                <p>选择支付方式</p>
            </div>
            <div action="" class="js-part3">
                <p>
                    <input type="radio"  checked="checked"  id="dear" name="zhifu" value="alipay">
                    <label for="dear">支付宝</label>
                </p>

            </div>
        </div>
    </div>
    <div class="qd">
        <div class="qd1" id="book_area">
            <div class="qd1-header">
                <p>商品清单</p>
            </div>
            <%--<div class="imfor_top">--%>
                <%--<div class=""></div>--%>
                <%--<div class="pudc_top">商品名称</div>--%>
                <%--<div class="pices_top">单价(元)</div>--%>
                <%--<div class="num_top">数量</div>--%>
            <%--</div>--%>
            <table class="table table-border table-bordered table-bg table-hover table-sort" id="booksList">
            <thead>
            <tr class="text-c">
                <th width="200"></th>
                <th width="200">商品名称</th>
                <th width="200">单价(元)</th>
                <th width="200">数量</th>
            </tr>
            </thead>
            <tbody id="tbody">

            </tbody>
            </table>

    </div>
    <div class="js-submit">
        <div class="num-prise">
            <h3 class="pay-title">付款信息</h3>
            <p class="shop-price" style="border-bottom:none;">
                <span class="price-f fr" id="total1">  </span>
                合计         </p>
            <p class="shop-price" style="border-bottom:none;">
                <span class="price-f fr" >+  ¥0.00 </span>
                运费         </p>

            <div class="sub-prise">
                <p>应付总额: <span style="color: red;"id="total2"></span></p>
            </div>
        </div>
        <div style="clear: both;"></div>
    </div>
    <div style="clear: both;"></div>
    <div class="foot-part">
        <div class="back-shop">
            <a href="/myBuyCar" target="_blank">返回修改购物车</a>
        </div>
        <button type="submit" class="tjdd" id="submit">提交订单</button>
    </div>
</form>
</div>
</body>
<script type="text/javascript">
    $(function () {
        var total=0;
        bilid_Address_choose();
        url=window.location.pathname;
        var ids=url.split("/");
        var id=ids[2].split("-")
        $.ajax({
            url:"/shopcard",
            type:"GET",
            async : false,
            success:function (result) {
                var books = result.extend.pageInfo.list;
                $.each(books,function(index,item){
                    for(var i =0;i<id.length;i++){
                        if(id[i] == item.bid){
                            total += ((item.books.bPrice * item.books.bDiscount).toFixed(2))*item.scNum;
                            bulid_book_area(item);
                        }
                    }


                });
                $("#total1").text(total);
                $("#total2").text(total);


            }
        })
    })

    //构造地址选择页面
    function bilid_Address_choose() {
        var cId="<%=session.getAttribute("customId")%>"
        $.ajax({
            url:"/getaddrdefault/"+cId,
            type:"GET",
            success:function (result) {
                var address=result.extend.address;
            var divaera=    $("<div></div>").addClass("js-part1")
                    .append($("<div></div>").addClass("js-part1-header")
                        .append($("<p></p>").append("选择地址")))
                    .append($("<div></div>").addClass("js-part2")
                            .append($("<div></div>").addClass("add-detail")
                                .append($("<span></span>").append(address.aName))
                                .append($("<p></p>").append(address.aAddr))
                                .append($("<p></p>").append(address.aTel))
                                .append($("<a></a>").attr({"style":"cursor: pointer;","class":"chose-adress"}).append("选择地址"))))
                $("#bilid_Address").append(divaera);
            }
        })
    }
    /*
    * 构造书单
    * */

    function bulid_book_area(item) {

        var bCoverpicTd = $("<td></td>")
            .append($("<a></a>").attr({href:"/bookshow/id="+item.bid})
                .append($("<img />").attr({src:item.books.bCoverpic}).height(200).width(150)));
        var bNameTd = $("<td></td>").append(item.books.bName).attr({"style":" text-align:center;"});
        var bStorageTd=$("<td></td>").append(item.scNum).attr({"style":" text-align:center;"});
        var salePriceTd=$("<td></td>").append((item.books.bPrice * item.books.bDiscount).toFixed(2)).attr({"style":" text-align:center;"});
        $("<tr></tr>").append(bCoverpicTd)
            .append(bCoverpicTd)
            .append(bNameTd)
            .append(salePriceTd)
            .append(bStorageTd)
            .appendTo($("#tbody"))
    }

    $("#submit").click(function () {
        alert("支付成功");
        url=window.location.pathname;
        var ids=url.split("/");
        var id=ids[2];
        $.ajax({
            url:"/del/"+id,
            type:"POST",
            success:function () {
                window.open("${pageContext.request.contextPath}/myBuyCar","_self");
            }

        })
    })
</script>

</html>
