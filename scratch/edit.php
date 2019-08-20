<?php
session_start();

if(!isset($_SESSION['emp_id']))
{
   header("Location: index.php");
}
?>
<?php  
include 'header.php';
?>
<?php 
$update =isset($_GET['id'])?$_GET['id']:'';

$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());

$select =mysql_query("select * from student where id='$update'")or die(mysql_error());
$row =mysql_fetch_array($select)or die(mysql_error());

$gen=$row['gender'];
$sem=$row['semester'];
$bran=$row['branch'];
$date=$row['dob'];
$stat=$row['status'];
$build=$row['building'];
?>
  <div class="row">
                    <div class="col-sm-4"> 
                        <h1 class="page-header">
                            Edit<br/>
                            <small>Edit Student Details</small>
                        </h1>

<form action="update.php" method="post">
<input type="hidden" name="bupdate" value="<?php echo $row['id']; ?>"><br>


<b>Deposit:</b><input type="text" class="form-control" name="deposit" value="<?php echo $row['deposit'];?>"><br><br>
<b>Name:</b><input type="text" class="form-control" name="name" value="<?php echo $row['name'];?>"><br><br>
<b>USN:</b><input type="text" class="form-control" name="usn" value="<?php echo $row['usn'];?>"><br><br>


<b>Semester:</b><select name="semester" class="form-control" value="<?php echo $row['semester']; ?>">
<option value="">Select Semester</option>
<option value="Semester 1" <?php if($sem == "Semester 1"){ echo " selected"; }?>>I</option>
<option value="Semester 2" <?php if($sem == "Semester 2"){ echo " selected"; }?>>II</option>
<option value="Semester 3" <?php if($sem == "Semester 3"){ echo " selected"; }?>>III</option>
<option value="Semester 4" <?php if($sem == "Semester 4"){ echo " selected"; }?>>IV</option>
<option value="Semester 5"<?php if($sem  == "Semester 5"){ echo " selected"; }?>>V</option>
<option value="Semester 6"<?php if($sem  == "Semester 6"){ echo " selected"; }?>>VI</option>
<option value="Semester 7"<?php if($sem  == "Semester 7"){ echo " selected"; }?>>VII</option>
<option value="Semester 8"<?php if($sem  == "Semester 8"){ echo " selected"; }?>>VIII</option>
</select></br>


<b>Branch:</b><select name="branch" class="form-control" value="<?php echo $row['branch']; ?>">
<option value="">Select Branch</option>
<option value="Computer Science"<?php if($bran == "Computer Science"){ echo " selected"; }?>>Computer Science</option>

<option value="ec"<?php if($bran == "ec"){ echo " selected"; }?>>Electronics & Communication</option>
<option value="mech"<?php if($bran == "mech"){ echo " selected"; }?>>Mechanical</option>
<option value="ee"<?php if($bran == "ee"){ echo " selected"; }?>>Electrical & Electronics</option>
<option value="civil"<?php if($bran == "civil"){ echo " selected"; }?>>Civil</option>
<option value="tc"<?php if($bran == "tc"){ echo " selected"; }?>>Telecommunication</option>
<option value="bt"<?php if($bran == "bt"){ echo " selected"; }?>>Biotechnology</option>
<option value="bm"<?php if($bran == "bm"){ echo " selected"; }?>>Biomedical</option>
<option value="ch"<?php if($bran == "ch"){ echo " selected"; }?>>Chemical</option>
</select></br>




<b>Date of Birth:</b><input type="text" class="form-control" name="dob" value="<?php echo $row['dob'];?>"><br><br>
<b>Date of Join:</b><input type="date" class="form-control" name="doj" value="<?php echo $row['doj'];?>"><br><br>
<b>Phone:</b><input type="text" class="form-control" name="contact" value="<?php echo $row['contact'];?>"><br><br>
<b>Gender:</b><select name="gender" class="form-control" value="<?php echo $row['gender']; ?>">
<option value="">Select Gender</option>
<option value="Male"<?php if($gen == "Male"){ echo " selected"; }?>>Male</option>
<option value="Female"<?php if($gen == "Female"){ echo " selected"; }?>>Female</option>
<option value="other"<?php if($gen == "Other"){ echo " selected"; }?>>Other</option>
</select></br>

<label>Building:</label><select name="building" class="form-control">

<option value="">Select Building</option>
<option value="1"<?php if($build == "1"){ echo " selected"; }?>>Building 1</option>
<option value="2"<?php if($build == "2"){ echo " selected"; }?>>Building 2</option>
<option value="3"<?php if($build == "3"){ echo " selected"; }?>>Building 3</option>
<option value="4"<?php if($build == "4"){ echo " selected"; }?>>Building 4</option>
</select><br/>

<label>Room No.:</label><input type="text" class="form-control" name="room" value="<?php echo $row['roomno'];?>"><br/>
<b>Status:</b><select name="status" class="form-control" value="<?php echo $row['status']; ?>">
<option value="<?php echo $row['status'];?>">Select Status</option>
<option value="Enabled" <?php if($stat == "Enabled"){ echo " selected"; }?>>Enabled</option>
<option value="Disabled " <?php if($stat == "Disabled"){ echo " selected"; }?>>Disabled</option>
</select></br><br>
<input type="submit" class="form-control" name="upload" ><br><br>
</div>
</form>
</body>
</html>