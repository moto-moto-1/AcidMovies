<html>

<head>

<title>ACID Movie database</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">




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

 <input type="hidden" name="csrf" id="csrf" value="{{ csrf_token() }}">
</div>

<script src="js/myjs.js"></script>

