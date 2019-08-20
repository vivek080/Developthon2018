<?php
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT `semester`,`status` FROM `student`";
$result = mysql_query($query)or die(mysql_error());

while ($row=mysql_fetch_array($result))
{

$sem=$row['semester'];
echo $sem;
$stat=$row['status'];

if($sem=='Semester 1')
$sem='Semester 2';

else if($sem=='Semester 2')
$sem='Semester 3';

else if($sem=='Semester 3')
$sem='Semester 4';

else if($sem=='Semester 4')
$sem='Semester 5';

else if($sem=='Semester 5')
$sem='Semester 6';

else if($sem=='Semester 6')
$sem='Semester 7';

else if($sem=='Semester 7')
$sem='Semester 8';

else $status='Disabled';

}
$query="UPDATE student set semester='$sem';";
$result = mysql_query($query)or die(mysql_error());

?>