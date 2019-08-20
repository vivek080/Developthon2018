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
<!DOCTYPE html>
<html>
<head>
  <title>Report</title>
  <meta charset="utf-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
</head>


                <!-- Page Heading -->
                <div class="row">
                <div class="col-sm-4"> 
                        <h1 class="page-header">
                            Reports<br/>
                            <small>Generate and Export</small>
                        </h1>

     
      <div class="panel-body">
      	 <div class="list-group">
    <div class="list-group-item">
      <h4 class="list-group-item-heading">Export Students Information</h4>
      <p class="list-group-item-text">Name,USN,Contact,Semester<br/>
      <a class = "btn btn-primary" href="expstuinf.php">Generate</a>
      </p>
    </div>
     <div class="list-group-item">
      <h4 class="list-group-item-heading">Export Leaves Details</h4>
      <p class="list-group-item-text">Name,Days,Reason<br/>
      <a class = "btn btn-primary" href="expleainf.php">Generate</a>
     </div>
     <div class="list-group-item">
      <h4 class="list-group-item-heading">Export Billing Information</h4>
      <p class="list-group-item-text">Bill<br/>
     <a class = "btn btn-primary" href="expstufinf.php">Generate</a>
     </div>
  </div>

      </div>
    </div>
</div>
</div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>