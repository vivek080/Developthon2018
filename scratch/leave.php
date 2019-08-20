<?php
session_start();
if(!isset($_SESSION['student']))
{
   header("Location:index.php");
}
include 'sheader.php';
?>
<h1 class="page-header">Apply For Leave</h1> 

<div class="col-sm-4">
<form action="leavedb.php" method="post">
<center>FROM</center>
<input type="date" class="form-control" name="fdate" style=text-align:center; required><br><br>
<center>TO</center>
<input type="date" class="form-control" name="tdate" style=text-align:center; required><br><br>
<center>REASON FOR APPLYING LEAVE</center>
<textarea  name="reason" class="form-control" rows="10" cols="5000" required></textarea><br>
<input type="submit" class="form-control" name="submit" value="Apply Leave" style=text-align:center;>
</form>
</div>
</body>
</html>
