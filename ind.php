

<?php
	session_start();
	include('conn.php');
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Using Cookie with Logout</title>
</head>
<body topmargin=0  style="background-image:url(1.jpg);  background-size: 1300px;">
 <div class="container" >
	<center>
	<div class="header2" style="width:350px;">
					<br>
	<h1 style="color:#953308;"><center><span style="background-color:#bbd2df;">Online Library System</span></center></h1>
		
		<center>
			<div class="content" align="center" style="background-color:#bbd2df; width:300px; height:175px ;color:	#00008B;">
			<h1><b>User Login</b></h1><br>
	<form method="POST" action="login2.php">
	<table valign="left" border="0" cellspacing="4" cellpadding="4" ;>
	<tr><td><b><label>Username:</label></b></td><td><input type="text" value="<?php if (isset($_COOKIE["user"])){echo $_COOKIE["user"];}?>" name="username"></tr>
	<tr><td><b><label>Password:</label></b></td><td><input type="password" value="<?php if (isset($_COOKIE["pass"])){echo $_COOKIE["pass"];}?>" name="password"></tr>
	<tr><td></td><td><input type="checkbox" name="remember"> Remember me</tr>
	<tr><td></td><td><input type="submit" value="Login" name="login">&nbsp;&nbsp;&nbsp;<a href="newuser.html"><b>Validate</b></a></tr>
	</table>
	</form>
     </div>
	</center>
	<span>
	<?php
		if (isset($_SESSION['message'])){
			echo $_SESSION['message'];
		}
		unset($_SESSION['message']);
	?>
</span>
 </div>
</body>
</html>