<?php
session_start();
if(!isset($_SESSION['student']))
{
header("Location:index.php");
}
$usn=$_SESSION['student'];

//connect the database
$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());

//Enter the headings of the excel columns
$contents="Student Name,USN,Gender,Semester,Branch,Balance,Applied Leaves,Considered Leaves\n";

//Mysql query to get records from datanbase
$user_query = mysql_query("SELECT * FROM `student` where usn='$usn'")or die(mysql_error());

//While loop to fetch the records
while($row = mysql_fetch_array($user_query))
{
$contents.=$row['name'].",";
$contents.=$row['usn'].",";
$contents.=$row['gender'].",";
$contents.=$row['semester'].",";
$contents.=$row['branch'].",";
$contents.=$row['balance'].",";
}

 /*$max=0;
$user_query1 = mysql_query("SELECT * FROM `leaves` where usn='$usn'")or die(mysql_error());
while($row = mysql_fetch_array($user_query))
{
$max=$row['days'];
$contents.=$row['days'].",";

}
if($max>6)
$max=6;
$contents.=$max.",";*/
// remove html and php tags etc.
$contents = strip_tags($contents); 

//header to make force download the file
header("Content-Disposition: attachment; filename=bill.xls".date('d-m-Y').".csv");
print $contents;

//For more examples related PHP visit www.webinfoipedia.com and enjoy demo and free download..
?>