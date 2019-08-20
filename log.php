<?php

echo"Hello Students !!";
echo"<br>";
echo"<br>";

session_start();

$name = $_POST['name'];
$password = $_POST['password'];

//$_SESSION['name'] = $name;
//$_SESSION['password'] = $password;

$con = mysqli_connect("localhost","root","","education");

if(mysqli_connect_error())
{
	echo"Failed to connect Database";
	echo"<br>";
    echo"<br>";
}
else
{
	echo"Connected to Database Successfully";
	echo"<br>";
    echo"<br>";
	
	$sql = "SELECT * from registereddb";
    
	$results = mysqli_query($con,$sql);

    while($row=mysqli_fetch_array($results))
    {
        if($name==$row ['Name'] && $password==$row ['Password'])
        {        
            echo"Logged In !!";
            break;
        }  
        else
        {
            echo"Error";
        }
    }
    
    
    mysqli_close($con);
		
	
	
    echo"<br>";
    echo"<br>";
//	echo"<br>"."Current page will be automatically redirected to Course Page in 4 seconds !!";
	header("refresh:0; url=courses.php");
}
?>