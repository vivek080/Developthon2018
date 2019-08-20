<?php
session_start();
if(!isset($_SESSION['emp_id']))
{
header("Location: index.php");
}
include 'header.php';
?>


<link href="css/timeline.css" rel="stylesheet" type="text/css">


<?php
$update =isset($_GET['id'])?$_GET['id']:'';
$conn =mysql_connect("localhost","root","")or die(mysql_error());
$db =mysql_select_db('hostelmanage', $conn)or die(mysql_error());
$select =mysql_query("select * from message where id='$update'")or die(mysql_error());
$row =mysql_fetch_array($select)or die(mysql_error());
$id=$row['id'];
$name=$_POST['name'];
$usn=$_POST['usn'];
$msg=$_POST['comment'];
$submit=$_POST['submit'];
if($submit)
{
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query=mysql_query("INSERT INTO `adminmessage` VALUES ('','Admin','$name','$usn','$msg',now(),'unread')"); 
}
?>

<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT  name, msg, time FROM `message` WHERE usn='$usn' UNION (SELECT  admin, reply, time FROM `adminmessage` WHERE usn ='$usn') ORDER BY time DESC";
$result = mysql_query($query)or die(mysql_error());
?>

                      <div class="panel-body">
                            <ul class="timeline">
<?php 
while ($row=mysql_fetch_array($result))
{
  if($row['name']!='Admin')
    {?>
                                       <li>
                                    <div class="timeline-badge success">
                                    </div>
                                    <div class="timeline-panel" style="background-color:white">

                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><?php echo $row['name']; ?>
                                           <span class="pull-right"> <small class="text-muted"><i class="fa fa-clock-o"> </i><?php echo " ".wordwrap($row['time'],20,"<br>\n",TRUE);echo "<br><br>"?></small>
                                           </span> </h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p><?php echo wordwrap($row['msg'],50,"<br>\n",TRUE);echo "<br>"?></p>
                                            
                                        </div>
                                    </div></li>
      <?php }                               
                       if($row=mysql_fetch_array($result)){ if($row['name']=='Admin')
                   {?>           
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning">
                                    </div>
                                    <div class="timeline-panel" style="background-color:white">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><?php echo $row['name'];?>
                                          <span class="pull-right">  <small class="text-muted"><i class="fa fa-clock-o"> </i><?php echo " ".wordwrap($row['time'],20,"<br>\n",TRUE);echo "<br><br>"?></small>
                                           </span> </h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p><?php echo wordwrap($row['msg'],50,"<br>\n",TRUE);echo "<br>"?></p>
                                           
                                            </div>
                                    </div>
                                </li>

                                <?php 

                                  }
                                  } 
                                }
                                  ?>                          