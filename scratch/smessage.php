<?php
session_start();
if(!isset($_SESSION['student']))
{
   header("Location:index.php");
}
include 'sheader.php';
?>

<center><h1>Message Admin</h1></center>

<form action="smessagedb.php" method="POST">
<input type="hidden" class="form-control" name="name" value="<?php echo $_SESSION['stdname'];?>" style=text-align:center; readonly><br>
<input type="hidden" class="form-control" name="usn" value="<?php echo $_SESSION['student'];?>" style=text-align:center; readonly><br>
<center>Your Message Here</center>
<textarea autofocus name="comment" class="form-control" rows="10" cols="5000" required></textarea><br>
<input type="submit" name="submit" class="form-control" value="Send">
</label>
</form>
</div>
</body>
</html>
