<?php
session_start();

if(!isset($_SESSION['emp_id']))
{
   header("Location: index.php");
}
?>
<?php  
include 'header.php';
?>
<head>
  <title>Leave Details</title>
  <style type="text/css">
  .panel-body{
  overflow-x:scroll; 
}
</style>
  </head>
  
                                <?php 
                include 'databaseconnection.php';
                                $selectid =mysql_query("SELECT * FROM `student` ORDER BY id DESC;")or die(mysql_error());
                               // $sql =mysql_query($select)or die(mysql_error());
                                if(mysql_num_rows($selectid)>0) 
                                {
                                    $row =mysql_fetch_array($selectid);
                                    $a=$row['id']+1;
                                } else 
                                {
                                    $a =1;
                                }

                               ?>
                        <h1 class="page-header">
                            Leaves<br/>
                            <small>Student leave Details</small>
                        </h1>

<?php  
include 'db.php';
$query = "SELECT * FROM `leaves`";
$result = mysql_query($query)or die(mysql_error());
?> 
      <div class="panel-body">
<table class="table table-hover table-bordered table-responsive" style="width: auto;">
<tr>

<th rowspan="2" style="background-color:#337ab7; color:fff; text-align:center;"><br/>USN</th>
<th rowspan="2" style="background-color:#337ab7; color:fff; text-align:center;"><br/>ID</th>
<th colspan="2" style="background-color:#337ab7; color:fff; text-align:center;">Date</th>
<th rowspan="2" style="background-color:#337ab7; color:fff; text-align:center;"><br/>Days</th>
<th rowspan="2" style="background-color:#337ab7; color:fff; text-align:center;"><br/>REASON FOR LEAVE</th></tr>
<tr><th style="background-color:#337ab7; color:fff; text-align:center;">From Date</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">To Date</th>


</tr>
</center>
</div>
<?php 

$query = "SELECT * FROM `leaves`";
$result = mysql_query($query)or die(mysql_error());

while ($row=mysql_fetch_array($result))
{

  ?> 
                 <tr >
                                            <td><center><?php echo $row['usn']; ?></center></td>
                                            <td><center><?php echo $row['id']; ?></center></td>
                                            <td><center><?php echo $row['fdate']; ?></center></td>
                                            <td><center><?php echo $row['tdate']; ?></center></td>
                                            <td><center><?php echo $row['days']; ?></center></td>
                                            <td><center><?php echo $row['lreason'];?></center></td>
											
                 </tr>
 <?php }?>
</table>
</div>	
<div class="container">
</div>  
</div>

</body>
<html>