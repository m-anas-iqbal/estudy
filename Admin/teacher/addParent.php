<?php
include "header.php";
?>     

     <!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">

  <form class="pt-3">
  <h2 class="mb-3 ml-3">Add Parent/Guardian</h2>

                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="name"  placeholder="Name">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg"name="email"  placeholder="Email">
                </div>
              
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="phone" placeholder="Phone No">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="s_id" placeholder="Student Id">
                </div>
            
                <div class="mt-3">
                  <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="index.html">ADD</a>
                </div>
              
              </form>



  </div>
</div>
<?php
include "footer.php";
?>