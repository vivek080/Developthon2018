<?php
session_start();
if(isset($_SESSION['student']))
{
$temp1=$_SESSION['student'];
}
else
{
  header("Location:index.php");
}
 ?>
<style type="text/css">
  .panel-body{
  overflow-x:scroll; 

}
</style>


<?php
include 'sheader.php';

$count=0;
$temp=0; 
$d=0;
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT days FROM `leaves` where usn='$temp1'";
$result = mysql_query($query)or die(mysql_error());
$res = mysql_fetch_array($result);

do{
$d= $res['days'] ;
$temp=$temp+$d;
}while($res=mysql_fetch_array($result));

$applied=$temp;
if($temp>6)
$temp=6;
$date=date('m-y');

$query = "SELECT `balance` FROM `student` where usn='$temp1'";
$result1 = mysql_query($query)or die(mysql_error());
while($res1=mysql_fetch_array($result1)){
$bal=$res1['balance'];}

$reimbur=$temp*68.33;


$now=date("d/m/Y");
?>
<h1 class="page-header">View Your Balance</h1> 

<table class="table table-striped table-bordered table-hover table-responsive ">
<tr>
<th>USN</th ><td><?php echo $temp1; ?></td></tr>
<tr>
<th>Deposit</th><td ><?php echo "Rs."; echo $_SESSION['sdeposit']; ?></td></tr>
<tr><th >Applied Leaves</th><td ><?php echo $applied; ?></td></tr>
<tr><th >Maximum Considered</th><td ><?php echo $temp; ?></td></tr>
<tr><th >Balance</th><td><?php echo "Rs.$bal"; ?></td>
<tr><th >Reimbursement At Month End</th><td><?php echo "Rs.$reimbur"; ?></td>
</tr><br>
</tr>
</div>
</table><br>
<center>
<td><a class="btn btn-primary" href='exportbill.php'>Generate Bill</a></td><br><br>
<div class="alert alert-danger"> <?php echo "<h3>As On 01-$date</h3>"; ?> </div>
</center>
</body>
</html>