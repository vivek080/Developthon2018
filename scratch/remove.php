<?php
// get correct file path
$fileName = $_GET['name'];
$filePath = 'uploads/'.$fileName.".jpg";
echo $fileName;
echo $_GET['name'];
// remove file if it exists
if ( file_exists($filePath) ) {
    unlink($filePath);
    header('Location:index.php');
}
else
{
	echo "No done";
}
?>