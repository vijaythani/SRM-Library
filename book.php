<?php
session_start(); ?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
h1{
	float: right;
	color: skyblue;
	font-family: comic;
	font-size: 30px;
	padding-right: 20%
}
body{
	background:url('modules/books-bookstore-book-reading-159711.jpeg');
	background-size:cover;
}
h2,b{
	color:lightgrey;
}
.box{
	margin: 50px;
	padding:20px;
	background:rgba(128,128,128,0.7);;
	border: 2px solid green;
}
#sp{
	padding-left: 14%;
}
</style>
<body topmargin=0  style="background-image:url(1.jpg);  background-size: 1300px;">
<h2 align='center' >BOOK DETAILS</h2>
<br/><br/>
<div id="name">
<h1>Hi , you are logged in.</h1><br><br>
</div>
<form class="" action="connect.php" method="post">
	<div class='box'>
<b>SELECT BOOK BY:</b>
&nbsp&nbsp<input type='radio' name='id' value="ID" class="sel">ID</input>
<input type='radio' name='id' value="name" class="sel">NAME</input>
<input type='radio' name='id' value="author" class="sel">AUTHOR</input><br/><br/>
<div id='sp'><input type='text' name='txt' size='30'>&nbsp<button type="submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search" aria-hidden="true"></button></span></div>
</div>
</form>




