<?php
$host="localhost"; // Host name
$username="root"; // Mysql username
$password=""; // Mysql password
$db_name="db_srm_lib"; // Database name
$tbl_name="book_master"; // Table name

// Connect to server and select databse.
$connection=mysqli_connect("$host", "$username", "$password")or die("cannot connect");
mysqli_select_db($connection,$db_name)or die("cannot select DB");

$search=$_POST['txt'];
if (isset($_POST['id'])) {
  if("ID"==$_POST['id'])
  {
    $sql = "SELECT * FROM book_master WHERE Book_ID=$search";
  }
  else
  {
  if("name"==$_POST['id'])
  {
    $sql = "SELECT * FROM book_master WHERE Book_Title='$search'";
  }
  else
  {
    $sql = "SELECT * FROM book_master WHERE Author1='$search'";
  }
}
}
$result=mysqli_query($connection,$sql);
if($result === FALSE) {
    die(mysql_error());
}

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);
?>
<html>
<head>
	<title>Displaying MySQL Data in HTML Table</title>
	<style type="text/css">
		body {
			font-size: 15px;
			color: #343d44;
			font-family: "segoe-ui", "open-sans", tahoma, arial;
			padding: 0;
			margin: 0;
		}
		table {
			margin: auto;
			font-family: "Lucida Sans Unicode", "Lucida Grande", "Segoe Ui";
			font-size: 12px;
		}

		h1 {
			margin: 25px auto 0;
			text-align: center;
			text-transform: uppercase;
			font-size: 17px;
		}

		table td {
			transition: all .5s;
		}
		
		/* Table */
		.data-table {
			border-collapse: collapse;
			font-size: 14px;
			min-width: 537px;
		}

		.data-table th, 
		.data-table td {
			border: 1px solid #e1edff;
			padding: 7px 17px;
		}
		.data-table caption {
			margin: 7px;
		}

		/* Table Header */
		.data-table thead th {
			background-color: #508abb;
			color: #FFFFFF;
			border-color: #6ea1cc !important;
			text-transform: uppercase;
		}

		/* Table Body */
		.data-table tbody td {
			color: #353535;
		}
		.data-table tbody td:first-child,
		.data-table tbody td:nth-child(4),
		.data-table tbody td:last-child {
			text-align: right;
		}

		.data-table tbody tr:nth-child(odd) td {
			background-color: #f4fbff;
		}
		.data-table tbody tr:hover td {
			background-color: #ffffa2;
			border-color: #ffff0f;
		}

		/* Table Footer */
		.data-table tfoot th {
			background-color: #e5f5ff;
			text-align: right;
		}
		.data-table tfoot th:first-child {
			text-align: left;
		}
		.data-table tbody td:empty
		{
			background-color: #ffcccc;
		}
	</style>
</head>
<body topmargin=0  style="background-image:url(1.jpg);  background-size: 1300px;">
	<h1>Table 1</h1>
	<table class="data-table">
		<caption class="title">Book Details</caption>
		<thead>
			<tr>
				<th>id</th>
				<th>Name</th>
				<th>Author</th>
				<th>Price</th>
				<th>Status</th>
				<th>Location</th>
			</tr>
		</thead>
		<tbody>
<?php
// If result matched $myusername and $mypassword, table row must be 1 row
if($count>0){
		while($row = mysqli_fetch_array($result))
   {   echo'<tr>
					<td>'. $row["Book_ID"].'</td>
					<td>'.$row["Book_Title"].'</td>
					<td>'.$row["Author1"].'</td>
					<td>'.$row["Price"]. '</td>
					<td>'.$row["Book_Status"].'</td>
					<td>'.$row["Loc"].'</td>
				</tr>';
   
       
      
   }
	
	}
else {
    echo "No rows found";
	header("location:loginfailed.php");
}
?>

