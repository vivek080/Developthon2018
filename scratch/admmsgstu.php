<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
header("Location: index.php");
}
include 'header.php';
?>

<center><h4>Message Student</h4></center>
<div class="panel-body">
<form action="admindb2.php" method="POST">
<center>Name</center>
<input type='text' class="form-control" name="name"  style=text-align:center required> <br>
<center>USN</center>
<input type='text' class="form-control" name="usn"  style=text-align:center required><br>
<center>Your Message Here</center>
<textarea  name="comment" class="form-control" rows="8" cols="5000" required></textarea><br>
<input type="submit" name="submit" class="form-control" value="Send">
</label>
</form>
</div>
</body>
</html>