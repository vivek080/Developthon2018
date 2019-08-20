<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
   header("Location:index.php");
}
?>
<?php  
include 'header.php';
?>
<head>
  <title>View Student</title>
  <style type="text/css">
  .panel-body{
  overflow-x:scroll; 
}
</style>
  </head>
  <body>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT * FROM `student`";
$result = mysql_query($query)or die(mysql_error());
?>


<h1 class="page-header">
                            View Students<br/>
                            <small>All Details </small>
                        </h1>
				
            
                        <!-- /.panel-heading -->
                        <div class="panel-body">

 <div class="dataTable_wrapper">
 <table class="table table-hover table-bordered table-responsive" id="dataTables-example">
<thead>
<tr>
<th style="background-color:#337ab7; color:fff; text-align:center;">Name</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">USN</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Semester</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Branch</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Deposit</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Current Balance</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">D O B</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">D O J</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Contact Number</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Gender</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Building No.</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Room No.</th>
<th style="background-color:#337ab7; color:fff; text-align:center;">Edit</th>
</tr>

</thead>
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
<td><?php echo $row['balance']; ?></td>
<td><?php echo $row['dob']; ?></td>
<td><?php echo $row['doj']; ?></td>
<td><?php echo $row['contact']; ?></td>
<td><?php echo $row['gender']; ?></td>
<td><?php echo $row['building']; ?></td>
<td><?php echo $row['roomno']; ?></td>	
<td><a class="btn btn-primary btn-sm" href='edit.php?id=<?php echo $row["id"];?>'>
<span class="glyphicon glyphicon-edit"></span> Edit</a></td></tr>
<?php }?>


                                </table>
                                </div>
                            </div>
                            <!-- /.table-responsive -->
							<script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
                            <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
                       

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>