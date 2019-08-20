<?php

//connect the database
$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());

//Enter the headings of the excel columns
$contents="USN,ID,FROM,TO,DAYS,REASON\n";

//Mysql query to get records from datanbase
$user_query = mysql_query("SELECT * FROM `leaves`")or die(mysql_error());

//While loop to fetch the records
while($row = mysql_fetch_array($user_query))
{
$contents.=$row['usn'].",";
$contents.=$row['id'].",";
$contents.=$row['fdate'].",";
$contents.=$row['tdate'].",";
$contents.=$row['days'].",";
$contents.=$row['lreason']."\n";
}

// remove html and php tags etc.
$contents = strip_tags($contents); 

//header to make force download the file
header("Content-Disposition: attachment; filename=StudentLeaves.xls".date('d-m-Y').".csv");
print $contents;

//For more examples related PHP visit www.webinfoipedia.com and enjoy demo and free download..
?>