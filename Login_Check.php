

<?php

$host="localhost"; // Host name
$username="root"; // Mysql username
$password=""; // Mysql password
$db_name="db_srm_lib"; // Database name
$tbl_name="user_login"; // Table name

$connection=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($connection,$db_name)or die("cannot select DB");

$myusername=$_POST['uname'];
$mypassword=$_POST['pwd'];

$sql="SELECT * FROM $tbl_name WHERE uname='$myusername' and pwd='$mypassword';";
$result=mysqli_query($connection,$sql);

$count=mysqli_num_rows($result);

if($count==1){
	$row=mysqli_fetch_row($result);
 	$sname=$row[0];
	print("<h1>Welcome, $sname!<br></h1>");
	echo "<h2>Login Success!!!</h2>";
	
	if (isset($_POST['remuser'])){
		setcookie("UName",$myusername,time()+60*60*24);
		setcookie("Pwd",$mypassword,time()+60*60*24);
	}
	else
	{
		setcookie("UName","",time()-5);
		setcookie("Pwd","",time()-5);
	}

//	header("location:StudentHome.html");
}
else {
	echo "<h2>Login Failed!!!</h2>";
	//header("location:AdminHome.php");
}
?>

