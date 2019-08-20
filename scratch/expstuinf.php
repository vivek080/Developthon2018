<?php

//connect the database
$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());

//Enter the headings of the excel columns
$contents="ID,Student Name,USN,Gender,Contact,Semester,Branch,DOB,DOJ\n";

//Mysql query to get records from datanbase
$user_query = mysql_query("SELECT * FROM `student`")or die(mysql_error());

//While loop to fetch the records
while($row = mysql_fetch_array($user_query))
{
$contents.=$row['id'].",";
$contents.=$row['name'].",";
$contents.=$row['usn'].",";
$contents.=$row['gender'].",";
$contents.=$row['contact'].",";
$contents.=$row['semester'].",";
$contents.=$row['branch'].",";
$contents.=$row['dob'].",";
$contents.=$row['doj']."\n";
}

// remove html and php tags etc.
$contents = strip_tags($contents); 

//header to make force download the file
header("Content-Disposition: attachment; filename=Students.xls".date('d-m-Y').".csv");
print $contents;

//For more examples related PHP visit www.webinfoipedia.com and enjoy demo and free download..
?>