<?php
include "config.php";
if(isset($_POST["login"])){
    $sel="select * from `users` where email = '{$_POST['email']}' and password ='{$_POST['password']}' ";

    $q1=mysqli_query($db,$sel);
    $dates=date('Y-m-d g:i:s');
    if ($row=mysqli_num_rows($q1)>0) {
          while($row =  mysqli_fetch_assoc($q1))
    {
        if ($row["status"]=="active"){
            if ($row["role"]=="admin") {
                $insert = "INSERT INTO `login`( `userid`, `datetimes`) VALUES ('{$row["id"]}','{$dates}')";
                mysqli_query($db,$insert);
                $_SESSION['role'] =$row["role"];
                $_SESSION['email'] =$row["email"];
                $_SESSION['userid'] =$row["id"];
                $_SESSION['status'] = $row["status"];
                $_SESSION['name'] = $row["name"];
                header("Location:../admin/index.php");
                $_SESSION['msgs'] = 'Login Successfully!';
            }if ($row["role"]=="agent") {
                $insert = "INSERT INTO `login`( `userid`, `datetimes`) VALUES ('{$row["id"]}','{$dates}')";
                mysqli_query($db,$insert);
                $_SESSION['role'] =$row["role"];
                $_SESSION['email'] =$row["email"];
                $_SESSION['userid'] =$row["id"];
                $_SESSION['name'] = $row["name"];
                $_SESSION['status'] = $row["status"];
                header("Location:../agent/index.php");
                $_SESSION['msgs'] = 'Login Successfully!';
            }if ($row["role"]=="user") {
                $insert = "INSERT INTO `login`( `userid`, `datetimes`) VALUES ('{$row["id"]}','{$dates}')";
                mysqli_query($db,$insert);
                $_SESSION['name'] = $row["name"];
                $_SESSION['email'] =$row["email"];
                $_SESSION['userid'] =$row["id"];
                $_SESSION['status'] = $row["status"];
                $_SESSION['role'] =$row["role"];
                header("Location:../index.php");
                $_SESSION['msgs'] = 'Login Successfully!';
            }
        }else{
            header("Location:../index.php");
            $_SESSION['msg'] = 'You are blocked by Admin';
        }

        
    }
    }else{ 
        header("Location:../index.php");
        $_SESSION['msg'] = 'invalid user';
    }
}
if(isset($_POST["couerierno"])){
   
    $html="<p style='color:red;text-align:center;'>please check your order id</p>";
    $id =$_POST["couerierno"];
   $sel = "select * from `courior` left join `courier_detail` on  courior.id=courier_detail.dc_id LEFT JOIN orders ON orders.courior_id = courior.id where id = $id and courior.deliverydate>CURRENT_DATE";
   $q = mysqli_query($db, $sel);
    while ($row = mysqli_fetch_assoc($q)) {
        if ($row>0) {
            $html='';
            $html.='<style>
            table , td, th {
            border: 1px solid #595959; 
            border-collapse: collapse;
            }
            .hidden1{
            display:none !important;
            
            }
            th {
              background:#f5ab35; 
              color:white;
              }
            td, th {
            padding: 3px;
                    width: 150px;
                    height: 20px;
                    text-align: center
            }
            .container1{
            border: 1px solid black;
            padding: 10px;
            border-radius: 10px;
            }
            </style>
            <div class="container1">
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
                    <th style="width:400px ;">Status</th>
                    <td style="width:740px ;"> On Process</td>
                </tr>
                <tr>
                    <th style="width:400px ;">Detail Departure: </th>
                    <td style="width:740px ;">'.$row['d_departure'].'</td>
                </tr>
                <tr>
                    <th>Detail Destination :</th>
                    <td>'.$row['d_destination'].'</td>
                </tr>
            </tbody>
        </table>
            </div>
            <div style="text-align:center; margin-top:20px;"><a href="reportuser.php?id='.$id.'" target="_blank" class="btn-1" >PDF</a></div></div>
            ';
          
        echo $html;
   }
}
if ($html = "<p class='hidden1' style='display:block; color:red;text-align:center;'>please check your order id</p>") {
    echo $html;
}

 } 

   
if(isset($_POST["pricing"])){
    $query = "UPDATE `priceing` SET `height`='{$_POST['height']}',`width`='{$_POST['width']}',`weight`='{$_POST['weight']}',`parcel_cost`='{$_POST['parcel_cost']}',`h_cost`='{$_POST['h_cost']}',`wt_cost`='{$_POST['wt_cost']}',`w_cost`='{$_POST['w_cost']}' WHERE 1";
    if($db->query($query)){
    echo "<script>window.location='../admin/pricing.php';</script>";
    }
}
?>
