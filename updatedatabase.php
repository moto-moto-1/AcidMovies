<?php
$conn = mysqli_connect("pdb21.awardspace.net","2559374_movies","Moviezz1","2559374_movies");  

//-------------delete all in database---------------------------//
remove("movies","imdbid!","0");

echo "</br>hi every</br>";


$handle = fopen("movie.htm", "r");
$n=0;
if ($handle) {
	
	$imdbid = array();
	
    while (($line = fgets($handle)) !== false) {
        
		if(strpos($line,'href="/title/tt')!==false){
			//echo $line;
			$new=explode("/tt",$line);
			$new=explode("/",$new[1]);
			//$n++;
			
			//$n++;
			
			if (!in_array($new[0], $imdbid))
  {
  array_push($imdbid,$new[0]);
  $n++;
   updatemoviedata($new[0]);
  //newv("movies","imdbid",$new[0]);
  }
          else continue;
		
		}
		else continue;
		
		
		// process the line read.
    }

	
	
    fclose($handle);
	
	echo "finished";
} else {
    
	echo "cant open file";
	// error opening the file.
} 


//function to Enter new record
function newv($table,$cols,$values)
{
$sqll="INSERT INTO ".$table." (".$cols.") VALUES ('".$values."');";
//echo "feedback:".$sqll."</br>";

mysqli_query($GLOBALS['conn'],$sqll);

}
//End of Enter new record



function updatemoviedata($movieid){
	
	$url="www.omdbapi.com/?apikey=6add91ce&i=tt".$movieid;
	// create curl resource
        $ch = curl_init();
        // set url
        curl_setopt($ch, CURLOPT_URL, $url);
		//curl_setopt($ch, CURLOPT_HTTPHEADER, array('apikey: 6add91ce','i: '.$movieid));
        //return the transfer as a string
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        // $output contains the output string
       // $output = curl_exec($ch);
        $json = json_decode(curl_exec($ch), true);	

        // close curl resource to free up system resources
        curl_close($ch);  
	newv("movies","imdbid,title,description,image,rating,genre,releaseyear,profit,director,actors",$movieid."','".$json['Title']."','".$json['Plot']."','".$json['Poster']."','".$json['imdbRating']."','".$json['Genre']."','".$json['Year']."','".$json['BoxOffice']."','".$json['Director']."','".$json['Actors']);	

}



//---------function to get values from database-----------------//
function getv($table,$record,$colomn,$equals)
{
if(substr($equals,(strlen($equals)-1),1)==')'){$sqll="SELECT ".$record." FROM ".$table." WHERE ".$colomn."=" . "'" . $equals.";";}//---Check if select statment ends with ')'---//

else {$sqll="SELECT ".$record." FROM ".$table." WHERE ".$colomn."=" . "'" . $equals."';";}

$result=mysqli_query($GLOBALS['conn'],$sqll);

$value;
if( strpos( $record,",") !== false ) {
	$ii=0;
		
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

//file_put_contents('debuglog.txt', $value[0].PHP_EOL , FILE_APPEND | LOCK_EX);

$ii++;
}
return $value;
}

$ii=0;

while($name=mysqli_fetch_row($result))
{
$value[$ii]=$name[0];

$ii++;
}
//


return $value;
}

function remove($table,$colomn,$equals)
{
$sqll="DELETE FROM ".$table." WHERE ".$colomn."='".$equals."';";
file_put_contents('debuglog.txt', $sqll.PHP_EOL , FILE_APPEND | LOCK_EX);
$result=mysqli_query($GLOBALS['conn'],$sqll);
}


?>

