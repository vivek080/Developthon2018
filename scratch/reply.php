<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
   header("Location: index.php");
}
include 'header.php';
?>
<?php
$update =isset($_GET['id'])?$_GET['id']:'';
$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());
$select =mysql_query("select * from message where id='$update'")or die(mysql_error());
$row =mysql_fetch_array($select)or die(mysql_error());
?>

<h1>Reply Student</h1>
<form action="amessagedb.php?id=<?php echo $row["id"];?>" method="POST">
<center>Name</center>
<input class="form-control" name="name" value="<?php echo $row['name'];?>" style=text-align:center; readonly><br>
<center>USN</center>
<input class="form-control" name="usn" value="<?php echo $row['usn'];?>" style=text-align:center; readonly><br>
<center>Your Message Here</center>
<textarea autofocus name="comment" class="form-control" rows="8" cols="5000" required></textarea><br>
<input type="submit" name="submit" class="form-control" value="Send">
</label>
</form>
</div>
</body>
</html>