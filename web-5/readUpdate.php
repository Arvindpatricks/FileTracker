
<?php
    $file_id = $_POST['file_id'];
	    		$servername = "localhost";
	    		$username = "root";
	    		$password = "root";
	    		$dbname = "file_tracking";
	    		session_start();
	    		$conn3 = new mysqli($servername, $username, $password, $dbname);
	    			if ($conn3->connect_error) {
	    			die("Connection failed: " . $conn3->connect_error);
	    			}
				$sql4 = "UPDATE transaction SET status='READ' where file_id='".$file_id."' and receiver='".$_SESSION['username']."'";
	    		//echo 'sudsad';
				//echo $sql4;
				$res = $conn3->query($sql4);
	    				if($res==1){
	    					
	    					echo "<script>
alert('Successfully updated the file status');
window.location.href='./readUpdate.php';
</script>";
	    					
							//echo "sucess";
							//echo "update_success()";
	    					// alert here file file updates successfully	
	    				}
	    				else{				echo "<script>
alert('This is not right place for you.. Go to right Place');
window.location.href='./readUpdate.php';
</script>";
	    				}
	    		$conn3->close();
?>
