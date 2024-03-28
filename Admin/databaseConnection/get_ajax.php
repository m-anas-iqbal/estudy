<?php 
include 'config.php';

if(isset($_POST["email1"])){
    $sel="select * from `users` where email = '{$_POST['email1']}'";

    $q1=mysqli_query($db,$sel);
    while($row =  mysqli_fetch_assoc($q1))
    {
        if ($row >0) {
            echo 1;
        }else {
            echo 0;
        }
    }
}
if(isset($_POST["phone1"])){
     $sel="select * from `users` where phone = '{$_POST['phone1']}'";

    $q1=mysqli_query($db,$sel);
    while($row =  mysqli_fetch_assoc($q1))
    {
        if ($row >0) {
            echo 1;
        }else {
            echo 0;
        }
    }
}








if (isset($_POST["height"])) {
    $city1 = $_POST["city1"];
    $city2 = $_POST["city2"];
        $sel ="select * from priceing";
        $q1=mysqli_query($db,$sel);
        while($row =  mysqli_fetch_assoc($q1))
        {   
       
           $height = ((float)($_POST["height"]) /(float)($row['height'])) ;
           $width = ((float)($_POST["width"]) /(float)($row['width'])) ;
           $weight = ((float)($_POST["weight"]) /(float)($row['weight'])) ;
           
           if ($city1 !=null&&$city1!='' && $city2=''&& $city2!=null) {
            if($city1 == $city2)
            {
                $parcel_cost = (float)($row["parcel_cost"]);
         
         }else {
             $parcel_cost = ((float)($row["parcel_cost"])*2);
         }
           }else{
            $parcel_cost = 0;
           }
       
          
         $result = ((float)($height*$row["h_cost"])+ (float)($height*$row["h_cost"])+(float)($weight*$row["wt_cost"])+(float)($width*$row["w_cost"])+($parcel_cost));
    
            echo $result;
        }
       
    }
    if (isset($_POST["city"])) {
        $query="insert into `city` (`city`) 
    values 
    ('{$_POST['city']}')";
    if($db->query($query)){
        $sel="select * from `city`";
        $q1=mysqli_query($db,$sel);
              while($row =  mysqli_fetch_assoc($q1))
        {
            echo '<tr>
            <td>'.$row['c_id'].'</td>
            <td>'.$row['city'].'</td>
            <td class="actions">
            <button class="on-default remove-row" onclick="dlt(this)" name="'.$row['c_id'].'"><i class="far fa-trash-alt"></i></button></td>
            <input type="hidden" value="'.$row['c_id'].'" id="ids'.$row['c_id'].'">
            </td>
        </tr>';
        }
    }
    
    }
    if (isset($_POST["tablename"])) {
        $tablename = $_POST["tablename"];
        $sel="delete  from `{$_POST["tablename"]}` where id ={$_POST["ids"]}";
        mysqli_query($db,$sel);
        if ($tablename=="users") {
            $sel="select * from `users` ";
										 
            $q1=mysqli_query($db,$sel);
                  while($row =  mysqli_fetch_assoc($q1))
            {
               if ($row['status'] === "active") {
                   $status = "<div style='width:20px;height: 20px;border-radius:50%;background-color: green;'></div>";
                } else {
                   $status ="<div style='width:20px;height: 20px;border-radius:50%;background-color: red;'></div>";
                } 
                echo '<tr >
                <td>'.$row['id'].'</td>
                <td>'.$row['name'].'</td>
                <td>'.$row['address'].'</td>
                <td>'.$row['role'].'</td>
                <td>'.$row['phone'].'</td>
                <td>'.$row['email'].'</td>
                <td>'.$status.'</td>
                <td>'.$row['created'].'</td>
                <td class="actions">
                <a href="user_edit.php?id='.$row['id'].'" class="on-default edit-row"><i class="fas fa-pencil-alt"></i></a>
                <button class="on-default remove-row" onclick="dlt(this)" name="'.$row['id'].'"><i class="far fa-trash-alt"></i></button> </td>
                <input type="hidden" value="'.$row['id'].'" id="ids'.$row['id'].'">
            </tr>';
            }
        }
        if ($tablename=="courior") {          
        $sel="delete  from `{$tablename}` where id ={$_POST["ids"]}";
        mysqli_query($db,$sel);
        $sel="delete  from `courier_detail` where dc_id ={$_POST["ids"]}";
        mysqli_query($db,$sel);
        $sel="select * from `courior` left join `courier_detail` on  courior.id=courier_detail.dc_id";
										 $q1=mysqli_query($db,$sel);
											   while($row =  mysqli_fetch_assoc($q1))
										 {
											 echo '<tr >
											 <td>'.$row['id'].'</td>
											 <td>'.$row['startdate'].'</td>
											 <td>'.$row['deliverydate'].'</td>
											 <td>'.$row['weight'].'</td>
											 <td>'.$row['height'].'</td>
											 <td>'.$row['width'].'</td>
											 <td>'.$row['departure'].'</td>
											 <td>'.$row['destination'].'</td>
											 <td class="actions">
												 
												 <a href="courier_edit.php?id='.$row['id'].'" class="on-default edit-row"><i class="fas fa-pencil-alt"></i></a>
												 <button class="on-default remove-row" onclick="dlt(this)" name="'.$row['id'].'"><i class="far fa-trash-alt"></i></button> </td>
											 <input type="hidden" value="'.$row['id'].'" id="ids'.$row['id'].'">
											 </td>
										 </tr>';
										 }

        }
        if ($tablename=="city") {

            
        $sel1="delete  from `city` where c_id ={$_POST['ids']}";
        mysqli_query($db,$sel1);
            $sel="select * from `city`";
            $q1=mysqli_query($db,$sel);
              while($row =  mysqli_fetch_assoc($q1))
        {
            echo '<tr>
											 <td>'.$row['c_id'].'</td>
											 <td>'.$row['city'].'</td>
											 <td class="actions">
											

											 
											 <button class="on-default remove-row" onclick="dlt(this)" name="'.$row['c_id'].'"><i class="far fa-trash-alt"></i></button></td>
											 <input type="hidden" value="'.$row['c_id'].'" id="ids'.$row['c_id'].'">
											 </td>
										 </tr>';
        }
        }
        
    
    }
    
    if (isset($_POST["orders"])) {
        $lock;
        if ($_SESSION['userid'] !=null) {
            $query1="INSERT INTO `courior`(`startdate`, `deliverydate`, `weight`, `departure`, `destination`) VALUES ('{$_POST['startdate1']}','{$_POST['enddate1']}','{$_POST['weight1']}','{$_POST['city11']}','{$_POST['city21']}')";
            ($db->query($query1));
            $last_id = $db->insert_id;
              $sel ="select * from priceing";
              $q1=mysqli_query($db,$sel);
              while($row =  mysqli_fetch_assoc($q1))
              {
                 $height = ((float)($_POST["height1"]) /(float)($row['height'])) ;
                 $width = ((float)($_POST["width1"]) /(float)($row['width'])) ;
                 $weight = ((float)($_POST["weight1"]) /(float)($row['weight'])) ;
                 if($_POST["city11"] != $_POST["city21"])
                 {
                     $parcel_cost = (float)($row["parcel_cost"]);
              
              }else {
                  $parcel_cost = ((float)($row["parcel_cost"])*2);
              }
                
               $result = ((float)($height*$row["h_cost"])+ (float)($height*$row["h_cost"])+(float)($weight*$row["wt_cost"])+(float)($width*$row["w_cost"])+($parcel_cost));
          
                  $_SESSION['totalprice'] =  $result;
                  $_SESSION['courior_id'] = $last_id;
                //   echo $result;
                  $query2="INSERT INTO `courier_detail`( `d_departure`, `d_destination`, `height`, `width`, `totalprice`) VALUES ('{$_POST['d_departure1']}','{$_POST['d_destination1']}','{$_POST['height1']}','{$_POST['width1']}','{$result}')";
              ($db->query($query2));
              }
            //   $lock = 0;
            //   echo $lock;
              header("Location:../payment.php");
            //   echo "<script>window.location='payment.php';</script>";
             
        }else {
            // header("Location:../payment.php");
            // if (result == 0) {
            //     window.location.href = "payment.php";
            // } else {
            //     window.location.href = "index.php";
            // }
            $_SESSION['msg'] = 'First have to register your self';
            header("Location:../index.php");
            // echo "<script>window.location='index.php';</script>";
        }
    //     $query1="INSERT INTO `courior`(`startdate`, `deliverydate`, `weight`, `departure`, `destination`) VALUES ('{$_POST['startdate1']}','{$_POST['enddate1']}','{$_POST['weight1']}','{$_POST['city11']}','{$_POST['city21']}')";
    //   ($db->query($query1));
    //   $last_id = $db->insert_id;
    //     $sel ="select * from priceing";
    //     $q1=mysqli_query($db,$sel);
    //     while($row =  mysqli_fetch_assoc($q1))
    //     {
    //        $height = ((float)($_POST["height1"]) /(float)($row['height'])) ;
    //        $width = ((float)($_POST["width1"]) /(float)($row['width'])) ;
    //        $weight = ((float)($_POST["weight1"]) /(float)($row['weight'])) ;
    //        if($_POST["city11"] != $_POST["city21"])
    //        {
    //            $parcel_cost = (float)($row["parcel_cost"]);
        
    //     }else {
    //         $parcel_cost = ((float)($row["parcel_cost"])*2);
    //     }
          
    //      $result = ((float)($height*$row["h_cost"])+ (float)($height*$row["h_cost"])+(float)($weight*$row["wt_cost"])+(float)($width*$row["w_cost"])+($parcel_cost));
    
    //         $_SESSION['totalprice'] =  $result;
    //         $_SESSION['courior_id'] = $last_id;
    //         echo $result;
    //         $query2="INSERT INTO `courier_detail`( `d_departure`, `d_destination`, `height`, `width`, `totalprice`) VALUES ('{$_POST['d_departure1']}','{$_POST['d_destination1']}','{$_POST['height1']}','{$_POST['width1']}','{$result}')";
    //     ($db->query($query2));
    //     }
       
    }
    //get_party_list
