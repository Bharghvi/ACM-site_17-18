recentEventConfig=[
{
	"imgSrc":"img/events/acmSummerChallenge.jpg",
	"eventTitle":"ACM Summer Challenge",
	"date":"22/5/2017 to 5/7/2017",
	"time":"-",
	"venue":"online@",
	"contactPerson":["Deepanshu Sharma","Swapnil Patel"],
	"contactPersonPhone":["+917600828330","+918320933715"],
	"details":"This will be a 45 - 50 days long challenge on hackerearth with 25 - 30 problems.The initial problem will be of easy difficulty level and will inc along with later ques.The que will cover all topics upto basic STL library usage. Or it can be decide by prob setter.The target of the challenge is not to make them pro in competitive coding but to introduce them to how to approach a problem of real life.The performance of the executives in the challenge will determine their eligiblity for acm.This contest will be open to all 1st yearites who want to join ACM as executives."
},
{
	"imgSrc":"img/events/inception.jpg",
	"eventTitle":"Inception 2.0",
	"date":"20/8/2017",
	"time":"8:30pm to 10:30pm",
	"venue":"online@",
	"contactPerson":["Tanishka Khatri","Simran Bawkar"],
	"contactPersonPhone":["+919824259166","+917678024097"],
	"details":"Love to Code? Get a glimpse of the vast competitive coding world and know where you stand. We bring you Inception 2.0, a competitive coding contest meant exclusively for 1st and 2nd yearites. So make sure you have your HackerEarth accounts ready and Register in the link below. Let your skills, speed and accuracy decide your rank.Registration Link: <a href=\"https://goo.gl/QRM7FE\" target=\"_blank\">https://goo.gl/QRM7FE"
}
];

pastEventConfig1617=[
{
	"eventTitle":"Orientation for First Yearites",
	"description":"Lorem ipsum dolor sit amet, consetetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"Epihany",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"Codding Worksop",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"Geekend",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"T-Shirt Designing Competition",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"Workshop on Backend Codding",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"Tech-IQ",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
},
{
	"eventTitle":"ACM Interviews",
	"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non odio ut sem ullamcorper eleifend at ut orci. Mauris in interdum eros. Nullam fermentum dapibus pulvinar. Nunc faucibus eleifend lobortis. Nulla vulputate lectus sit amet sapien gravida sodales vel vel dui. Etiam dignissim eros id est cursus interdum."
}
];

function listAllEvents(){
	parentHolder=document.getElementById("recentEvents");
	for(var i=0;i<recentEventConfig.length;i++)
	{
		var poster=createBreifEventBody(recentEventConfig[i],i);
		parentHolder.appendChild(poster);
	}
}

function createBreifEventBody(event, eventNumber){

	var div=document.createElement("div");
	div.setAttribute("class","vcol-4 vcol-md-6 vcol-sl-12");

	var childDiv=document.createElement("div");
	childDiv.setAttribute("class","eventsPoster");
	childDiv.setAttribute("onclick","showDetailEvent("+eventNumber+")");

	var grandChildImg=document.createElement("img");
	grandChildImg.setAttribute("src",event["imgSrc"]);
	grandChildImg.setAttribute("class","eventPics");

	var grandChildH4=document.createElement("h4");
	grandChildH4.setAttribute("class","eventTitle");
	grandChildH4.innerHTML=event["eventTitle"];

	childDiv.appendChild(grandChildImg);
	childDiv.appendChild(grandChildH4);

	div.appendChild(childDiv);
	return div;

}

function listAllPastEvents(){
	var parentHolder=document.getElementById('pastEvents1617');
	for(var i=0;i<pastEventConfig1617.length;i++)
	{
		var poster=bodyForPastEvents(pastEventConfig1617[i]);
		parentHolder.appendChild(poster);
	}
}

function bodyForPastEvents(event){
	var div=document.createElement("div");
	div.setAttribute("class","vcol-12 vcol-sl-12 vcol-md-12");

	var childDiv=document.createElement("div");
	childDiv.setAttribute("class","pastEventDiv");

	var grandChildH3=document.createElement('h3');
	grandChildH3.innerHTML=event["eventTitle"];

	var grandChildP=document.createElement('p');
	grandChildP.innerHTML=event["description"];

	childDiv.appendChild(grandChildH3);
	childDiv.appendChild(grandChildP);

	div.appendChild(childDiv);
	return div;

}

listAllEvents();
listAllPastEvents();