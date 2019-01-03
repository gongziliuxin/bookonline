<%--
  Created by IntelliJ IDEA.
  User: gongz
  Date: 2018/9/10
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + path + "/";
    %>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/html5shiv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>图片列表</title>
</head>
<body>
<!-- 书籍修改的模态框 -->
<div class="modal fade" id="bookUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ModalLabel">书籍信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">

                    <div class="form-group">

                        <label class="col-sm-5 control-label">书籍名称</label>
                        <div class="col-sm-10">
                            <input type="text" name="bName" class="form-control" id="bName_update_input" placeholder="书籍名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">ISBN</label>
                        <div class="col-sm-10">
                            <input type="text" name="bIsbn" class="form-control" id="bIsbn_update_input" placeholder="ISBN">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" name="bAuthor" class="form-control" id="bAuthor_update_input" placeholder="作者姓名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" name="bPublisher" class="form-control" id="bPublisher_update_input" placeholder="出版社">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">书籍简介</label>
                        <div class="col-sm-10">
                            <input type="text" name="bIntroduction" class="form-control" id="bIntroduction_update_input" placeholder="书籍简介">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">售价</label>
                        <div class="col-sm-10">
                            <input type="text" name="bPrice" class="form-control" id="bPrice_update_input" placeholder="售价">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">封面地址</label>
                        <div class="col-sm-10">
                            <input type="text" name="bCoverpic" class="form-control" id="bCoverpic_update_input" placeholder="/img/">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">库存</label>
                        <div class="col-sm-10">
                            <input type="text" name="bStorage" class="form-control" id="bStroage_update_input" placeholder="100">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">分类</label>
                        <div class="col-sm-10">
                            <input type="text" name="bType" class="form-control" id="bType_update_input" placeholder="历史">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">折扣</label>
                        <div class="col-sm-10">
                            <input type="text" name="bDiscount" class="form-control" id="bDiscount_update_input" placeholder="0.8">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="book_update_btn">确认修改</button>
            </div>
        </div>
    </div>
</div>
<!-- 书籍添加的模态框 -->
<div class="modal fade" id="bookAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">书籍添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">

                        <label class="col-sm-5 control-label">书籍名称</label>
                        <div class="col-sm-10">
                            <input type="text" name="bName" class="form-control" id="bName_add_input" placeholder="书籍名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">ISBN</label>
                        <div class="col-sm-10">
                            <input type="text" name="bIsbn" class="form-control" id="bIsbn_add_input" placeholder="ISBN">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" name="bAuthor" class="form-control" id="bAuthor_add_input" placeholder="作者姓名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" name="bPublisher" class="form-control" id="bPublisher_add_input" placeholder="出版社">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">书籍简介</label>
                        <div class="col-sm-10">
                            <input type="text" name="bIntroduction" class="form-control" id="bIntroduction_add_input" placeholder="书籍简介">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">售价</label>
                        <div class="col-sm-10">
                            <input type="text" name="bPrice" class="form-control" id="bPrice_add_input" placeholder="售价">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">封面地址</label>
                        <div class="col-sm-10">
                            <input type="text" name="bCoverpic" class="form-control" id="bCoverpic_add_input" placeholder="/img/">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">库存</label>
                        <div class="col-sm-10">
                            <input type="text" name="bStorage" class="form-control" id="bStroage_add_input" placeholder="100">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-5 control-label">分类</label>
                    <div class="col-sm-10">
                        <input type="text" name="bType" class="form-control" id="bType_add_input" placeholder="历史">
                        <span class="help-block"></span>
                    </div>
                </div>
                    <div class="form-group">
                    <label class="col-sm-5 control-label">折扣</label>
                    <div class="col-sm-10">
                        <input type="text" name="bDiscount" class="form-control" id="bDiscount_add_input" placeholder="0.8">
                        <span class="help-block"></span>
                    </div>
                </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="book_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="/login">首页</a> <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;</span> 图片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c">
        <input type="text" name=""  placeholder=" 书籍名称|ISBN|出版社|作者" style="width:250px" class="input-text" id="select_book_input">
        <button name=""  class="btn btn-success" type="submit"id="select_book"><i class="Hui-iconfont" >&#xe665;</i> 查找书籍</button>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <button class="btn btn-danger" id="book_delete_all_btn">批量删除</button>
        <button class="btn btn-primary" id="book_add_modal_btn">新增书籍</button> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort" id="booksList">
            <thead>
            <tr class="text-c">
                <th width="40"><input name="" type="checkbox" value=""id="check_all"></th>
                <th width="80">ID</th>
                <th width="100">封面</th>
                <th width="100">书籍名称</th>
                <th width="100">作者</th>
                <th width="150">出版社</th>
                <th width="100">售价</th>
                <th width="100">库存</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody >
            </tbody>
        </table>
    </div>
