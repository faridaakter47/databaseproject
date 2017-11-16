<link rel="stylesheet" type="text/css" href="css/style.css">
<?php

session_start();

if (isset($_SESSION['user']) && $_SESSION['user']) {	#Checking user is logged in or not
	$user = $_SESSION['user'];
}else{
	$user = false;
}

?>


 <div class="about">



<?php
require_once 'database.php';

function VIEWData(){

	$id = $_GET['id'];

	$sql = "SELECT * FROM donors_info WHERE id=$id";

	$res = mysql_query($sql) or die(mysql_error());

	if ($res) {
		$data = mysql_fetch_assoc($res); 
	?> 

   <table border="1" width="100%">

				<tr>
					<th><?php echo $data['name'] ?></th>

					<th><?php echo $data['blood_group'] ?></th>
					<th><?php echo $data['age'] ?></th>
					<th><?php echo $data['living_district'] ?></th>
					<th><?php echo $data['contact_number'] ?></th>
				</tr>
	</table>

	
	<?php
	}
}

VIEWData();
?>



</div>


 <?php include_once "footer.php"; ?>