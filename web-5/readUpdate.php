<script type="text/javascript">

function update_success()
{alert("Successfully updated");
window.location="./readUpdate.php";
}


function update_wrong()
{alert("This place is not for you.. Go to Right place");
window.location="./readUpdate.php";
}

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
	    		echo 'sudsad';
				echo $sql4;
				$res = $conn3->query($sql4);
	    				if($res==1){
							echo 'sucess';
							echo "update_success();";
	    					// alert here file file updates successfully	
	    				}
	    				else{
							echo "update_wrong();";
	    					//alert file not for you.. wrongly came...
	    				}
	    		$conn3->close();
?>


</script>