<?php
session_start();
if(!isset($_SESSION['student']))
{
   header("Location:index.php");
}
include 'sheader.php';
?>

<?php 
$rsn=$_POST['reason'];
if(isset($_POST['submit']))
{
$fdate=$_POST['fdate']; echo "<h2>From Date - $fdate</h2>";
$tdate=$_POST['tdate']; echo "<h2>To Date - $tdate</h2>";
$date1=date_create($tdate);
$date2=date_create($fdate);
$diff=date_diff($date2,$date1);
$usn=$_SESSION['student']; 
$diff = $diff->d; 
$diff=$diff+1;
?>
<h2>Reason For Leave:
<?php echo wordwrap($rsn,20,"<br>\n",TRUE); ?></h2>
<?php
echo "<h2>Total Days - $diff</h2>";
if($diff<3)
echo "<h2>Leave Is Not Accepted. <br>You Can Apply Only >2 Days</h2>";
else{
$query="insert into leaves (id,days,fdate,tdate,usn,lreason) values('','$diff','$fdate','$tdate','$usn','$rsn')";
$result = mysql_query($query)or die(mysql_error());
}
}
else{
echo "Could Not Save The Information Into Database";
}
mysql_close($conn);
?>
</div>
</div>
</body>
</html>