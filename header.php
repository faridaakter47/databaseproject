<link rel="stylesheet" type="text/css" href="css/style.css">
<?php

session_start();

if (isset($_SESSION['user']) && $_SESSION['user']) {	#Checking user is logged in or not
	$user = $_SESSION['user'];
}else{
	$user = false;
}

?>

	<div class="header">
	    <div class="header-left">
		    <h1>ONLINE BLOOD DONORS CLUB</h1>
		    <h2>Bangladesh</h2>
		    <p>A community of voluntary blood donors of Bangladesh</p>
	     </div>
	    <div class="header-right">   
	    	<img src="image/donate_blood_rotator.jpg">
	    </div> 
	</div>

	<div class="main-nav">
	   <ul>
	       <li><a href="index.php">Home</a></li>
	       <li><a href="about_us.php">About Us </a></li>
	       <li><a href="about_blood.php">About Blood</a></li>
	       <li><a href="donor_list.php">All Donor list</a></li>
	       <li>
		       	<select onchange="window.location='donor_list.php?group='+this.value">
		       		<option >Donor By Group</option>
		       		<option value="A+">A positive(+)</option>
		       		<option value="A-">A negative(-)</option>
		       		<option value="AB+">AB positive(+)</option>
		       		<option value="AB-">AB negative(-)</option>
		       		<option value="B+">B positive(+)</option>
		       		<option value="B-">B negative(-)</option>
		       		<option value="O+">O positive(+)</option>
		       		<option value="O-">O negative(-)</option>
		       	</select>
	       </li>
	       <li><a href="reforblood.php">Request For Blood</a></li>
	       <?php if ($user) { ?>
	       		<li><a href="logout.php">Logout</a></li>
	       <?php }else{ ?>
	       		<li><a href="index.php">Login</a></li>
	       <?php } ?>
	       <li>
				<form method="POST" action="donor_list.php">
					<input type="text" name="group" placeholder="search blood">
				</form>
	       </li>
		</ul>
	</div>
