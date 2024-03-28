<?php
include "header.php";
?>     
     <!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">
  <form class="pt-3" action="../databaseConnection/insert.php" method="post" enctype="multipart/form-data">

  <h2 class="mb-3 ml-3">Add Announcement</h2>
           <div class="form-group">
                  <textarea  class="form-control form-control-lg" id="" cols="30" rows="10" name="as_des" placeholder="Announcement Description"></textarea>
                </div>
                <label for="" class="ml-3">Announcement Document</label>
                <div class="form-group">
                  <input type="file" class="form-control form-control-lg" name="asdocname" placeholder="Announcement Document">
                </div>

                <div class="mt-3">
                 <button type="submit" name="Announcement" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn fs-1">Add</button>
                </div>
              
              </form>


  </div>
</div>


<?php
include "footer.php";
?>