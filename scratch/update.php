


<html>
<head>
    <title></title>
</head>
<body>
       <?php 
       
      $conn = mysql_connect("localhost", "root", "")or die(mysql_errno());
      $db =mysql_select_db('hostelmanage', $conn)or die(mysql_errno());
      if (isset($_POST['upload'])) {
$ids=$_POST['bupdate'];
          $deposit=$_POST['deposit'];
$name=$_POST['name'];
$usn=$_POST['usn'];
$semester=$_POST['semester'];
$branch=$_POST['branch'];
$dob=$_POST['dob'];
$doj=$_POST['doj'];
$contact=$_POST['contact'];
$gender=$_POST['gender'];
$build=$_POST['building'];
$room=$_POST['room'];
$status=$_POST['status'];


      $update="UPDATE `student` SET deposit='$deposit',name='$name',usn='$usn',semester='$semester',branch='$branch',dob='$dob',doj='$doj',contact='$contact',gender='$gender',building='$build',roomno='$room',status='$status' WHERE id='$ids'";
     
       $fees =mysql_query($update)or die(mysql_error());
       header("location:viewstudent.php");


      }
      else {
        echo "Record update  is not successfull";
      }
      mysql_close($conn);

       ?>
</body>
</html>