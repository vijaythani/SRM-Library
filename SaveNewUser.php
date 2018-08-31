<?php
extract($_POST);
$mysqli=new mysqli('localhost','root','','db_srm_lib');
if($mysqli->connect_errno>0)
{
	die('Unable to connect to database['.$mysqli->connect_error.']');
}
$query = "INSERT INTO user_master VALUES ('$regno','$uname','$cpwd','$pwd','$typ','$gender','$dept','$email','$mobile','$lbname')";
		$insert_row = $mysqli->query($query);
		if($insert_row)
		{
		  header("location:Reg_Success.html");
		}
		else
		{
    		die('Error : ('. $mysqli->errno .') '. $mysqli->error);
		}
	?>
