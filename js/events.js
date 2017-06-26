$(document).ready(function(){

$(".eventsPoster").click(function(){
	$(".hoverBack").fadeIn(800);
	$(".hoverMain").fadeIn(800);
	$(".hoverClose").fadeIn(800);
	var source=$(this).children()[0].getAttribute('src');
	$(".hoverImg").attr('src',source);
	var title=$(this).children()[1].innerHTML;
	$(".hoverTitle").html(title);
	$('html, body').css({ 'overflow': 'hidden'});
});

$(".hoverClose,.hoverBack").click(function(){
	$(".hoverBack").fadeOut(800);
	$(".hoverMain").fadeOut(800);
	$(".hoverClose").fadeOut(800);
	$('html, body').css({ 'overflow': 'auto'});
});

$(this).keyup(function(e){
	if (e.keyCode==27) {
		$(".hoverBack").fadeOut(800);
		$(".hoverMain").fadeOut(800);
		$(".hoverClose").fadeOut(800);
		$('html, body').css({ 'overflow': 'auto'});
	}
})

$("#past1Menu").click(function(){
	if ($("#past1").is(":visible")) {
		$("#past1").slideUp(1000);
	}
	else{
		$("#past1").slideDown(1000);	
	}
});

$("#past2Menu").click(function(){
	if ($("#past2").is(":visible")) {
		$("#past2").slideUp(1000);
	}
	else{
		$("#past2").slideDown(1000);	
	}
});

});