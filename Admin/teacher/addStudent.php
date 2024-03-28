<?php
include "header.php";
?>     

     <!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">

  <form class="pt-3" action="../databaseConnection/insert.php" method="post"  enctype="multipart/form-data">
  <h2 class="mb-3 ml-3">Add Student</h2>

                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="name"  placeholder="Name">
                </div>
                <!-- <div class="form-group">
                  <input type="email" class="form-control form-control-lg" name="email"  placeholder="Email">
                </div> -->
                <div class="form-group">
                  <input type="email" name="email" onchange="emailchecking()" id="email"class="form-control form-control-lg"  placeholder="Email">
                  <span id="error"></span>
                </div>
              
                <div class="form-group">
                  <input type="text" onchange="phonechecking()" id="phone" class="form-control form-control-lg" name="phone" placeholder="Phone No">
                  <span id="error1"></span>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="file"  class="form-control form-control-lg"  name="image" id="fileToUpload" placeholder="Student Image">
                </div><span style='color:red;text-align:center;' id="error2"><?php  if(isset($_SESSION['error'])){echo $_SESSION['error'];}else{echo " ";}?></span>
                <div class="form-group">
                  <input type="date" class="form-control form-control-lg" name="dob" placeholder="Date Of Birth">
                </div>
               
            
                <div class="mt-3">
                  <button type="submit" name="add" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" >ADD</a>
                </div>
              
              </form>



  </div>
</div>
<script>
function emailchecking() {
    var email1 = document.getElementById("email").value;
   var errormsg="<span style='color:red;text-align:center;'>this email is already exist</span>";

if (email1!==null&& email1 !== '') {
    // alert(couerierno)
    $.ajax({
    url: "../databaseConnection/get_ajax.php",
    type:"POST",
    dataType:"html",
    data:{
      email1:email1,
    },
    success: function(result){
        console.log(result)
        if (result ==0) {
          $("#email").val(email1);   
          errormsg="";
          document.getElementById("error").innerHTML=errormsg;
        }else{
        
               
          $("#email").val("");
          document.getElementById("error").innerHTML=errormsg;
  }

  },error: function(result){
    console.log(result)
  }
});
}
}

function phonechecking() {
    var phone1 = document.getElementById("phone").value;
   var errormsg="<span style='color:red;text-align:center;'>this Phone no is already exist</span>";

if (phone1!==null&& phone1 !== '') {
    // alert(couerierno)
    $.ajax({
    url: "../databaseConnection/get_ajax.php",
    type:"POST",
    dataType:"html",
    data:{
      phone1:phone1,
    },
    success: function(result){
        console.log(result)
        if (result ==0) {
          $("#phone").val(phone1);  
          errormsg =""; 
          document.getElementById("error").innerHTML=errormsg;
        }else{
        
               
          $("#phone").val("");

          document.getElementById("error").innerHTML=errormsg;
  }

  },error1: function(result){
    console.log(result)
  }
});
}
}
</script>
<?php
include "footer.php";
?>