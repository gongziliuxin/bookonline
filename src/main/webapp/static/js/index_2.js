/**
 * Created by Administrator on 2017/4/13.
 */
$(function () {
    $(".nav-1 li").mouseover(function () {
        $(this).children(".menu-panel").show();
    }).mouseout(function () {
        $(this).children(".menu-panel").hide();
    })
})
$(function () {
    window.onscroll=function(){
        var scrollT=document.body.scrollTop||document.documentElement.scrollTop;
        var slideT=300;
        if(scrollT>=slideT){
            $(".Fix-top").show();
            $(".back").show();
        }else{
            $(".Fix-top").hide();
            $(".back").hide();
        } };
})
$(function () {
    $(".back").click(function () {
        $(document.body).scrollTop(0);
        $(document.documentElement).scrollTop(0);
    })
});
$(function () {
    $(".Menubar-3-1 dl").mouseover(function () {
       $(this).find(".addshop").show();
    }).mouseout(function () {
        $(this).find(".addshop").hide();
    });
})
 $(function () {
        $(".addshop a").click(function () {
            $(".fullscreen1").show();
        });
        $(".f-header").click(function () {
            $(".fullscreen1").hide();
        });
    })