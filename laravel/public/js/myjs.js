
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
			
			if(!movie.match(/^\d/)){continue;}
			 
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
    xhttp.open("GET", "getresults?"+name+"=" + data + "&" +"_token"+"="+ $("#csrf").val()  , true);
    xhttp.send();
    //alert("hi");
    //alert("sent "+ name + " "+data); "_token" "{{ csrf_token() }}",
 }
 
 
 function getjsonstring(page){

	var data = {
  sortby : $(".sortresult").html(),
  genre : $(".genreresult").html(),
  resultperpage : $(".resultsnumber").html(),
  pagenumber : page,
  
  
}; 
	 var jsondata = JSON.stringify(data);
     return jsondata;
	 
 }


