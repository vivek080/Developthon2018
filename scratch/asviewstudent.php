<?php
session_start();
if(!isset($_SESSION['']))
{
   header("Location:");
}
?>
<?php  
include 'header2.php';
?>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT * FROM `student`";
$result = mysql_query($query)or die(mysql_error());
?>
<style type="text/css">
	.panel-body{
  overflow-x:scroll; 
}
</style>
<h1 class="page-header">
                            View Students<br/>
                            <small>All Details </small>
                        </h1>

<div class="panel-body">
<div>
<table class="table table-hover table-bordered table-responsive" style="width: auto;">
<tr>
<th style="background-color:#337ab7; color:fff; text-align:center;">Name</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">USN</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Semester</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Branch</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Deposit</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">D O B</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">D O J</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Contact Number</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Gender</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Building No.</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Room No.</th>

</tr>
</div>

<?php 
while ($row=mysql_fetch_array($result))
{?> 
<tr >
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['usn']; ?></td>
<td><?php echo $row['semester']; ?></td>
<td><?php echo $row['branch']; ?></td>
<td><?php echo $row['deposit']; ?></td>
<td><?php echo $row['dob']; ?></td>
<td><?php echo $row['doj']; ?></td>
<td><?php echo $row['contact']; ?></td>
<td><?php echo $row['gender']; ?></td>
<td><?php echo $row['building']; ?></td>
<td><?php echo $row['roomno']; ?></td>	

</tr>
<?php }?>

</table>
</div>	
</div>
</body>
</html>