<?php 
	// This pulls in all the credentials from the config.php file (check it out for yourself). That file gets us access to the Database. 
	require('config.php'); 
?>
<?php
	
	$result = $mysqli->query("SELECT * FROM states WHERE id=" . $_REQUEST['id']) or die(mysql_error());  
?>
<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="description" content="Your description goes here">
		<meta name="keywords" content="one, two, three">

		<title>Cool! The States</title>
		
		<!-- external CSS link -->
		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/style.css">
		<!-- jQuery --> 
		<script src="http://code.jquery.com/jquery-latest.js"></script>
	</head>

	<body>
		<div id="container">
		<!-- EDIT HTML CODE BEGIN --> 

			<h1>States Drinks</h1>
		 	
		 	<?php 
			// The while loop will keep getting the next row until there are no more in the table to get
			while($row = $result->fetch_array(MYSQLI_BOTH)) {
				
				// Print out the contents of each row into a table
				// Start by printing out the name of each "state" between <h2> tags
				echo "<h2>" . $row['state'] . "</h2>";

				// Then we make an image tag with HTML and inert the "image" link
				echo "<img src=\"images/" . $row['image'] . "\">";
				
			} 
			?>

		<!-- EDIT HTML CODE END --> 
		</div><!-- #container --> 
	</body>
</html>
<?php  mysqli_close($mysqli); //close the database connection ?>