<link rel="stylesheet" type="text/css" href="css/style.css">
<?php include_once "header.php"; ?>

	 <div class="header">
	 	<h1>Request For Blood</h1>                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	 	
		<form method="post">
		Your Name <input type="text"  placeholder="name" name="name"><br><br>
	    Your Contact<input  type="text" placeholder="contact" name="contact"><br><br>
		Required Blood Group <input type="text"  placeholder="blood group" name="blood group"><br><br>
		Amount(unit/bag)<input type="text"  placeholder="unit" name="amount"><br><br>
	    Patient's Present Location<input type="text" name="location" ><br><br>                                                       
        Patient's Present District <input type="text" name="district"><br><br> 
        Date of donation<input type="date" value="date"><br><br>
        More Message  <input type="text" name="message"><br><br>
        <input type="submit" name="submit" value="Submit Request"><br>
		</form>
		</div>
		<?php include_once "footer.php"; ?>
		
                                                                                                                                                                                                                                                                                