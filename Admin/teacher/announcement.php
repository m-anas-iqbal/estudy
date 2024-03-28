<?php
include "header.php";
?>     
     <!-- partial -->
<div class="main-panel">
  <div class="content-wrapper">
    <div class="container">
      <div class="row">
      <span class="col-12 d-block p-2 bg-white text-black mb-4 " style="border-radius:20px; vertical-align: middle;">
      <div class="col-12 d-flex">
      <h3 class="mr-6 pt-2 pl-3"style="margin-right:500px;" > Add Announcement</h3>  <a href="addannouncement.php" class="col-sm-2 btn btn-primary ml-5 " >Add</a>
      </div> 
      </span>

                <div class="card col-12" id="main" >
                <div class="row g-0">
                  <div class="col-md-3">
                    <img src="..." class="img-fluid rounded-start" alt="...">
                  </div>
                  <div class="col-md-9">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
              </div>
       </div>
    </div>
  </div>
</div>
<script >
$(document).ready(function (){
  $.ajax({
    url: "../databaseConnection/get_ajax_card.php",
    type:"POST",
    success: function(data){
      $("#main").html(data)
    }

});

</script>

<?php
include "footer.php";
?>