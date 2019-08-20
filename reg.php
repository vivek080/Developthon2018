<?php

//echo $_POST['Name'];echo"<br>";
//echo $_POST['email'];echo"<br>";
//echo $_POST['phonenumber'];echo"<br>";
//echo $_POST['psw'];echo"<br>";
//echo $_POST["psw-repeat"];echo"<br>";

$name = $_POST['username'];
$emailid = $_POST['email'];
$contact = $_POST['phone'];
$password = $_POST['password'];
$passwordrep = $_POST["passrep"];


$con = mysqli_connect("localhost","root","","education");

if(mysqli_connect_error())
{
	echo"Failed to connect Database";
	echo"<br>";
}
else
{
	echo"Connected to Database Successfully";
	echo"<br>";
	
	$sql = "INSERT INTO RegisteredDB(Name, Email, Contact, Password) VALUES ('$name', '$emailid', '$contact', '$password')";
	
//	mysqli_query($con,$sql);
	
	if(mysqli_query($con,$sql))
	{
		echo"Insertion Successful";
		echo"<br>";
	}
	else
	{
		echo"Insertion Failed ".$sql."<br>".mysqli_error($con);
		echo"<br>";
	}
		
	mysqli_close($con);
	
//	echo"<br>"."Current page will be automatically redirected to Index Page in 4 seconds !!";
	header("refresh:0; url=login.html");
}

?>