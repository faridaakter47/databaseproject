<link rel="stylesheet" type="text/css" href="css/style.css">
<?php include_once "header.php"; ?>

<?php include_once "database.php"; ?>

	 <div class="header">
	 	<h1>Member Registration</h1>
	 	
		<form method="post">
			Name <input type="text"  placeholder="name" name="name"><br><br>
			
			Blood Group<input type="text"  placeholder="blood_group" name="blood_group"><br><br>
			Age  <input type="text" name="age"><br><br>
			Living District<input type="text" name="living_district" ><br><br>
            Contact<input type="text" name="contact_number"><br><br> 
            <input type="submit" value="Save" name="submit"><br>


		</form>



	 </div>	

	 <?php 
		if (isset($_POST['submit'])) {
			$name = $_POST['name'];
		    $blood_group = $_POST['blood_group'];
		    $age = $_POST[age];
		    $living_district = $_POST['living_district'];
		    $contact_number = $_POST[contact_number];
		

         $sql = "INSERT INTO donors_info (name,blood_group,age, living_district,contact_number) VALUES('$name','$blood_group',$age,'$living_district',$contact_number)";
    // var_dump($sql); die();
			if (mysql_query($sql)) {
				header('location:donor_list.php');                   
			}
		}
        
     

	 ?>



	

<?php include_once "footer.php"; ?>