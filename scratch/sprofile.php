<?php
session_start();
if(!isset($_SESSION['student']))
{
   header("Location: index.php");
}
include 'sheader.php';
$usn=$_SESSION['student'];
?>

<h1 class="page-header">Student Profile</h1><br>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT * FROM `student` where usn='$usn'";
$result = mysql_query($query)or die(mysql_error());
?>

<div class="row">
<div class="col-sm-3">
<img height="225px" width="225px" src="uploads/<?php echo $fileName;?>">
</div>
<div class="col-sm-8">
<?php 
while ($row=mysql_fetch_array($result))
{?> <h4>
<p class=well>
Name 		- 	<?php echo $row['name']; ?><br>
<p class=well>
USN 		- 	<?php echo $row['usn']; ?><br>
<p class=well>
Semester 	- 	<?php echo $row['semester']; ?><br>
<p class=well>
Branch 		- 	<?php echo $row['branch']; ?><br>
<p class=well>
Deposit 	- 	<?php echo $row['deposit']; ?><br>
<p class=well>
Gender 		- 	<?php echo $row['gender']; ?><br>
</p>
</h4>
</div>
</div>
<?php }?>


</center></body>
<html>