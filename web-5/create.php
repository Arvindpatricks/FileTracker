<?php
$file_id =$_POST['file_id'];
$receiver= $_POST['receiver'];
$description =$_POST['description'];

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "file_tracking";
session_start();
$created_by = $_SESSION['username'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
$current_date = date("d/m/Y");
$current_time = date("h:i:sa");

$sql = "SELECT * FROM master_record where file_id='".$file_id."' ";
$result = $conn->query($sql);

if ($result->num_rows <=0) {
	
	
	
	
	
	$sql1 = "INSERT INTO master_record (file_id,created_by,receiver,description,start_date)
	VALUES ( '$file_id','$created_by','$receiver','$description','$current_date')";

	$sql2 = "INSERT INTO transaction (file_id,sender,receiver,status,comment,received_date,received_time,completed_date,completed_time)
	VALUES ( '$file_id','$created_by','$receiver','PROCESS','$description','$current_date','$current_time','','')";
	
	if(mysqli_query($conn, $sql1)){
		if(mysqli_query($conn, $sql2)){
			header('Location: ./home.php');
		} else{
			echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);
		}
	} else{
		echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
	}
	
	
	
}
else{

	$sql2 = "INSERT INTO transaction (file_id,sender,receiver,status,comment,received_date,received_time,completed_date,completed_time)
	VALUES ( '$file_id','$created_by','$receiver','PROCESS','$description','$current_date','$current_time','','')";
	
	
		if(mysqli_query($conn, $sql2)){
			header('Location: ./home.php');
		} else{
			echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);
		}
	
}

	




$conn->close();

?>