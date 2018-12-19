<html>

<head>

<title>ACID Movie database</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="mystyle.css">




</head>


<body bgcolor="#FFFFFF" text="#000000" style="font-family: Arial;">


<div class=head>
<div style="background:orange;color:black;display:inline;border-radius:10px;padding:2px;margin:2px;">ACID</div> Movies database
</div>

<div class=address>
<h1>Legendary movies of all time in your hands<h1>
</div>

<div class=main>

 <div class=tools> 
 <div style="position:absolute;left:0%;top:0%;width:32%;height:100%;">
 <div class=sortby>Sort by: <div class=sortresult style="display:inline;">Title</div></div>
 <div class=choices id=sortbychoices><div class=choice id=sorttitle>Title</div><div class=choice id=sortrating>Rating</div><div class=choice id=sortrelease>Release year</div></div>
 </div>
 <div style="position:absolute;left:32%;top:0%;width:32%;height:100%;">
 <div class=genre>Genre: <div class=genreresult style="display:inline;">All</div></div>
 <div class=choices id=genrechoices>
 
<div class=choice id=drama>Drama</div><div class=choice id=romance>Romance</div><div class=choice id=western>Western</div><div class=choice id=war>War</div>
<div class=choice id=biography>Biography</div><div class=choice id=sport>Sport</div><div class=choice id=crime>Crime</div><div class=choice id=thriller>Thriller</div>
<div class=choice id=family>Family</div><div class=choice id=sci-Fi>Sci-Fi</div><div class=choice id=comedy>Comedy</div><div class=choice id=history>History</div>
<div class=choice id=adventure>Adventure</div><div class=choice id=musical>Musical</div><div class=choice id=romance>Romance</div><div class=choice id=action>Action</div><div class=choice id=all>All</div>
 
 </div>
 </div>
 <div style="position:absolute;left:65%;top:0%;width:32%;height:100%;">
<div class=results><div class=resultsnumber style="display:inline;">All</div> Results per page</div>
  <div class=choices id=resultschoices><div class=choice id=result5>5</div><div class=choice id=result10>10</div><div class=choice id=result20>20</div><div class=choice id=result30>30</div><div class=choice id=resultall>All</div></div>
 
 </div>
 </div>
 <div class=list>
 <br>
<div class=listbutton>List >></div>
<br><br><br>
<div class=moviearea>
<div class=movieentity id=firstresult style="display:none;"></div>

<br>

</div>
<div style="text-align:center"><a class=previous>< Previous</a><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>page<span class=pagenumber>1</span><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><a class=next>Next ></a></div>
<br><br>
 </div>


</div>

<script>
var prevpage;
var nexpage;

$(".sortby,.genre,.results").on("click", function(){$("#"+$(this).attr('class')+"choices").toggle("fast","swing");});

$(".choice").on("click", function(){		
	$(this).attr('class');	
	var choiceid=$(this).attr("id");
	var choicevalue=$(this).html();	
	if(choiceid.startsWith("result")){$(".resultsnumber").html(choicevalue);}
	else if(choiceid.startsWith("sort")){$(".sortresult").html(choicevalue);}
	else {$(".genreresult").html(choicevalue);}
    $(".choices").hide("up");
	
});

$(".listbutton").on("click", function(){	
	$(".moviearea").html("<div class=movieentity id=firstresult style='display:none;'></div>");
	forward("new",getjsonstring(1));
 });

$(".previous").on("click",function(){var predata=getjsonstring(prevpage);forward("new",predata);});
$(".next").on("click",function(){var predata=getjsonstring(nexpage);forward("new",predata);});

 function forward(name,data){
    var xhttp;
	xhttp = new XMLHttpRequest();
	
	xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) 
			{	
				
		$(".moviearea").html("<div class=movieentity id=firstresult style='display:none;'></div>");
		$(".previous").show();
		$(".next").show();
				
				
		 var reply = JSON.parse(this.responseText);
		 $(".pagenumber").html(reply.currentpage);
		
		 prevpage=reply.previouspage;
		 nexpage=reply.nextpage;
		
		 
		 var moviedetails="";
				
		 for (movie in reply) {
			
			if(!movie.startsWith("result")){continue;}
			 
			 moviedetails="<div class=moviedata id="+movie+"><div style='font-size:30px;padding:2%;'>"+reply[movie].title+"</div><div style='font-size:13px;padding:3%;'>"+reply[movie].releaseyear+"</div><div style='font-size:13px;padding:2%;'>Rating: "+reply[movie].rating+"/10</div><div style='font-size:15px;padding:2%;'>"+reply[movie].description+"</div><div style='font-size:15px;padding:2%;'>Directed by: "+reply[movie].director+"</div><div style='font-size:15px;padding:2%;'>Actors: "+reply[movie].actors+"</div><div style='font-size:15px;padding:2%;'>Gross profit: "+reply[movie].profit+"</div><br></div>";
			
			 $( ".movieentity:last" ).after( "<div class=movieentity id="+movie+"><img class=images id="+movie+" src='"+reply[movie].image+"'>"+moviedetails+"</div>" );
			
		 }
		 $(".movieentity").on("click", function(){
	 
	 var id=$(this).attr("id");
	 
	 $(".moviedata#"+id).toggle("fast");
	 
	 
 });
 
 if(reply.noprevious=='yes'){$(".previous").hide();}
 if(reply.nonext=='yes'){$(".next").hide();}
		}
		 };	
		 
    xhttp.open("GET", "getdata.php?"+name+"=" + data, true);
	xhttp.send();
 }
 
 
 function getjsonstring(page){

	var data = {
  sortby : $(".sortresult").html(),
  genre : $(".genreresult").html(),
  resultperpage : $(".resultsnumber").html(),
  pagenumber : page
  
}; 
	 var jsondata = JSON.stringify(data);
	 return jsondata;
	 
 }




</script>