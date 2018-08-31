<?php
$host="localhost"; // Host name
$username="root"; // Mysql username
$password=""; // Mysql password
$db_name="db_srm_lib"; // Database name
$tbl_name="library_master"; // Table name

// Connect to server and select databse.
$connection=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($connection,$db_name)or die("cannot select DB");

// Define $myusername and $mypassword 
$mylibname=$_POST['libname'];
$mylocname=$_POST['locname'];

$sql="SELECT * FROM $tbl_name WHERE Library_Name='$mylibname' and Location='$mylocname'";
$result=mysqli_query($connection,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){
	$row=mysqli_fetch_row($result);
	$sname=$row[0];
	print("<h1>Welcome, $sname!<br></h1>");
	echo "<h2>login accepted!!!</h2>";
	}
else {
	//echo "<h2>Login Failed!!!</h2>";
	header("location:loginfailed.php");
}
?>

