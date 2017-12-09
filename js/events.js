$(document).ready(function(){


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

var url=window.location.href;
url=url.split('?');
if(url.length>1)
{
    var eventNumber=url[1].split('=');
    eventNumber=parseInt(eventNumber[1]);
    if(eventNumber<recentEventConfig.length)
        showDetailEvent(eventNumber);
}

});

function showDetailEvent(eventNumber)
{
	$(".hoverBack").fadeIn(800);
	$(".hoverMain").fadeIn(800);
	$(".hoverClose").fadeIn(800);
	var source=recentEventConfig[eventNumber]["imgSrc"];
	$(".hoverImg").attr('src',source);
	var title=recentEventConfig[eventNumber]["eventTitle"];
	$(".hoverTitle").html(title);
	$('html, body').css({ 'overflow': 'hidden'});

	var mainInfoParent=document.getElementsByClassName('eventInfo')[0];

	var date=mainInfoParent.getElementsByClassName('date')[0];
	date.innerHTML="<span class=\"infoTitle\"><i class=\"fa fa-calendar\"></i> Date : </span>&nbsp;&nbsp;"+recentEventConfig[eventNumber]["date"];

	var time=mainInfoParent.getElementsByClassName('timings')[0];
	time.innerHTML="<span class=\"infoTitle\"> <i class=\"fa fa-clock-o\"></i> Timing : </span>&nbsp;&nbsp;"+recentEventConfig[eventNumber]["time"];

	var venue=mainInfoParent.getElementsByClassName('venue')[0];
	venue.innerHTML="<span class=\"infoTitle\"><i class=\"fa fa-map-marker\"></i> Venue : </span>&nbsp;&nbsp;"+recentEventConfig[eventNumber]["venue"];

	var contactTable=mainInfoParent.getElementsByClassName('contactTable')[0];
	contactTable.innerHTML='';
	for(var i=0;i<recentEventConfig[eventNumber]["contactPerson"].length;i++)
	{
		tr=document.createElement('tr');
		if(i==0)
		{
			td=document.createElement('td');
			td.innerHTML="<span class=\"infoTitle\"><i class=\"fa fa-phone\"></i> Contact : </span>&nbsp;&nbsp;";
			tr.appendChild(td);
		}
		else
		{
			td=document.createElement('td');
			tr.appendChild(td);
		}
		td=document.createElement('td');
		td.innerHTML=recentEventConfig[eventNumber]["contactPerson"][i]+" : "+recentEventConfig[eventNumber]["contactPersonPhone"][i];
		tr.appendChild(td);
		contactTable.appendChild(tr);
	}

	var details=mainInfoParent.getElementsByClassName('aboutEvent')[0];
	details.innerHTML="<span class=\"infoTitle\">About : </span>"+recentEventConfig[eventNumber]["details"];
}