</div>
<!-- 显示分页信息 -->
<div class="row">
    <!--分页文字信息  -->
    <div class="col-md-6" id="page_info_area"></div>
    <!-- 分页条信息 -->
    <div class="col-md-6" id="page_nav_area">
    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<link
        href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
        rel="stylesheet">
<script type="text/javascript">
    var totalRecord,currentPage;
    //1、页面加载完成以后，直接去发送ajax请求,要到分页数据
    $(function(){
        //去首页
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/books",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //console.log(result);
                //1、解析并显示书籍数据
                build_books_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);
            }
        });
    }
    function build_books_table(result){
        //清空table表格
        $("#booksList tbody").empty();
        //所有的书籍数据
        var books = result.extend.pageInfo.list;
        $.each(books,function(index,item){
            var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
            var bIdTd = $("<td></td>").append(item.bId);
            var bCoverpicTd = $("<td></td>").append($("<img />").attr("src",item.bCoverpic).height(100).width(100));
            var bNameTd = $("<td></td>").append(item.bName);
            var bAuthorTd = $("<td></td>").append(item.bAuthor);
            var bPublisherTd=$("<td></td>").append(item.bPublisher);
            var bPriceTd=$("<td></td>").append(item.bPrice);
            var bStorageTd=$("<td></td>").append(item.bStorage);

            /**
             <button class="">
             <span class="" aria-hidden="true"></span>
             编辑
             </button>
             */
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //为编辑按钮添加一个自定义的属性，来表示当前书籍id
            editBtn.attr("edit-id",item.bId);
            var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个自定义的属性来表示当前删除的书籍id
            delBtn.attr("del-id",item.bId);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(checkBoxTd)
                .append(bIdTd)
                .append(bCoverpicTd)
                .append(bNameTd)
                .append(bAuthorTd)
                .append(bPublisherTd)
                .append(bPriceTd)
                .append(bStorageTd)
                .append(btnTd)
                .appendTo("#booksList tbody");
        });
    }
    //解析显示分页信息
    function build_page_info(result){
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+
            result.extend.pageInfo.pages+"页,总"+
            result.extend.pageInfo.total+"条记录");
        totalRecord = result.extend.pageInfo.total;
        currentPage = result.extend.pageInfo.pageNum;
    }

    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
    //点击新增按钮弹出模态框。
    $("#book_add_modal_btn").click(function(){
        //弹出模态框
        $("#bookAddModal").modal({
            backdrop:"static"
        });
    });

    //点击保存，保存书籍。
    $("#book_save_btn").click(function(){
        //1、模态框中填写的表单数据提交给服务器进行保存
        //1、先对要提交给服务器的数据进行校验
//        if (!validate_add_form()) {
//            return false;
//        };
//        //1、判断之前的ajax用户名校验是否成功。如果成功。
//        if ($(this).attr("ajax-va") == "error") {
//            return false;
//        }

        //serialize()序列化表格中的内容
        //alert($("#customAddModal form").serialize());
        //2、发送ajax请求保存员工
        $.ajax({
            url:"${pageContext.request.contextPath}/book",
            type:"POST",
            data:$("#bookAddModal form").serialize(),
            success:function(result){
                //alert(result.msg);
                if(result.code == 100){
                    //员工保存成功；
                    //1、关闭模态框
                    $("#bookAddModal").modal('hide');

                    //2、来到最后一页，显示刚才保存的数据
                    //发送ajax请求显示最后一页数据即可
                    to_page(totalRecord);
                }else{
                    /*
                    * 显示错误信息
                    * */

                }
            }
        });
    });
    //跟新书籍信息
    //1、我们是按钮创建之前就绑定了click，所以绑定不上。
    //1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
    //jquery新版没有live，使用on进行替代
    $(document).on("click",".edit_btn",function(){
        //alert("edit");
        //2、查出顾客信息，显示顾客信息
        getBook($(this).attr("edit-id"));

        //3、把员工的id传递给模态框的更新按钮
        $("#book_update_btn").attr("edit-id",$(this).attr("edit-id"));
        //显示modal框
        $("#bookUpdateModal").modal({
            backdrop:"static"
        });
    });
    //通过id查询顾客信息
    function getBook(id){
        $.ajax({
            url:"${pageContext.request.contextPath}/book/"+id,
            type:"GET",
            success:function(result){
                //console.log(result);
                var bookData = result.extend.book;
                $("#bName_update_input").val( bookData.bName);
                $("#bIsbn_update_input").val( bookData.bIsbn);
                $("#bAuthor_update_input").val( bookData.bAuthor);
                $("#bPublisher_update_input").val(bookData.bPublisher);
                $("#bIntroduction_update_input").val(bookData.bIntroduction);
                $("#bPrice_update_input").val(bookData.bPrice);
                $("#bCoverpic_update_input").val(bookData.bCoverpic);
                $("#bStroage_update_input").val(bookData.bStorage);
                $("#bDiscount_update_input").val(bookData.bDiscount);
                $("#bType_update_input").val(bookData.bType);

            }
        });
        //点击修改对数据库进行修改和界面刷新
        //点击更新，更新书籍信息
        $("#book_update_btn").click(function(){


            //发送ajax请求保存更新的书籍数据
            $.ajax({
                url:"${pageContext.request.contextPath}/book/"+$(this).attr("edit-id"),
                type:"PUT",
                data:$("#bookUpdateModal form").serialize(),
                success:function(result){
                    //alert(result.msg);
                    //1、关闭对话框
                    $("#bookUpdateModal").modal("hide");
                    //2、回到本页面
                    to_page(currentPage);
                }
            });
        });


    }

    //单个删除
    $(document).on("click",".delete_btn",function(){
        //1、弹出是否确认删除对话框
        var bookName = $(this).parents("tr").find("td:eq(3)").text();
        var bId = $(this).attr("del-id");
        //alert(cId)
        //alert($(this).parents("tr").find("td:eq(3)").text());
        if(confirm("确认删除【"+bookName+"】吗？")){
            //确认，发送ajax请求删除即可
            $.ajax({
                url:"${pageContext.request.contextPath}/book/"+bId,
                type:"DELETE",
                success:function(result){
                    alert(result.msg);
                    //回到本页
                    to_page(currentPage);
                }
            });
        }
    });

    //完成全选/全不选功能
    $("#check_all").click(function(){
        //attr获取checked是undefined;
        //我们这些dom原生的属性；attr获取自定义属性的值；
        //prop修改和读取dom原生属性的值
        $(".check_item").prop("checked",$(this).prop("checked"));
    });

    //check_item
    $(document).on("click",".check_item",function(){
        //判断当前选择中的元素是否5个
        var flag = $(".check_item:checked").length==$(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    //点击全部删除，就批量删除
    $("#book_delete_all_btn").click(function(){
        //
        var bookNames = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function(){
            //this
            bookNames += $(this).parents("tr").find("td:eq(3)").text()+",";
            //组装员工id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除customNames多余的,
        bookNames = bookNames.substring(0, bookNames.length-1);
        //去除删除的id多余的-
        del_idstr = del_idstr.substring(0, del_idstr.length-1);
        if(confirm("确认删除【"+bookNames+"】吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${pageContext.request.contextPath}/book/"+del_idstr,
                type:"DELETE",
                success:function(result){
                    alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                }
            });
        }
    });

    //按条件查询书籍信息
    $("#select_book").click(function() {
        var value=$("#select_book_input").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/selectBook/"+value,
            success:function(result) {
                build_books_table(result);
                build_page_info(result);
                build_page_nav(result);
            }
        });
    });

</script>
</body>
</html>