if(isset($_POST['courior']) && $_POST['courior'] > 0){

    $id = $_POST['courior'];
      $sel = "select * from `courior` left join `courier_detail` on  courior.id=courier_detail.dc_id LEFT JOIN orders ON orders.courior_id = courior.id where id = {$id} ";
      $q = mysqli_query($db, $sel);
      $html='';
              while ($row = mysqli_fetch_assoc($q)) {
                  $html.='<style>
                  table , td, th {
                  border: 1px solid #595959; 
                  border-collapse: collapse;
                  }
                  th {
                    background:#b9b9b9; 
                    }
                  td, th {
                  padding: 3px;
                          width: 150px;
                          height: 20px;
                          text-align: center
                  }
                  .container{
                  border: 1px solid black;
                  padding: 10px;
                  border-radius: 10px;
                  }
                  </style>
                  <div class="container">
                  <div style="text-align: center"><span><b>Courier # '.$row['id'].' </b> </span></div>
                  <br>
                  <table>
                      <tbody>
                          <tr>
                              <th style="width:375px ;">Height</th>
                              <th style="width:250px ;">Width</th>
                              <th style="width:250px ;">Weight</th>
                              <th style="width:250px ;">Total Price</th>
                          </tr>
                          <tr>
                              <td>'.$row['height'].'</td>
                              <td>'.$row['width'].'</td>
                              <td>'.$row['weight'].'</td>
                              <td>'.$row['totalprice'].'</td>
                          </tr>
                      </tbody>
                  </table>
                  <br>
                  <table>
                      <tbody>
                      <tr>
                      <th style="width:375px ;">Departure City</th>
                      <th style="width:250px ;">Destination City</th>
                      <th style="width:250px ;">Start date</th>
                      <th style="width:250px ;">Delivery date</th>
                  </tr>
                          <tr>
                              <td>'.$row['departure'].'</td>
                              <td>'.$row['destination'].'</td>
                              <td>'.$row['startdate'].'</td>
                              <td>'.$row['deliverydate'].'</td>
                          </tr>
                      </tbody>
                  </table> 
                  <br>
                  <table>
                  <tbody>
                      <tr>
                          <th style="width:400px ;">Detail Departure: </th>
                          <td style="width:720px ;">'.$row['d_departure'].'</td>
                      </tr>
                      <tr>
                          <th>Detail Destination :</th>
                          <td>'.$row['d_destination'].'</td>
                      </tr>
                      <tr>
                  </tbody>
              </table>
                  </div>
                 
                  ';
             }  
echo $html;
?>

<a href="../reportpdf.php?id=<?php echo $id?>" target="_blank" class="btn btn-primary mt-2" >PDF</a>
</div>

    <?php } 

   //get_party_list
