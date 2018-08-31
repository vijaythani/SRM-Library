<?php
$host="localhost"; // Host name
$username="root"; // Mysql username
$password=""; // Mysql password
$db_name="db_srm_lib"; // Database name
$tbl_name="user_master"; // Table name

// Connect to server and select databse.
$connection=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($connection,$db_name)or die("cannot select DB");

// Define $myusername and $mypassword 
$myusername=$_POST['uname'];
$mypassword=$_POST['pwd'];

$sql="SELECT * FROM $tbl_name WHERE User_Name='$myusername' and User_PWD='$mypassword'";
$result=mysqli_query($connection,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){
	//	$row=mysql_fetch_row($result);
	//	$sname=$row[0];
	//	print("<h1>Welcome, $sname!<br></h1>");
	//	echo "<h2>Login Success!!!</h2>";
	$row=mysqli_fetch_array($result);
	$User_Type=$row['User_Type'];
	
	if ($User_Type=="student")
	{
		header("location:StudentHome.php");
	}
	else if ($User_Type=="Library Staff")
	{
		header("location:LibStaffHome.php");
	}
	else if ($User_Type=="Staff")
	{
		echo "Inside student";
		header("location:StaffHome.php");
	}
	else if ($User_Type=="Admin")
	{
		header("location:AdminHome.php");
	}
}
else {
	//echo "<h2>Login Failed!!!</h2>";
	header("location:loginfailed.php");
}
?>

