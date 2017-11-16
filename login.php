<?php
session_start();
require_once 'database.php';

if(isset($_SESSION['user'])){	#If the user is already logged in, Redirect to homepage
	header('location:index.php?login_action=success');
}

if (isset($_POST['submit'])) {
	$email = $_POST['email'];
    $password = $_POST['password'];
    
 	$sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";

	if ($query = mysql_query($sql)) {
		$data = mysql_fetch_assoc($query);
		if ($data) {
			$_SESSION['user'] = $data;
			header('location:index.php?login_action=success');
		}else{
			header('location:index.php?login_action=error');
		}		
	}else{
		header('location:index.php?login_action=error');
	}
}else{
	header('location:index.php?login_action=error');
}
?>