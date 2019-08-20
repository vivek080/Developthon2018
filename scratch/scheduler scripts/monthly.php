<?php


$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());


?>
<?php $query = "SELECT `usn`, `balance` FROM `student`";
$result = mysql_query($query)or die(mysql_error());


while ($row=mysql_fetch_array($result))
{
$usn=$row['usn'];
echo $usn;
$bal=$row['balance'];

echo $bal; 
}



$query = "SELECT `days` FROM `leaves` where usn='$usn'";
$result1 = mysql_query($query)or die(mysql_error());

$query = "UPDATE student set balance=($bal-2050)";
$res1 = mysql_query($query)or die(mysql_error());

?>












