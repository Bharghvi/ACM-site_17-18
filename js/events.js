$(document).ready(function(){

$(".eventsPoster").click(function(){
	$(".hoverBack").fadeIn(800);
	$(".hoverMain").fadeIn(800);
	$(".hoverClose").fadeIn(800);
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

});