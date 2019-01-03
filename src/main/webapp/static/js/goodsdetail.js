/**
 * Created by Administrator on 2017/4/18.
 */
$(function () {
    $(document).on("click",".add",function (){
        var V=$("#detail_add_to_cart_num").val();
        var i=parseInt(V);
        i=i+1;
        $("#detail_add_to_cart_num").val(i);
    })
})
$(function () {
    $(document).on("click",".del",function () {
        var V=$(".Text").val();
        var i=parseInt(V);
        i=i-1;
        if(i<1){
            i=1;
        }
        $(".Text").val(i);
    })
})
$(function () {
    $(".fullscreen").click(function () {
        $(".fullscreen").hide();
        $(".fullscreen1").hide();
        $(".fullscreen2").hide();
    });
    $(".f-header span").click(function () {
        $(".fullscreen").hide();
        $(".fullscreen1").hide();
        $(".fullscreen2").hide();
    });
})
$(function () {
    $(".part-two1-2 li").click(function () {
        var indexs=$(this).index();
        $(".table-menu").hide();
        $(".table-menu").eq(indexs).show();
        $(".part-two1-2 li").css("background-color","#f8f8f8").css("border-top","2px solid #f8f8f8");;
        $(this).css("background-color","white").css("border-top","2px solid #d21f46");
    });
})