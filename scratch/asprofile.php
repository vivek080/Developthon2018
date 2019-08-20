<?php
session_start();

if(!isset($_SESSION['emp_designation1']))
{
   header("Location: index.php");
}

?>
<?php  
include 'header2.php';
?>

<style type="text/css">
  .panel-body{
  overflow-x:scroll; 
}
</style>
<div class="container-fluid">
<div class="row">
<div class="col-sm-4"> 
   <h1 class="page-header">
                            Menu<br/>
                            <small>Edit</small>
                        </h1>

      <form action="registration.php" method="post"> 
<label>Breakfast:</label> <input class="form-control" name="bft" placeholder="Dosa,Idli,Vada"><br>
<label>Lunch:</label> <input type="text" class="form-control" name="lunch" placeholder="Chapati,Biryani,Dal"><br>
<label>Dinner:</label><input type="text" class="form-control" name="dinner" placeholder="Puloa,Curd Rice"><br>
<input type="submit" class="form-control" style="background-color:#337ab7; color:#fff" name="submit" ><br>
</form>
</div>

<div class="col-sm-8">
<div class="panel-body">
<div class="dataTable_wrapper">
    <table class="table table-hover table-bordered table-responsive" >
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
</div>
</div>
</body>
<html>
