<script type='text/javascript'>
(function()
{
  if( window.localStorage )
  {
    if( !localStorage.getItem( 'firstLoad' ) )
    {
      localStorage[ 'firstLoad' ] = true;
      window.location.reload();
    }
    else
      localStorage.removeItem( 'firstLoad' );
  }
})();
</script>
<link href="css/timeline.css" rel="stylesheet" type="text/css">
<?php
session_start();
if(!isset($_SESSION['student']))
{
header("Location:index.php");
}
$usn=$_SESSION['student'];
include 'sheader.php';
?>
<?php
$count=0;
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT  name, msg, time FROM `message` WHERE usn='$usn' UNION (SELECT  admin, reply, time FROM `adminmessage` WHERE usn ='$usn') ORDER BY time DESC";
$result = mysql_query($query)or die(mysql_error());
while($row=mysql_fetch_array($result))
{
  $count++;
}
?>


<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="UPDATE `adminmessage` set status='read' where (status='unread' AND usn='$usn')";
$res = mysql_query($query)or die(mysql_error());
?>

<?php
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT  name, msg, time FROM `message` WHERE usn='$usn' UNION (SELECT  admin, reply, time FROM `adminmessage` WHERE usn ='$usn') ORDER BY time DESC";
$result = mysql_query($query)or die(mysql_error());
?>
<h1 class="page header">
                                    Messages<br/></h1>
          
                        <div class="panel-body">
                        <?php if($count)
                        {?>
                            <ul class="timeline">
<?php 
while ($row=mysql_fetch_array($result))
{
 if($row['name']=='Admin')
  { ?>
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
                                    </div>
                                     
                                </li>
                                <?php } 
                                 else {
                                ?>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning">
                                    </div>
                                    <div class="timeline-panel" style="background-color:white">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><?php  echo $row['name'];?>
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
}?>
</div>
<?php } 
else {
?>
<div class="alert alert-danger"> You haven't sent any messages yet :-(  </div>
<?php } ?>

</div>