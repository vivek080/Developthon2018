<?php


$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
















$query = "SELECT `usn`, `balance` FROM `student`";
$result = mysql_query($query)or die(mysql_error());




while ($row=mysql_fetch_array($result))
{
$usn=$row['usn'];

$bal=$row['balance'];

$temp=0;
$d=0;
$applied=0;


$query = "SELECT `days` FROM `leaves` where usn='$usn'";
$result1 = mysql_query($query)or die(mysql_error());
while($res=mysql_fetch_array($result1))
{

$d= $res['days'] ;
$temp=$temp+$d;
}

//echo $d."<br>";
//echo $temp."<br>";
$applied=$temp;
if($temp>6)
$temp=6;
$mn=$temp*69.33+$bal;

echo $mn;
$query1 = "UPDATE student set balance=$mn where usn='$usn'";
$res2 = mysql_query($query1)or die(mysql_error());
}

?>