<link rel="stylesheet" type="text/css" href="css/style.css">

<?php
require_once 'header.php';

$msg = '';

if (isset($_GET['login_action'])) {
	$action = $_GET['login_action'];
	switch ($action) {
		case 'error':
				$msg = '<h1 style="color:red">Wrong username or password..</h1>';
			break;
		default:
				$msg = '';
			break;
	}
}
?>

<div class="home">
	<div class="home-1">
		<h1> Admin Area</h1>
		<?php echo $msg;	#Display Error MSG ?>
		<?php if($user) { ?>		
			<h2>You are logged in. <br/><a href="logout.php">Logout</a></h2>
		<?php } else{ ?>
			<form method="post" action="login.php">
				<input placeholder="email" name="email"><br>
				<input type="password" placeholder="password" name="password"><br>
				<input type="submit" name="submit" value="Log In">
			</form>
		<?php } ?>
	</div>
	<div class="home-2">
		<h1> Will Be A Blood Donor ???</h1>
		<button><a href="registration.php" >Click Here</a></button>
	</div>
	<div class="home-3">
		<h1>Are You  Search Blood ???</h1>
		<button><a href="reforblood.php" >Click Here For Blood</a></button>
	</div>
</div>

<?php require_once 'footer.php'; ?>