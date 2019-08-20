<?php
session_start();
?>
<?php  
include("databaseconnection.php");

if(isset($_SESSION['student']))
{
  header("Location: sprofile.php");
}

if(isset($_SESSION['emp_id']))
{
  header("Location: aprofile.php");
}
if(isset($_SESSION['emp_designation1']))
{
  header("Location: asprofile.php");
}

if(isset($_POST['submit']))
{
  $sqlquery = mysqli_query($dbconnection,"SELECT * FROM student WHERE usn='$_POST[uname]' and password=md5('$_POST[password]') and status='Enabled'");
  $count = mysqli_num_rows($sqlquery);
  if($count == 1)
  {
    $rs = mysqli_fetch_array($sqlquery);
    $_SESSION['student'] = $rs['usn'] ; 
    $_SESSION['stdname']=$rs['name'];
    $_SESSION['sdeposit'] = $rs['deposit'] ;
    header("Location: sprofile.php");
  }
  else
  {
  
$msg="<div class='alert alert-danger'>
  <strong>Danger!</strong> Oh snap! Change a few things up and try submitting again
</div>";
  }
}

if(isset($_POST['empsubmit']))
{
  $sqlquery = mysqli_query($dbconnection,"SELECT * FROM admin WHERE login_id='$_POST[login]' and password=md5('$_POST[emppassword]') and status='Enabled' and emp_type='admin'");
  $count = mysqli_num_rows($sqlquery);
  if($count == 1)
  {
    $rs = mysqli_fetch_array($sqlquery);
    $_SESSION['emp_id'] = $rs['login_id'] ;
    $_SESSION['emp_designation'] = $rs['emp_type'] ;
    header("Location: aprofile.php");   
  }
  else
  {
    $msg1="<div class='alert alert-danger'>
  <strong>Danger!</strong> Oh snap! Change a few things up and try submitting again
</div>";
  }
}

if(isset($_POST['asssubmit']))
{
  $sqlquery1 = mysqli_query($dbconnection,"SELECT * FROM admin WHERE login_id='$_POST[login]' and password=md5('$_POST[emppassword]') and emp_type='assis'");
  $count1 = mysqli_num_rows($sqlquery1);
  if($count1 == 1)
  {
    $rs1 = mysqli_fetch_array($sqlquery1);
    
    $_SESSION['emp_designation1'] = $rs1['emp_type'] ;
    header("Location: asprofile.php");   
  }
  else
  {
    $msg2="<div class='alert alert-danger'>
  <strong>Danger!</strong> Oh snap! Change a few things up and try submitting again
</div>";
  }
}


?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
      <div class="container-fluid"><br><br><br><br><br>
      <h2 style="color:white;"><center>Welcome To KLESCET Hostel Mess Management Portal</h2><br>
      <body style="background-image:url(bckg.jpg)">
    	<div class="row">
        <div class="col-lg-4">
         <center> <img class="img-circle" src="admin.png" alt="Generic placeholder image" width="140" height="140">
          <h2 style="color:white;">Admin Login</h2>
          <p>
             <center> <form method="post" action="">
                 <td><input name="login" type="text" size="40"  class="form-control" placeholder="Username"/></br>
                 </td><td><input name="emppassword" type="password" size="40" class="form-control" placeholder="Password"/><br>
                <input class="form-control" name="empsubmit" type="submit" value="Login"></center>
              </form>

              <?php
                if (!isset($msg1)) $msg1 = ' ';
                 echo $msg1; ?>
              </p>
              </div>
              <div class="col-lg-4">
           <center>   <img class="img-circle" src="assistant.png" alt="Generic placeholder image" width="140" height="140">
          <h2 style="color:white;">Assistant</h2>
          <p>
             <center> <form method="post" action="">
                 <td><input name="login" type="text" size="40"  class="form-control" placeholder="Username"/></br>
                 </td><td><input name="emppassword" type="password" size="40" class="form-control" placeholder="Password"/><br>
                <input class="form-control" name="asssubmit" type="submit" value="Login"></center>
              </form>

              <?php
                if (!isset($msg2)) $msg2 = ' ';
                 echo $msg2; ?>
              </p>
        </div>
        <div class="col-lg-4">
           <center>   <img class="img-circle" src="student.png" alt="Generic placeholder image" width="140" height="140">
          <h2 style="color:white;">Student Login</h2>
          <p>
             <center> <form method="post" action="">
                 <td><input name="uname" type="text" size="40"  class="form-control" placeholder="Username" /></br>
                 </td><td><input name="password" type="password" size="40" class="form-control" placeholder="Password"/><br>
                <input class="form-control" name="submit" type="submit" value="Login"></center>
              </form>

              <?php
                if (!isset($msg)) $msg = ' ';
                 echo $msg; ?>
              </p>
        
  </body>
</html>
