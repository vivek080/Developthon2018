<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
   header("Location:index.php");
}
include 'header.php';
?>

<center><h4>Broadcast Message</h4></center>
<form action="bmsgdb.php" method="POST">
<center>Your Message Here</center>
<textarea autofocus name="comment" class="form-control" rows="8" cols="5000" required></textarea><br>
<input type="submit" name="submit" class="form-control" value="Send">
</label>
</form>
