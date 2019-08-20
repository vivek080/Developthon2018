<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
$dbconnection=mysqli_connect("localhost","root","","hostelmanage");
if(!$dbconnection)
{
	echo"unable to establish connection to server";
}
?>
