<?php
session_start();

if (isset($_SESSION['users'])) {
	#You can check User's Permissions
	#Your custom logic
}else{
	header('location:login.php');
}
?>