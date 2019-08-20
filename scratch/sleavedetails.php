<?php
session_start();
if(isset($_SESSION['student']))
{
$temp=$_SESSION['student'];   
}
else
{
	header("Location:index.php");
}
include 'sheader.php';
?>
<style type="text/css">
    .table-bordered {
    border: 1px solid black;
   }
   .trw{ border: 3px solid black;}


</style>


<?php   
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$count=0;
$query="SELECT * FROM `leaves` where usn='$temp'";
$result=mysql_query($query)or die(mysql_error());
while ($row=mysql_fetch_array($result))
{ 
$count++;
}
if($count!=0)
	{?>
<h1 class="page-header">
                            View Leaves<br/></h1>

                            <div class="panel-body">


<table class="table table-bordered table-hover table-striped table-responsive ">
<tr class>
<td class rowspan="2" style="background-color:#337AB7; color:#fff; text-align:center;"><br/>ID</td>
<td class colspan="2" style="background-color:#337AB7; color:#fff; text-align:center;">Date</td>
<td class rowspan="2" style="background-color:#337AB7; color:#fff; text-align:center;"><br/>Days</td>
</tr>
<tr><td style="background-color:#337AB7; color:#fff; text-align:center;">From</td>
<td style="background-color:#337AB7; color:#fff; text-align:center;">To</td>
</tr>
</div>
</center>

<?php 
$query="SELECT * FROM `leaves` where usn='$temp'";
$result=mysql_query($query)or die(mysql_error());
while ($row=mysql_fetch_array($result))
{?> 
<tr>
<td><center><?php echo $row['id']; ?></center></td>
<td><center><?php echo $row['fdate']; ?></center></td>
<td><center><?php echo $row['tdate']; ?></center></td>
<td><center><?php echo $row['days']; ?></center></td>
</tr>
<?php }?>

</table>
<?php } 
else
{
	?>
<div class="alert alert-danger"> You haven't applied any leaves yet :-(  </div>
<?php } ?>
</div>	
</div>
</body>
</html>