<link rel="stylesheet" type="text/css" href="css/style.css">
<?php

session_start();

if (isset($_SESSION['user']) && $_SESSION['user']) {	#Checking user is ligged in or not
	$user = $_SESSION['user'];
}else{
	$user = false;
}

?>


 <div class="about">


<?php
require_once 'database.php';

function EDITData(){

	$id = $_GET['id'];

	$sql = "SELECT * FROM donors_info WHERE id=$id";

	$res = mysql_query($sql) or die(mysql_error());

	if ($res) {
		$data =mysql_fetch_assoc($res);
		?>
		<form method="post" action="edit.php?id=<?php echo $data['id'] ?>">
			<input name="name" value="<?php echo $data['name'] ?>"/>
			
			<input name="bloodgroup" value="<?php echo $data['blood_group'] ?>"/>
			<input name="age" value="<?php echo $data['age'] ?>"/>
			<input name="district" value="<?php echo $data['living_district'] ?>"/>
			<input name="contact" value="<?php echo $data['contact_number'] ?>"/>
			<input type="submit" name="Submit" value="Save"/>
		</form>

		<?php
	}
}
EDITDATA();

?>



<?php
	if (isset($_POST['Submit'])) {
		var_dump($_POST);
		$name = $_POST['name'];
		$blood = $_POST['bloodgroup'];
		$age = $_POST['age']; 
		$district = $_POST['district'];
	    $contact = $_POST['contact'];
		$id = $_GET['id'];
		
		$sql = "UPDATE donors_info SET name='$name', blood_group='$blood',age= $age,living_district='$district',contact_number = $contact WHERE id=$id";
         
	//var_dump($sql); die();
	
          if(mysql_query($sql)){
			
			header('location:donor_list.php');
		}
	}
?>

</div>


 <?php include_once "footer.php"; ?>