if(isset($_POST['couriord']) && $_POST['couriord'] > 0){

    $id = $_POST['couriord'];
      $sel = "select * from `courior` left join `courier_detail` on  courior.id=courier_detail.dc_id LEFT JOIN orders ON orders.courior_id = courior.id where id = {$id} ";
      $q = mysqli_query($db, $sel);
      $html='';
              while ($row = mysqli_fetch_assoc($q)) {
                  $html.='<style>
                  table , td, th {
                  border: 1px solid #595959; 
                  border-collapse: collapse;
                  }
                  th {
                    background:#b9b9b9; 
                    }
                  td, th {
                  padding: 3px;
                          width: 150px;
                          height: 20px;
                          text-align: center
                  }
                  .container{
                  border: 1px solid black;
                  padding: 10px;
                  border-radius: 10px;
                  }
                  </style>
                  <div class="container">
                  <div style="text-align: center"><span><b>Courier # '.$row['id'].' </b> </span></div>
                  <br>
                  <table>
                      <tbody>
                          <tr>
                              <th style="width:375px ;">Height</th>
                              <th style="width:250px ;">Width</th>
                              <th style="width:250px ;">Weight</th>
                              <th style="width:250px ;">Total Price</th>
                          </tr>
                          <tr>
                              <td>'.$row['height'].'</td>
                              <td>'.$row['width'].'</td>
                              <td>'.$row['weight'].'</td>
                              <td>'.$row['totalprice'].'</td>
                          </tr>
                      </tbody>
                  </table>
                  <br>
                  <table>
                      <tbody>
                      <tr>
                      <th style="width:375px ;">Departure City</th>
                      <th style="width:250px ;">Destination City</th>
                      <th style="width:250px ;">Start date</th>
                      <th style="width:250px ;">Deliverd date</th>
                  </tr>
                          <tr>
                              <td>'.$row['departure'].'</td>
                              <td>'.$row['destination'].'</td>
                              <td>'.$row['startdate'].'</td>
                              <td>'.$row['deliverydate'].'</td>
                          </tr>
                      </tbody>
                  </table> 
                  <br>
                  <table>
                  <tbody>
                      <tr>
                          <th style="width:400px ;">Detail Departure: </th>
                          <td style="width:720px ;">'.$row['d_departure'].'</td>
                      </tr>
                      <tr>
                          <th>Detail Destination :</th>
                          <td>'.$row['d_destination'].'</td>
                      </tr>
                      <tr>
                  </tbody>
              </table>
                  </div>
                 
                  ';
             }  
echo $html;
?>

<a href="../reportpdf2.php?id=<?php echo $id?>"  target="_blank"  class="btn btn-primary mt-2" >PDF</a>
</div>

    <?php } 
    if (isset($_POST['acc_no']) && $_POST['acc_no'] > 0) {
        $qty = 1;
        $ere;
        $acc_no = $_POST['acc_no'];
        $pin = $_POST['pin'];   
        $payment = $_POST['payment'];  
        $sel = "select * from `account` where acc_no = {$acc_no} and pin = {$pin} ";
        $q = mysqli_query($db, $sel);
            while ($row = mysqli_fetch_assoc($q)) {
                $qty =0;
                $cash = $row['cash'];
                $result = ((float)($cash)) - ((float)($payment));

}
if ($qty == 0) {
    echo "<p >Available amount</p><p>".$result."</p>";
}else {
            echo "<p style='color:red;text-align:center'>Please enter a right informtaion</p>";
        }
           
   
}
?>

