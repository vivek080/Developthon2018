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
if(!isset($_SESSION['emp_id']))
{
   header("Location:index.php");
}
include 'header.php';
?>

<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="UPDATE `message` set status='read' where (status='unread')";
$res = mysql_query($query)or die(mysql_error());
?>

<?php  
$conn=mysql_connect("localhost","root","")or die(mysql_error());
$db=mysql_select_db('hostelmanage',$conn)or die(mysql_error());
$query="SELECT * FROM `message` ORDER BY time DESC";
$result=mysql_query($query)or die(mysql_error());
?>
            <h1 class="page header">
                                    Messages<br/></h1>
          
                        <div class="panel-body">
                            <ul class="timeline">
<?php 
while ($row=mysql_fetch_array($result))
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
                                            <p><?php if($row['status']=="read"){ echo "<img src='read.jpg'>";} ?><span class="pull-right"><a class="btn btn-primary btn-sm" href='reply.php?id=<?php echo $row["id"];echo "<br>"?>'><span class="glyphicon glyphicon-edit"></span> Reply</a></p>

                                        </div>
                                    </div>
                                     
                                </li>
                                <?php if($row=mysql_fetch_array($result)){ ?>
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
                                           <p><?php if($row['status']=="read"){ echo "<img src='read.jpg'>";} ?><span class="pull-right"> <a class="btn btn-primary btn-sm" href='reply.php?id=<?php echo $row["id"];echo "<br>";?>'><span class="glyphicon glyphicon-edit"></span> Reply</a></p>

                                            </div>
                                    </div>
                                </li>
                                <?php } ?>
                                                               <?php
}?>
</div>
</div>
</body>
</html>