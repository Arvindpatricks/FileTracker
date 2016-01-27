<?php
$email = $_POST['email'];
$pass = $_POST['pass'];
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "file_tracking";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM user_account where username='".$email."' and password='".$pass."'";

$result = $conn->query($sql);
//echo $sql;
if ($result->num_rows > 0) {
	//echo "GOT";
	// output data of each row
	while($row = $result->fetch_assoc()) {
		
		session_start();
		$_SESSION['username']=$row['username'];   
		
		
		
		
			header('Location: ./home.php');
		
		
	}
} else {
			header('Location: ./index1.html');
			
}
$conn->close();


?>