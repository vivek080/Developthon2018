<?php
session_start();

if(!isset($_SESSION['emp_id']))
{
   header("Location: index.php");
}

?>
<style type="text/css">
  .panel-body{
  overflow-x:scroll; 
}
</style>

<?php  
include 'header.php';
?>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT fdate,tdate from leaves";
$result=mysql_query($query)or die(mysql_error());
$count1=0;
while ($row=mysql_fetch_array($result))
{
  $fdate=$row['fdate'];
  $todate=$row['tdate'];
    $paymentDate = date('Y-m-d');
    $paymentDate=date('d-m-y', strtotime($paymentDate));
   // echo $paymentDate; // echos today! 
    $contractDateBegin = date('d-m-y', strtotime($fdate));
    $contractDateEnd = date('d-m-y', strtotime($todate));

    if (($paymentDate >= $contractDateBegin) && ($paymentDate <= $contractDateEnd))
    {
      $count1++;
    }
}
//echo $count;
$regno=0;
$query="SELECT usn from student";
$result1=mysql_query($query);
while ($row1=mysql_fetch_array($result1))
{
  $regno++;
}
//echo $regno;
?>
<div class="container-fluid">
 <div class="row">
 <h1 class="page-header">
                            Dashboard<br/>
                        </h1>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $count ?></div>
                                    <div>New Messages!</div>
                                </div>
                            </div>
                        </div>
                        <a href="amessage.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $count1 ?></div>
                                    <div>On Leave Today!</div>
                                </div>
                            </div>
                        </div>
                        <a href="aleavedetails.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
              </div>
              </div>
               <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $regno; ?></div>
                                    <div>Registered Students!</div>
                                </div>
                            </div>
                        </div>
                        <a href="viewstudent.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                 <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">13*</div>
                                    <div>Complaints!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>


<div class="row">
<div class="col-sm-4"> 
   <h1 class="page-header">
                            Menu<br/>
                            <small>Edit</small>
                        </h1>

      <form action="registration.php" method="post"> 
<label>Breakfast:</label> <input class="form-control" name="bft" placeholder="Dosa,Idli,Vada"><br>
<label>Lunch:</label> <input type="text" class="form-control" name="lunch" placeholder="Chapati,Biryani,Dal"><br>
<label>Dinner:</label><input type="text" class="form-control" name="dinner" placeholder="Pulav,Curd Rice"><br>
<input type="submit" class="form-control" style="background-color:#337ab7; color:#fff" name="submit" ><br>
</form>
</div>
<div class="col-sm-8">
<div class="panel-body">
<div class="dataTable_wrapper">
    <table class="table table-hover table-bordered table-responsive" style="width: auto;" >
    <tr><th>Days</th>
    <th>Breakfast</th><br>
    <th>Lunch</th><br>
    <th>Dinner</th></tr><br>

<tr><td>MONDAY</td>
    <td>Uppit Sheera</td>
    <td>vegchapati</td>
    <td>rice sambar</td>
</tr>

<tr><td>TUESDAY</td>
    <td>Idli Sambar</td>
    <td>vegchapati</td>
    <td>rice sambar</td>
</tr>

<tr><td>WEDNESDAY</td>
    <td>Vada Sambar</td>
    <td>vegchapati</td>
    <td>Egg Curry/Veg </td>
    <br>
</tr>

<tr><td>THURSDAY</td>
    <td>Uttapam</td>
    <td>vegchapati</td>
    <td>rice sambar</td>
</tr>

<tr><td>FRIDAY</td>
    <td>Pav Bhaji</td>
    <td>vegchapati</td>
    <td>rice sambar</td>
</tr>

<tr><td>SATURDAY</td>
    <td>Churmuri Susala</td>
    <td>Rice Dal</td>
    <td>chapati</td>
</tr>

<tr><td>SUNDAY</td>
    <td>Paper Dosa</td>
    <td>Puri Bhaji/Chicken C</td>
    <td>Veg Pulav</td>
</tr>

</table>
</div>
</div>
</div>
</body>
<html>
