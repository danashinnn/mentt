const tabs = $(".tabs li");
tabs.on("click",function(){
    tabs.css("color","#cbcbcb").css("background-color","#fff");
    $(this).css("color","#fff").css("background-color","#1c1c1c");

    const index = tabs.index(this);

    $(".content-wrap").hide();
    $(".content-wrap").eq(index).show();

});
const contents = $(".tabcontent .content");
const contentHides = $(".content-hide");
$(".content-title").parent().append("<i class='fa-solid fa-angle-down icon'></i>");
contents.on("click",function(){
    const index = contents.index(this);
    contentHides.slideUp(0.5*1000);
	$(".content").children().next().removeClass("active");
    if(contentHides.eq(index).is(":visible")){
        contentHides.eq(index).slideUp(0.5*1000);
    }else{
        contentHides.eq(index).slideDown(0.5*1000);
		$(this).children().next().toggleClass("active");
    }
});
tabs.eq(0).click();