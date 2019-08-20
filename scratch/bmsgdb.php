<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
header("Location: index.php");
}
include 'header.php';
?>

<?php

$msg=$_POST['comment'];
$submit=$_POST['submit'];  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT `name`, `usn` FROM `student`";
$result=mysql_query($query)or die(mysql_error());
?>

<?php 
while ($row=mysql_fetch_array($result))
{?>
<?php
$usn=$row['usn'];
$name=$row['name'];
if($submit)
{
$query=mysql_query("INSERT INTO `adminmessage` VALUES ('','Admin','$name','$usn','$msg',now(),'unread')"); 
}?>
<?php }?>
<h1>Broadcasted Information Successfuly</h1><br><br>
<h3><?php echo wordwrap($msg,20,"<br>\n",TRUE); ?></h3>