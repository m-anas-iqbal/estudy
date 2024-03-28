<?php
include "config.php";
if(isset($_POST['add'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $phone=$_POST['phone'];
    $dob=$_POST['dob'];
$student="student";
    $errors= array();
    $file_name = $_FILES['image']['name'];
    $file_size =$_FILES['image']['size'];
    $file_tmp =$_FILES['image']['tmp_name'];
    $file_type=$_FILES['image']['type'];
    $file_ext=strtolower(end(explode('.',$_FILES['image']['name'])));
    
    $extensions= array("jpeg","jpg","png");
    
    if(in_array($file_ext,$extensions)=== false){
       $errors[]="extension not allowed, please choose a JPEG or PNG file.";
    }
    
    if($file_size > 2097152){
       $errors[]='File size must be excately 2 MB';
    }
    
    if(empty($errors)==true){
       move_uploaded_file($file_tmp,"../images/user_images/".$file_name);
       $mysql="INSERT INTO `users`(`phone`, `name`, `role`, `email`, `password`) VALUES ('$phone','$name','$student','$email','$password')";
mysqli_query($db,$mysql);
$ID=mysqli_insert_id($db);
unset($_SESSION['error']);
$mysql1="INSERT INTO `student`(`t_id`, `g_id`, `u_id`, `dob`, `st_img`) VALUES (0,0,$ID,$dob,$file_name)";
mysqli_query($db,$mysql);
       header("Location:../teacher/addParent.php");
    }else{
      $_SESSION['error']=$errors;
      header("Location:../teacher/addStudent.php");
    }
 }
         // Assignment     
 if(isset($_POST['Assignmentadd'])){
    $topicname=$_POST['name'];
    $des=$_POST['as_des'];
    $startdate=$_POST['Startdate'];
    $enddate=$_POST['Enddate'];
    $totalmask=$_POST['totalmask'];
   $file_tmp=$_FILES['asdocname']['tmp_name'];
   $file_name=$_FILES['asdocname']['name'];
// $str= "$mydate[weekday], $mydate[month] $mydate[mday], $mydate[year]";

    move_uploaded_file($file_tmp,"../images/doc_file/".$file_name);
// $target_dir = "../image/doc_file/";
// $target_file = $target_dir . basename($_FILES["asdocname"]["name"]);
// $uploadOk = 1;
// echo $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));die("ended");

    $mysql="INSERT INTO `assignments`(`as_des`, `asdocname`, `startdate`, `enddate`,`totalmask`, `name`) VALUES ('$des','$file_name','$startdate','$enddate','$totalmask','$topicname')";
    mysqli_query($db,$mysql);
    header("location:../teacher/assingment.php");

 }




         //  Announcement

         if(isset($_POST['Announcement'])){ 
            $des=$_POST['as_des'];
           $file_tmp=$_FILES['asdocname']['tmp_name'];
           $file_name=$_FILES['asdocname']['name'];
        // $str= "$mydate[weekday], $mydate[month] $mydate[mday], $mydate[year]";
        
            move_uploaded_file($file_tmp,"../images/doc_file/".$file_name);
        // $target_dir = "../image/doc_file/";
        // $target_file = $target_dir . basename($_FILES["asdocname"]["name"]);
        // $uploadOk = 1;
        // echo $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));die("ended");
        
            $mysql="INSERT INTO `post`(`p_des`, `docname`) VALUES ('$des','$file_name')";
            mysqli_query($db,$mysql);
            header("location:../teacher/announcement.php");
        
         }








// $target_dir = "../images/user_images/";
// $filename =  basename($_FILES["fileToUpload"]["name"]);
// $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
// $uploadOk = 1;
// $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// // Check if image file is a actual image or fake image
// if(isset($_POST["submit"])) {
//   $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
//   if($check !== false) {
//     echo "File is an image - " . $check["mime"] . ".";
//     $uploadOk = 1;
//   } else {
//     $_SESSION['error'] = "File is not an image.";
//     $uploadOk = 0;
//   }
// }

// // Check if file already exists
// if (file_exists($target_file)) {
//     $_SESSION['error'] = "Sorry, file already exists.";
//   $uploadOk = 0;
// }

// // Check file size
// if ($_FILES["fileToUpload"]["size"] > 500000) {
//   echo  $_SESSION['error'] = "Sorry, your file is too large.";
//   $uploadOk = 0;
// }

// // Allow certain file formats
// if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
// && $imageFileType != "gif" ) {
//     echo  $_SESSION['error'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
//   $uploadOk = 0;
// }

// // Check if $uploadOk is set to 0 by an error
// if ($uploadOk == 0) {
//     echo   $_SESSION['error'] = "Sorry, your file was not uploaded.";
// // if everything is ok, try to upload file
// } else {
//   if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
//     echo "The file ".htmlspecialchars(basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";

// $mysql="INSERT INTO `users`(`phone`, `name`, `role`, `email`, `password`) VALUES ('$phone','$name','$student','$email','$password')";
// mysqli_query($db,$mysql);
// echo $ID=mysqli_insert_id($db);
// $mysql1="INSERT INTO `student`(`u_id`, `dob`, `st_img`) VALUES ('$ID','$dob','$filename')";
// mysqli_query($db,$mysql);
// header("Location:../teacher/addParent.php");
//   } 
//   else {
//     echo  $_SESSION['error'] = "Sorry, there was an error uploading your file.";
//   }
// }


// <?php
// include "config.php";
// if(isset($_POST['add'])){
//     $name=$_POST['name'];
//     $email=$_POST['email'];
//     $password=$_POST['password'];
//     $phone=$_POST['phone'];
//     $dob=$_POST['dob'];
// $student="student";



// $target_dir = "../images/user_images/";
// $target_file = $target_dir.basename($_FILES["fileToUpload"]["name"]);
// $filename =  basename($_FILES["fileToUpload"]["name"]);
// $uploadOk = 1;
// $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// if (file_exists($target_file)) {
//     $_SESSION['error'] ="Sorry, file already exists.";
  
// //   $sql1="DELETE FROM `users` WHERE id =$id";
// //   $result1=mysqli_query($db,$sql1);
// //   header("Location:../teacher/addStudent.php");
//   $uploadOk = 0;
// }

// if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
// && $imageFileType != "gif" ) {
//     $_SESSION['error'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
//     // $sql1="DELETE FROM `users` WHERE id =$id";
//     // $result1=mysqli_query($db,$sql1);
//     // ("Location:../teacher/addStudent.php");
//   $uploadOk = 0;
// }
   

  
// }



?>