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
    <script type="text/javascript" src="${pageContext.request.contextPath}lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>用户管理</title>
</head>
<body>
<!-- 用户修改的模态框 -->
<div class="modal fade" id="customUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ModalLabel">用户修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">

                        <label class="col-sm-5 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" name="cNickname" class="form-control" id="customNickname_update_input" placeholder="用户名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">真实姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="cName" class="form-control" id="customName_update_input" placeholder="真实姓名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input type="text" name="cTel" class="form-control" id="customTel_update_input" placeholder="xxx-xxxx-xxxx">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" name="cMail" class="form-control" id="email_update_input" placeholder="email@atguigu.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="custom_update_btn">修改</button>
            </div>
        </div>
    </div>
</div>
<!-- 用户添加的模态框 -->
<div class="modal fade" id="customAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">

                        <label class="col-sm-5 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" name="cNickname" class="form-control" id="customNickname_add_input" placeholder="用户名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">真实姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="cName" class="form-control" id="customName_add_input" placeholder="真实姓名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input type="text" name="cTel" class="form-control" id="customTel_add_input" placeholder="xxx-xxxx-xxxx">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" name="cMail" class="form-control" id="email_add_input" placeholder="email@atguigu.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="custom_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!--用户会员查询主页面-->
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="/login">首页</a> <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 顾客信息列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<!--列表-->
<div class="page-container">
    <div class="text-c">
        <input type="text" class="input-text" style="width:250px" placeholder="输入用户名或者电话或者用户真实姓名"  name="" id="select_custom_input">
        <button type="submit" class="btn btn-success radius" id="select_custom" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
        <button class="btn btn-danger" id="custom_delete_all_btn">批量删除</button>
		<button class="btn btn-primary" id="custom_add_modal_btn">新增用户</button></span>  </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort" id="customsList">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" id="check_all" ></th>
                <th width="80">ID</th>
                <th width="100">用户名</th>
                <th width="90">真实姓名</th>
                <th width="90">手机</th>
                <th width="150">邮箱</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>

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
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
<link
        href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
        rel="stylesheet">
<script
        src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->


<script type="text/javascript">
    var totalRecord,currentPage;
    //1、页面加载完成以后，直接去发送ajax请求,要到分页数据
    $(function(){
        //去首页
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/customsList",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //console.log(result);
                //1、解析并显示顾客数据
                build_customs_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);
            }
        });
    }

    function build_customs_table(result){
        //清空table表格
        $("#customsList tbody").empty();
        //所有的顾客数据
        var customss = result.extend.pageInfo.list;
        $.each(customss,function(index,item){
            var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
            var cIdTd = $("<td></td>").append(item.cId);
            var cNickNameTd = $("<td></td>").append(item.cNickname);
            var cNameTd = $("<td></td>").append(item.cName);
            var cTelTd = $("<td></td>").append(item.cTel);
            var cMailTd=$("<td></td>").append(item.cMail);


            /**
             <button class="">
             <span class="" aria-hidden="true"></span>
             编辑
             </button>
             */
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit-id",item.cId);
            var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个自定义的属性来表示当前删除的员工id
            delBtn.attr("del-id",item.cId);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(checkBoxTd)
                .append(cIdTd)
                .append(cNickNameTd)
                .append(cNameTd)
                .append(cTelTd)
                .append(cMailTd)
                .append(btnTd)
                .appendTo("#customsList tbody");
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
    $("#custom_add_modal_btn").click(function(){
        //弹出模态框
        $("#customAddModal").modal({
            backdrop:"static"
        });
    });

    //点击保存，保存顾客。
    $("#custom_save_btn").click(function(){
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
            url:"${pageContext.request.contextPath}/custom",
            type:"POST",
            data:$("#customAddModal form").serialize(),
            success:function(result){
                //alert(result.msg);
                if(result.code == 100){
                    //员工保存成功；
                    //1、关闭模态框
                    $("#customAddModal").modal('hide');

                    //2、来到最后一页，显示刚才保存的数据
                    //发送ajax请求显示最后一页数据即可
                    to_page(totalRecord);
                }else{
                    //显示失败信息
                    //console.log(result);
                    //有哪个字段的错误信息就显示哪个字段的；
                    if(undefined != result.extend.errorFields.email){
                        //显示邮箱错误信息
                        show_validate_msg("#email_add_input", "error", result.extend.errorFields.email);
                    }
                    if(undefined != result.extend.errorFields.empName){
                        //显示员工名字的错误信息
                        show_validate_msg("#empName_add_input", "error", result.extend.errorFields.empName);
                    }
                }
           }
        });
    });

    //跟新顾客
    //1、我们是按钮创建之前就绑定了click，所以绑定不上。
    //1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
    //jquery新版没有live，使用on进行替代
    $(document).on("click",".edit_btn",function(){
        //alert("edit");



       //2、查出顾客信息，显示顾客信息
       getCustom($(this).attr("edit-id"));

        //3、把员工的id传递给模态框的更新按钮
        $("#custom_update_btn").attr("edit-id",$(this).attr("edit-id"));
        //显示modal框
        $("#customUpdateModal").modal({
            backdrop:"static"
        });
    });
    //通过id查询顾客信息
    function getCustom(id){
        $.ajax({
            url:"${pageContext.request.contextPath}/custom/"+id,
            type:"GET",
            success:function(result){
                //console.log(result);
                var customData = result.extend.custom;
                $("#customNickname_update_input").val( customData.cNickname);
                $("#customName_update_input").val(customData.cName);
                $("#customTel_update_input").val(customData.cTel);
                $("#email_update_input").val(customData.cMail);
            }
        });
        //点击修改对数据库进行修改和界面刷新
        //点击更新，更新员工信息
        $("#custom_update_btn").click(function(){


            //发送ajax请求保存更新的员工数据
            $.ajax({
                url:"${pageContext.request.contextPath}/custom/"+$(this).attr("edit-id"),
                type:"PUT",
                data:$("#customUpdateModal form").serialize(),
                success:function(result){
                    //alert(result.msg);
                    //1、关闭对话框
                    $("#customUpdateModal").modal("hide");
                    //2、回到本页面
                    to_page(currentPage);
                }
            });
        });
    }

    //单个删除
    $(document).on("click",".delete_btn",function(){
        //1、弹出是否确认删除对话框
        var customName = $(this).parents("tr").find("td:eq(3)").text();
        var cId = $(this).attr("del-id");
        //alert(cId)
        //alert($(this).parents("tr").find("td:eq(3)").text());
        if(confirm("确认删除【"+customName+"】吗？")){
            //确认，发送ajax请求删除即可
            $.ajax({
                url:"${pageContext.request.contextPath}/custom/"+cId,
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
    $("#custom_delete_all_btn").click(function(){
        //
        var customNames = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function(){
            //this
            customNames += $(this).parents("tr").find("td:eq(3)").text()+",";
            //组装员工id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除customNames多余的,
        customNames = customNames.substring(0, customNames.length-1);
        //去除删除的id多余的-
        del_idstr = del_idstr.substring(0, del_idstr.length-1);
        if(confirm("确认删除【"+customNames+"】吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${pageContext.request.contextPath}/custom/"+del_idstr,
                type:"DELETE",
                success:function(result){
                    alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                }
            });
        }
    });
$("#select_custom").click(function () {
    var value=$("#select_custom_input").val();
    $.ajax({
        url:"${pageContext.request.contextPath}/selectCustom/"+value,
        success:function(result) {
            build_customs_table(result);
            $("#page_info_area").empty();
            $("#page_nav_area").empty();
        }
    });
});
</script>
</body>
</html>
