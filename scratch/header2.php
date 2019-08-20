<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#01579B">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="js/jquery.min.js"></script>


</head>
<body>

    <div id="wrapper">

<style type="text/css">
    .navbar-inverse{
        background-color:#01579B;
        border-color:#01579B; 
    }
    .navbar-inverse .navbar-nav>li>a{
        color:white;
    }
    .page-header{
    	margin:5px 0 20px;
    }
</style>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT * FROM `message` ORDER BY UNIX_TIMESTAMP(time) DESC";
$result=mysql_query($query)or die(mysql_error());
?>
<?php 
$count=0;
while ($row=mysql_fetch_array($result))
{
	if($row['status']=="unread")
	++$count;
}
?>
<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT * FROM `message` ORDER BY UNIX_TIMESTAMP(time) DESC";
$result=mysql_query($query)or die(mysql_error());
?>


        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><h4 style="margin-top:0px; color:white;">Hostel Mess Management</h4></a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown" data-toggle="tooltip" title="Messages">
                   
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                        <?php $row=mysql_fetch_array($result) ;
                        $id1=$row['id'];
                        ?>
                            <a data-toggle="modal" data-target="#myModal1" data-yourParameter="<?php echo $row['id'];?>">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong><?php echo $row['name']; ?></strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i><?php echo $row['time'] ?></p>
                                        <?php $string2 = substr($row['msg'], 0, 70); ?>
                                        <p> <?php echo $string2 ?></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                        <?php $row=mysql_fetch_array($result);
                        $id2=$row['id'];
                         ?>
                            <a data-toggle="modal" data-target="#myModal2">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong><?php echo $row['name']; ?></strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i><?php echo $row['time'] ?></p>
                                        <?php $string2 = substr($row['msg'], 0, 70); ?>
                                        <p> <?php echo $string2 ?></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                        <?php $row=mysql_fetch_array($result) ;
                        $id3=$row['id'];
                        ?>
                            <a data-toggle="modal" data-target="#myModal3">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong><?php echo $row['name']; ?></strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i><?php echo $row['time'] ?></p>
                                        <?php $string2 = substr($row['msg'], 0, 70); ?>
                                        <p> <?php echo $string2 ?></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <?php
$name=$_SESSION['emp_designation1'];
if(file_exists("uploads/$name.jpg"))
    $fileName = "$name.jpg";
else
    $fileName = "pro.jpg";
?>
                <li class="dropdown" data-toggle="tooltip" title="Profile">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b> <img style="border-radius: 50%;" height="50px" width="50px" src="uploads/<?php echo $fileName;?>"></a>
                    <ul class="dropdown-menu">
                        <li>
                            <center>Logged in as <?php echo ucfirst($_SESSION['emp_designation1']); ?> <br/><img style="border-radius: 50%;" height="140px" width="140px" src="uploads/<?php echo $fileName;?>"></center>
                        </li>
                        <li>
                           <a data-toggle="modal" data-target="#myModal" ><i class="fa fa-fw fa-pencil"></i> Change Pic</a>
                        </li>
                        
                        <li class="divider"></li>
                        <li>
                            <a href="logout.php"><i class="fa fa-fw fa-power-off"></i>Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li <?php if ('/scratch/asprofile.php%20?%3E' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
                        <a href="asprofile.php ?>"><i class="fa fa-fw fa-home"></i> Home</a>
                    </li>
                   
                    <li <?php if ('/scratch/asregister.php' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
                        <a href="asregister.php"><i class="fa fa-fw fa-list-alt"></i> Register</a>
                    </li>
                    <li <?php if ('/scratch/asviewstudent.php' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
                        <a href="asviewstudent.php"><i class="fa fa-fw fa-user"></i>View Students</a>
                    </li>
                    
                        
                    </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:#AD1457">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:white;">Change Profile Picture</h4>
        </div>
        <div class="modal-body" style="background-color:#cecece">
               <form class="well" action="upload.php" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="file">Select a file to upload</label>
                    <input type="file" accept="image/*" name="file" >
                    <p class="help-block">Only jpg,jpeg,png and gif file with maximum size of 1 MB is allowed.</p>
                  </div>
                  <input type="submit" class="btn btn-lg btn-primary" value="Upload">
                <a href="remove.php?name=<?php echo $_SESSION['emp_id']; ?>" class="btn btn-danger btn-lg" role="button">Remove</a>
                </form>
         </div>
        <div class="modal-footer" style="background-color:#434343">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


   <!-- Modal 1-->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
  
  <!--Modal1 Content-->
  <div class="modal-content">
        <div class="modal-header" style="background-color:#AD1457">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:white;">Message Contents:</h4>
        </div>
        <div class="modal-body" style="background-color:#cecece">
        
          <?php
			$conn =mysql_connect("localhost","root","")or die(mysql_error());
			$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());
			mysql_query("update message set status='read' where id=$id1");
			$select =mysql_query("select * from message where id='$id1'")or die(mysql_error());
			$row =mysql_fetch_array($select)or die(mysql_error());
			?>
			<b><?php  
			echo $row['name'];?><br/></b>
			<div class="well"><?php echo $row['msg'];?></div>
			

         </div>
        <div class="modal-footer" style="background-color:#434343">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
   <!-- Modal 2-->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
  
  <!--Modal2 Content-->
  <div class="modal-content">
        <div class="modal-header" style="background-color:#AD1457">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:white;">Message Contents:</h4>
        </div>
        <div class="modal-body" style="background-color:#cecece">
          <?php
			$conn =mysql_connect("localhost","root","")or die(mysql_error());
			$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());
			//mysql_query("update message set status='read' where id=$id2");
			$select =mysql_query("select * from message where id='$id2'")or die(mysql_error());
			$row =mysql_fetch_array($select)or die(mysql_error());
			?>
			<b><?php  
			echo $row['name'];?><br/></b>
			<div class="well"><?php echo $row['msg'];?></div>
			

         </div>
        <div class="modal-footer" style="background-color:#434343">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

   <!-- Modal 3-->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
  
  <!--Modal3 Content-->
  <div class="modal-content">
        <div class="modal-header" style="background-color:#AD1457">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:white;">Message Contents:</h4>
        </div>
        <div class="modal-body" style="background-color:#cecece">
          <?php
			$conn =mysql_connect("localhost","root","")or die(mysql_error());
			$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());
			//mysql_query("update message set status='read' where id=$id3");
			$select =mysql_query("select * from message where id='$id3'")or die(mysql_error());
			$row =mysql_fetch_array($select)or die(mysql_error());
			?>
			<b><?php  
			echo $row['name'];?><br/></b>
			<div class="well"><?php echo $row['msg'];?></div>
			

         </div>
        <div class="modal-footer" style="background-color:#434343">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

  <div id="page-wrapper" style="background-color:#cecece";>
    <div class="container-fluid">