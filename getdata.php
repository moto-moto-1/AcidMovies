<?php

error_reporting(0);
ob_start();

$new = $_REQUEST["new"];


$conn = mysqli_connect("pdb21.awardspace.net","2559374_movies","Moviezz1","2559374_movies");  

if($new !== ""){

		$jsondata=json_decode($new);

$sortingdir="DESC";
if($jsondata->sortby=="Title"){$sortingdir="ASC";}
if($jsondata->sortby=="Release year"){$jsondata->sortby="releaseyear";}
if($jsondata->genre=="All"){$jsondata->genre="";}
if($jsondata->resultperpage=="All"){$jsondata->resultperpage=100;}



$data=getvlike("movies","title,releaseyear,genre,director,actors,description,image,rating,profit","genre","%".$jsondata->genre."%","ORDER BY ".$jsondata->sortby." ".$sortingdir);

$resultstoreturn=$jsondata->resultperpage;
$currentpage=$jsondata->pagenumber;
$firstresult=($currentpage-1)*$resultstoreturn;
$lastresult=$firstresult+$resultstoreturn;

$movie->nextpage=$currentpage+1;
$movie->currentpage=$currentpage;

$movie->noprevious="no";
$movie->nonext="no";

if($currentpage>1){$movie->previouspage=$currentpage-1;}else {$movie->noprevious="yes";$movie->previouspage=1;}
if($lastresult>=count($data)){$lastresult=count($data);$movie->nonext="yes";}
if($firstresult>=count($data)){$firstresult=count($data);file_put_contents('debuglog.txt', "entered".PHP_EOL , FILE_APPEND | LOCK_EX);}
if($firstresult=='0'){$movie->noprevious="yes";}


file_put_contents('debuglog.txt', $firstresult." ".$lastresult." ".count($data).PHP_EOL , FILE_APPEND | LOCK_EX);


$n="result";
$ll=0;
for($ii=$firstresult;$ii<$lastresult;$ii++){

$start=$n.$ll;
file_put_contents('debuglog.txt', "Start result ".$start.PHP_EOL , FILE_APPEND | LOCK_EX);

$movie->$start->title = $data[$ii][0];
$movie->$start->releaseyear = $data[$ii][1];
$movie->$start->genre = $data[$ii][2];
$movie->$start->director = $data[$ii][3];
$movie->$start->actors = $data[$ii][4];
$movie->$start->description = $data[$ii][5];
$movie->$start->image = $data[$ii][6];
$movie->$start->rating = $data[$ii][7];
$movie->$start->profit = $data[$ii][8];

$ll++;

}
echo json_encode($movie);

}

//Get Value LIKE
function getvlike($table,$record,$colomn,$equals,$added)
{
$sqll="SELECT ".$record." FROM ".$table." WHERE ".$colomn." LIKE " . "'" . $equals. "' ".$added.";";
//echo $sqll."</br>";
$result=mysqli_query($GLOBALS['conn'],$sqll);
$value;
$ii=0;
file_put_contents('debuglog.txt', $sqll.PHP_EOL , FILE_APPEND | LOCK_EX);
while($name=mysqli_fetch_row($result))
{
$value[$ii][0]=$name[0];
$value[$ii][1]=$name[1];
$value[$ii][2]=$name[2];
$value[$ii][3]=$name[3];
$value[$ii][4]=$name[4];
$value[$ii][5]=$name[5];
$value[$ii][6]=$name[6];
$value[$ii][7]=$name[7];
$value[$ii][8]=$name[8];
$value[$ii][9]=$name[9];
$value[$ii][10]=$name[10];
$value[$ii][11]=$name[11];

$ii++;
}
return $value;
}
//End of Get Value LIKE




mysqli_close($conn);

?>