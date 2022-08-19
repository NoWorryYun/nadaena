$(document).ready(function(){
    $("ul.tab_menu li").on("click",function(){
        var tab_id=$(this).attr("data-tab")
        $("ul.tab_menu li").removeClass("current")
        $(".tab_content").removeClass("active")
        $(".tab_content").hide(); // display:none
        $(this).addClass("current");
        $("#" + tab_id).addClass("active").fadeIn("slow") 
    })
})