
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
	    			$sql5 ="SELECT status from transaction where file_id='".$file_id."' and receiver='".$_SESSION['username']."'";
				$sql4 = "UPDATE transaction SET status='READ' where file_id='".$file_id."' and receiver='".$_SESSION['username']."'";
	    		//echo 'sudsad';
				//echo $sql4;

				$result = $conn3->query($sql5);
				//echo $sql;
				if ($result->num_rows > 0) {
					$res=1;
						
				}
				else{
					$res=0;
						
				}
				
				
				
				$conn3->query($sql4);
				//echo $res;
	    				if($res==1){
	    					echo "<script>
alert('Success');
	    					
</script>";
	    					echo "document.location.href = './updateFileStatus.php'";
	    					
	    					
	    					
							//echo "sucess";
							//echo "update_success()";
	    					// alert here file file updates successfully	
	    				}
	    				else{	
	    					echo "<script>
alert('Wrong File Destinatio');
	    					
</script>";
	    					echo "<script>document.location.href = './updateFileStatus.php'</script>";
	    					
	    					
	    				 
	    				}
	    		$conn3->close();
?>
