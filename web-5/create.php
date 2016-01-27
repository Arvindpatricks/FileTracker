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

$sql1 = "INSERT INTO master_record (file_id,created_by,receiver,description,start_date) 
VALUES ( '$file_id','$created_by','$receiver','$description',date('d/m/Y'))";

$sql2 = "INSERT INTO transaction (file_id,send er,receiver,status,comment,received_date,recieved_time)
VALUES ( '$file_id','$created_by','$receiver','PROCESS','$description',date('d/m/Y'),date('h:i:sa'))";


if(mysqli_query($conn, $sql1)){
	echo"Succes";
} else{
	echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}		


if(mysqli_query($conn, $sql2)){
	echo"Succes";
} else{
	echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}

$conn->close();

?>