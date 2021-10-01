<?php
session_start();

if(isset($_SESSION['customer']) && $_SESSION['customer'] !=''){
header("location: index.php");
}
if(isset($_SESSION['error']) && $_SESSION['error'] !=''){
$error_message = $_SESSION['error'];
}
global $error_message;

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <img src="https://i.postimg.cc/9Fq2zgkp/image.png" width="130" height="130" ALT="left" ALIGN=CENTER>
       <script src="js/general_script.js"></script>

</head>

<body>




    <div class="wrapper">
        <div class="title-text">
            <div class="title login">
               Employee Management System</div>
            <div class="title signup">
                Signup Form</div>
        </div><br>
     
      
      <a href="admin_login.php" style="text-decoration: none;">Employee Login</a>
            
                       
        </div><br>
                    
                       

    <script src="js/login.js"></script>


</body>

</html>