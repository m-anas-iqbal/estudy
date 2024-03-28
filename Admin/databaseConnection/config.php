<?php
$username="root";
$password="";
$host="localhost";
$database="academic_dairy";
// Check connection
$db = mysqli_connect($host,$username,$password,$database);
session_start();

//$con=mysql_connect($host,$username,$password,$database) ;
// Create connection
//$conn = new mysqli($host, $username, $password,$database);

// Check connection
// if ($db->connect_error) {
//   die("Connection failed: " . $conn->connect_error);
// }else{
//     echo "connection succesess";
// }
// $dbselect = "SELECT * FROM `account`";
// $dbquery = mysqli_query($con, $dbselect);

// $dbcount = mysqli_num_rows($dbquery);

// if($dbcount > 0)
// {
//     while($row =  mysqli_fetch_assoc($dbquery))
//     {
//         echo $row['acc_no'].'<br>';
//     }
// }
// else
// {
// echo "0 rows!";
// }
?>