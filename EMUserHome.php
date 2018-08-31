
<?php
 require('modules/Check_Session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SRM University, Exam Invigilation Duty Portal</title>
    <link rel="stylesheet" type="text/css" href="css/StarStyle.css">
</head>
<body topmargin=0 >
    <div class="container">
	  <?php 
		require('modules/EMUserBodyHead.php');
	  ?>
    	<div class="wrapper">
            <?php 
				require('modules/EMUserSidebar.php');
			?>
            <div class="content" style="background-color: #bbd2df;">
            <!--<div class="content">-->
                <div class="section">
                	<center>
						<p style="color:#ff0000"><b>
						<?php
							if(isset($_SESSION['EMRedStatus'])){echo $_SESSION['EMRedStatus'];$_SESSION['EMRedStatus']="";}
						?>
						</b>
						</p>
						<p style="color:#00802b"><b>
						<?php
							if(isset($_SESSION['EMGreenStatus'])){echo $_SESSION['EMGreenStatus'];$_SESSION['EMGreenStatus']="";}
						?>
						</b>
						</p>
						</center>
					<img alt="" src="images/techpark.jpg" width=500 height=400 />
                   
                </div>
            </div>
			
			<?php 
				require('modules/EMUserRightSidebar.php');
			?>
			
            <div class="clearfix"> 
			</div>
        </div>
        <div class="footer">
        	<?php 
				require('modules/EMUserFooter.php');
	  		?>
        </div>
    </div>
</body>
</html>
