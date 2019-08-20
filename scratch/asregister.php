<?php
session_start();

if(!isset($_SESSION['emp_designation1']))
{
   header("Location: index.php ");
}
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
        <div class="panel-body">
          <div class="list-group">
              <form action="asregistration.php" method="post"> 
<label>ID:</label> <input class="form-control" name="id" value="<?php echo $a; ?>" readonly><br>
<label>Deposit:</label> <input type="text" class="form-control" name="deposit" placeholder="Amount" required><br>
<label>Name:</label><input type="text" class="form-control" name="name" placeholder="Name" required><br>
<label>USN:</label><input type="text" class="form-control" name="usn" placeholder="2KLXXXXXXX" required><br>
<label>Password:</label><input type="password" class="form-control" name="password" placeholder="Password" required><br>
<?php
if(isset($_POST['password']) && strlen(($_POST['password'] != 11)))
    {
        echo "Your password is not 10 characters.";
        //header('location:register.php');
    } 
    ?>

<label>Semester:</label><select name="semester" class="form-control" required>
<option value="">Select Semester</option>
<option value="Semester 1">I</option>
<option value="Semester 2">II</option>
<option value="Semester 3">III</option>
<option value="Semester 4">IV</option>
<option value="Semester 5">V</option>
<option value="Semester 6">VI</option>
<option value="Semester 7">VII</option>
<option value="Semester 8">VIII</option>
</select></br>

<label>Branch:</label><select name="branch" class="form-control" required>
<option value="">Select Branch</option>
<option value="Computer Science">Computer Science</option>
<option value="ec">Electronics & Communication</option>
<option value="mech">Mechanical</option>
<option value="ee">Electrical & Electronics</option>
<option value="civil">Civil</option>
<option value="tc">Telecommunication</option>
<option value="bt">Biotechnology</option>
<option value="bm">Biomedical</option>
<option value="ch">Chemical</option>
</select></br>
				
<label>Date of Birth:</label><input type="date" class="form-control" name="dob" placeholder="Date Of Birth" required><br>
<label>Date of Join:</label><input type="date" class="form-control" name="doj" placeholder="Date Of Join" value="<?php echo date('Y-m-j'); ?>" required ><br>
<label>Phone:</label><input type="text" class="form-control" name="contact" placeholder="Contact Number" required><br>
<label>Gender:</label><select name="gender" class="form-control" required>
<option value="">Select Gender</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="other">Other</option>
</select></br>

<label>Building:</label><select name="building" class="form-control">

<option value="">Select Building</option>
<option value="1">Building 1</option>
<option value="2">Building 2</option>
<option value="3">Building 3</option>
<option value="4">Building 4</option>
</select><br/>

<label>Room No.:</label><input type="text" class="form-control" name="room"><br/>
<label>Status:</label><select name="status" class="form-control" required>
<option value="">Select Status</option>
<option value="Enabled">Enabled</option>
<option value="Disabled">Disabled</option>
</select></br>
<input type="submit" class="form-control" style="background-color:#337ab7; color:#fff" name="submit" ><br>
<input type="reset" class="form-control" style="background-color:#337ab7; color:#fff" name="refresh" ><br>
</div>
</form>

                  </div>
                </div>
            <div class="col-sm-4"> 
                        <h1 class="page-header">
                            Search<br/>
                            <small>Using USN</small>
                        </h1>
                         <div class="panel-body">
                          <div class="form-group has-feedback has-feedback-left">
                          <form action="assearch.php" method="post">
                                 <label>USN:</label> <input type="text" class="form-control" placeholder="Usn Here..." name="usn"><br/>
                                 <input type="submit" class="form-control" style="background-color:#337ab7; color:#fff" value="Fetch" >
                                 <span class="form-control-feedback glyphicon glyphicon-search"></span>
                                  </form>
                                  <?php
                                  if(isset($_GET['err']))
                                  if($_GET['err']==1)
                                  {
                                    echo "<br/><div class='alert alert-danger'>
  <strong>Danger!</strong>USN already exists!
</div>";                                  }
                                  else
                                  {

                                  }
                                  ?>
                              
</body>
</html>

