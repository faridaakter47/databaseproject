<link rel="stylesheet" type="text/css" href="css/style.css">
<?php
include_once "header.php";
require_once 'database.php';

if (!$user) {
	#header('location:index.php?login_action=not_login');	Your action here, If you want to redirect
	die('<h1 style="text-align:center;color:red;margin-top:100px">Please login to view this page!</h1>');
}
?>

<div class="about">
	<?php
		function drawTable(){
			if (isset($_POST['group'])) {
				$group= $_POST['group'];
				$sql = "SELECT * FROM donors_info where blood_group='$group'";
			} else if (isset($_GET['group']) ){
		    	$group= urlencode($_GET['group']);
		    	$sql = "SELECT * FROM donors_info where blood_group='$group'";
		    }else{
		    	$sql = "SELECT * FROM donors_info";
		    }
			$res = mysql_query($sql) or die(mysql_error());
	?>
				<table border="1" width="100%">
					<thead>
						<tr>
							<th>Name</th>
							<th>Blood Group</th>
							<th>Age</th>
							<th>Living District</th>
							<th>Contact Number</th>
							<?php if(isset($_SESSION['user']['type']) && $_SESSION['user']['type'] =='user'){ ?>
									<th>
											VIEW
									</th>
									<?php } else { ?>
									<th>
											VIEW
									</th>
									<th>
											EDIT
									</th>
										<?php  } ?>
									
							   

						</tr>
					</thead>
					<tbody>
						<?php while ($data = mysql_fetch_assoc($res)) { ?>
							<tr>
								<th><?php echo $data['name'] ?></th>
								<th><?php echo $data['blood_group'] ?></th>
								<th><?php echo $data['age'] ?></th>
								<th><?php echo $data['living_district'] ?></th>
								<th><?php echo $data['contact_number'] ?></th>
								
									<?php if(isset($_SESSION['user']['type']) && $_SESSION['user']['type'] =='user'){ ?>
									<th>
											<a href="view.php?id=<?php echo $data['id'];?>">VIEW</a>
									</th>
									<?php } ?>
								
								
									<?php if(isset($_SESSION['user']['type']) && $_SESSION['user']['type'] =='admin') { ?>
										<th>
											<a href="view.php?id=<?php echo $data['id']; ?>">VIEW </a>
										</th>
										
										<th>
											<a href="edit.php?id=<?php echo $data['id']; ?>">EDIT </a>
										</th>
										
										
									<?php } ?>
								
								
							</tr>
							 <?php #var_dump($_SESSION); ?>
						<?php } ?>
					</tbody>
				</table>
			<?php }

		drawTable();
	?>
</div>
 <?php include_once "footer.php"; ?>