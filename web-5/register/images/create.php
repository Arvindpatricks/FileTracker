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

$sql1 = "INSERT INTO master_record (file_id,created_by,receiver,description) 
VALUES ( $file_id,$created_by,$receiver,$description)";


if(mysqli_query($conn, $sql1)){
	echo"Succes";
} else{
	echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}		

$conn->close();

?>