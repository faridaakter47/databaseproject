

<?php
   error_reporting(1);
	$hostname = 'localhost';
	$username = 'root';
	$password = '';
	$databaseName = 'project';

	$con = mysql_connect($hostname,$username,$password) or die(mysql_error($con));
	if ($con) {
		mysql_select_db($databaseName,$con) or die(mysql_error());
	}
?>