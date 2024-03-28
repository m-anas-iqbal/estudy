<?php 
include("../databaseConnection/config.php") ;
$mysql="SELECT * from post";
$result=mysqli_query($db,$mysql);

?>