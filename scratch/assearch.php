<?php
session_start();

if(!isset($_SESSION['']))
{
	header("Location: ");
}
$update=$_POST['usn'];
//echo $update;
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query = "SELECT * FROM `sdata` where USN='$update'";
//echo $query;
$row = mysql_query($query)or die(mysql_error());
//echo $row;
$rows=mysql_fetch_assoc($row);
if(!$rows)
{$flag=1;}
else $flag=0;

$gen=$rows['Gender'];
$sem=$rows['Semester'];
$bran=$rows['Branch'];
$date=$rows['Birth Date'];
?>
<?php  
include 'header2.php';
?>
<head>
  <title>Register</title>
  <style type="text/css">
  
  </style>
  </head>
  
                                <?php 
                $conn =mysql_connect('localhost','root','')or die(mysql_error());
                $db=mysql_select_db('hostelmanage', $conn)or die(mysql_error());
                                $selectid =mysql_query("SELECT * FROM `student` ORDER BY id DESC;")or die(mysql_error());
                               // $sql =mysql_query($select)or die(mysql_error());
                                if(mysql_num_rows($selectid)>0) 
                                {
                                    $row =mysql_fetch_array($selectid);
                                    $a=$row['id']+1;
                                } else 
                                {
                                    $a =1;
                                }

                               ?>
        <div class="row">
                    <div class="col-sm-4"> 
                        <h1 class="page-header">
                            Registration<br/>
                            <small>Add Students</small>
                        </h1>

<?php 
								$conn =mysql_connect('localhost','root','')or die(mysql_error());
								$db=mysql_select_db('hostelmanage', $conn)or die(mysql_error());
                                $selectid =mysql_query("SELECT * FROM `student` ORDER BY id DESC;")or die(mysql_error());
                               // $sql =mysql_query($select)or die(mysql_error());
                                if(mysql_num_rows($selectid)>0) 
                                {
                                    $row =mysql_fetch_array($selectid);
                                    $a=$row['id']+1;
                                } else 
                                {
                                    $a =1;
                                }
if($flag)
                               echo "<h1><center>Data Not Found</center></h1>";
                             else {}



                            
                               ?> 
                              <div class="panel-body">
          <div class="list-group">
              <form action="registration.php" method="post"> 
<label>ID:</label><input class="form-control" name="id" value="<?php echo $a; ?>" readonly><br>
<label>Deposit:</label><input type="text" pattern="[0-9]+" title="numbers only" class="form-control" name="deposit" placeholder="Amount" required><br>
<label>Name:</label><input type="text" class="form-control" name="name" placeholder="Name" value="<?php echo $rows['Name']; ?>" required><br>
<label>USN:</label><input type="text" class="form-control" name="usn" placeholder="2KLXXXXXXX" value="<?php echo $rows['USN']; ?>" required><br>
<label>Password:</label><input type="password" pattern=".{8,}" title="8 or more characters" class="form-control" name="password" placeholder="Password" required><br>

<label>Semester:</label><select name="semester" class="form-control" value="<?php echo $rows['Semester']; ?>" required>
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

<label>Branch:</label><select name="branch" class="form-control" value="<?php echo $rows['Branch']; ?>" required>
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
				
<label>Date of Birth:</label><input type="text" class="form-control" name="dob" placeholder="Date Of Birth" value="<?php echo $rows['Birth Date']; ?>" required><br>
<label>Date of Join:</label><input type="date" class="form-control" name="doj" placeholder="Date Of Join" value="<?php echo date('Y-m-j'); ?>" required><br>
<label>Phone:</label><input type="text" pattern="^\d{10}$" title="10 numeric characters only" class="form-control" name="contact" placeholder="Contact Number" value="<?php echo $rows['Mobile']; ?>" required><br>
<label>Gender:</label><select name="gender" class="form-control" value="<?php echo $rows['Gender']; ?>" required>
<option value="">Select Gender</option>
<option value="Male"<?php if($gen == "Male"){ echo " selected"; }?>>Male</option>
<option value="Female"<?php if($gen == "Female"){ echo " selected"; }?>>Female</option>
<option value="other"<?php if($gen == "Other"){ echo " selected"; }?>>Other</option>
</select></br>


<label>Building:</label><select name="building" class="form-control">

<option value="">Select Building</option>
<option value="1">Building 1</option>
<option value="2">Building 2</option>
<option value="3">Building 3</option>
<option value="4">Building 4</option>
</select><br/>

<label>Room No.:</label><input type="text" class="form-control" name="room"><br/>
<label>Status:</label><input type="text" class="form-control" name="status" placeholder="Enabled/Disabled" value="Enabled" required><br>

<input type="submit" class="form-control" style="background-color:#337ab7; color:#fff"  name="submit" ><br>

</div>
</form>

  </div>
</body>
</html>