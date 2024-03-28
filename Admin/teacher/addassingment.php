<?php
include "header.php";
?>     

     <!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">

  <form class="pt-3" action="../databaseConnection/insert.php" method="post" enctype="multipart/form-data">
    <h2 class="mb-3 ml-3">Add Assignment</h2>
                <div class="form-group">
                  <input type="text" name="name" class="form-control form-control-lg"  placeholder="Asingment Topic">
                </div>
                <div class="form-group">
                  <textarea  class="form-control form-control-lg" id="" cols="30" rows="10" name="as_des" placeholder="Asingment Description"></textarea>
                </div>
                <label for="" class="ml-3">Assignment Document</label>
                <div class="form-group">
                  <input type="file" class="form-control form-control-lg" name="asdocname" placeholder="Asingment Document">
                </div>
                <div class="form-group">
                <label for="" class="ml-3">Start Date</label>
                  <input type="date" class="form-control form-control-lg" name="Startdate" placeholder="Start Date">
                </div>
                <div class="form-group">
                <label for="" class="ml-3">End Date</label>

                  <input type="date" class="form-control form-control-lg" name="Enddate" placeholder="End Date">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="totalmask" placeholder="Total Marks">
                </div>
               
            
                <div class="mt-3">
                 <button type="submit" name="Assignmentadd" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn fs-1">Add</button>
                </div>
              
              </form>



  </div>
</div>
<?php
include "footer.php";
?>