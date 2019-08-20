<?php 
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());

if(isset($_POST['submit'])){
$deposit=$_POST['deposit'];
$name=$_POST['name'];
$usn=$_POST['usn'];
$password=md5($_POST['password']);
$semester=$_POST['semester'];
$branch=$_POST['branch'];
$dob=$_POST['dob'];
$doj=$_POST['doj'];
$contact=$_POST['contact'];
$gender=$_POST['gender'];
$build=$_POST['building'];
$room=$_POST['room'];
$status=$_POST['status'];
$query="insert into student values ('','$deposit', '$name',  '$usn', '$password', '$semester','$branch','$dob', '$doj', '$contact','$gender','$build','$room','$status')";
$result=mysql_query($query)or die(header('location:register.php?err=1'));
header('location:');
}
else{
echo "Could Not Save The Information Into Database";
}
mysql_close($conn);
?>