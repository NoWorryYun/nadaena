$(document).ready(function(){
    
    $("ul.sub_menu").hide(); //시작하기전에 안보이게

    $("ul.gnb > li").hover(function(e){
        $("ul.sub_menu").hide(); //리셋
        $("ul:not(:animated)",this).slideDown("slow");
        } , function(){
        $("ul.sub_menu", this).slideUp("slow");

        
        });
    
    
});
