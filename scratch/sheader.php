<?php
if(!isset($_SESSION['student']))
{
header("Location:index.php");
}
$usn=$_SESSION['student'];
?>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#01579B">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
</head>

<body>
<div id="wrapper">
<style type="text/css">
.navbar-inverse
{
background-color:#01579B;
border-color:#01579B;
}
.navbar-inverse .navbar-nav>li>a{
color:white;
}
.page-header
{
margin:10px 0 20px;
}
</style>

<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT * FROM `adminmessage` where usn='$usn' ";
$result=mysql_query($query)or die(mysql_error());
?>
<?php 
$count=0;
while ($row=mysql_fetch_array($result))
{
if($row['status']=='unread')
++$count;
}
?>
<?php  
$query="SELECT * FROM `adminmessage` where usn='$usn' ORDER BY `time` DESC";
$result=mysql_query($query)or die(mysql_error());
?>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
<span class="sr-only">Toggle Navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<center><a class="navbar-brand" href="index.php"><h4 style="margin-top:0px; color:white;"> Hostel Mess Management</h4></a>
</center></div>
<ul class="nav navbar-right top-nav">
<li class="dropdown" data-toggle="tooltip" title="Messages">
<a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b> <img style="border-radius: 50%;" height="50px" width="50px" src="mes.jpg"><span class="badge"><?php echo $count ?></span></a></a>
<?php if($count!=0)
{?>
<ul class="dropdown-menu message-dropdown">
<li class="message-preview">
<?php $row=mysql_fetch_array($result) ;
$id1=$row['id'];
?>
<a href="viewsmessage.php">
<div class="media">
<span class="pull-left">
<img class="media-object" src="ico.jpg" alt="">
</span>
<div class="media-body">
<h6 class="media-heading">
<strong><?php echo $row['admin'];?></strong>
</h6>
<?php $string2 = substr($row['reply'], 0, 70); ?>
<p><?php echo $string2?></p>
<p class="small text-muted"><i class="fa fa-clock-o"></i><?php echo $row['time'] ?></p>
</div>
</div>
</a>
</li>
<li class="message-preview">
<?php $row=mysql_fetch_array($result) ;
$id2=$row['id'];
?>
<a href="viewsmessage.php">
<div class="media">
<span class="pull-left">
<img class="media-object" src="ico.jpg" alt="">
</span>
<div class="media-body">
<h6 class="media-heading">
<strong><?php echo $row['admin'];?></strong>
</h6>
<?php $string2 = substr($row['reply'], 0, 70);?>
<p><?php echo $string2?></p>
<p class="small text-muted"><i class="fa fa-clock-o"></i><?php echo $row['time'] ?></p>
</div>
</div>
</a>
</li>
<li class="message-preview">
<a href="viewsmessage.php">Read All Messages</a>
</li>
</ul>

<?php } 
else {
?>    
<ul class="dropdown-menu message-dropdown">
<li class="message-preview">
<a href="viewsmessage.php">
<div class="media">
<span class="pull-left">
<img class="media-object" src="sad.gif" alt="">
</span>
<div class="media-body">
<h6 class="media-heading">
</h6>
<p>No new messages</p>
</div>
</div>
</a>
</li>

<li class="message-preview">
<a href="viewsmessage.php">Read All Messages</a>
</li>
</ul>
<?php } ?>


<?php
$name=$_SESSION['student'];
if(file_exists("uploads/$name.jpg"))
$fileName = "$name.jpg";
else
$fileName = "pro.jpg";
?>
<li class="dropdown" data-toggle="tooltip" title="Profile">
<a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b> <img style="border-radius: 50%;" height="50px" width="50px" src="uploads/<?php echo $fileName;?>"></a>
<ul class="dropdown-menu">
<li style="font-size:20px;">
                            <center><?php echo ucfirst($_SESSION['student']); ?> <br/><img style="border-radius: 50%;" height="140px" width="140px" src="uploads/<?php echo $fileName;?>"></center>
                        </li>
                        <li class="divider"></li>
                        <li>
                           <a data-toggle="modal" data-target="#myModal" ><i class="fa fa-fw fa-pencil"></i>Change Picture</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
</ul>
                        </li>
</ul>

<div class="collapse navbar-collapse navbar-ex1-collapse">
<ul class="nav navbar-nav side-nav">
<li <?php if ('/scratch/sprofile.php%20?%3E' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
<a href="sprofile.php ?>"><span class="glyphicon glyphicon-home"></span> &nbsp&nbspHome</a>
</li>
<li <?php if ('/scratch/leave.php%20?%3E' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
<a href="leave.php ?>"><span class="glyphicon glyphicon-list-alt"></span> &nbsp&nbspApply For Leave</a>
</li>
<li <?php if ('/scratch/sleavedetails.php' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
<a href="sleavedetails.php"><span class="glyphicon glyphicon-search"></span> &nbsp&nbspView Leaves</a>
</li>
<li <?php if ('/scratch/sbalance.php' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
<a href="sbalance.php"><span class="glyphicon glyphicon-print"></span> &nbsp&nbspView Balance </a>
</li>
<li <?php if ('/scratch/smessage.php' == $_SERVER['REQUEST_URI']) echo 'class="active"';?>>
<a href="smessage.php"><span class="glyphicon glyphicon-erase"></span> &nbsp&nbspSend Message </a>
</li>
</ul>
</li>
</ul>
</div>
</nav>

<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header" style="background-color:#AD1457">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title" style="color:white;">Change Profile Picture</h4>
</div>
<div class="modal-body" style="background-color:#cecece">
<form class="well" action="upload.php" method="post" enctype="multipart/form-data">
<div class="form-group">
<label for="file">Select A File To Upload</label>
<input type="file" accept="image/*" name="file" >
<p class="help-block">Max Upload Limit = 1 MB</p>
</div>
<input type="submit" class="btn btn-lg btn-primary" value="Upload">
<a href="remove.php?name=<?php echo $_SESSION['student']; ?>" class="btn btn-danger btn-lg" role="button">Remove</a>
</form>
</div>
<div class="modal-footer" style="background-color:#434343">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<div id="page-wrapper" style="background-color:#cecece";>
<div class="container-fluid">