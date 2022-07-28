<?php 
	// This pulls in all the credentials from the config.php file (check it out for yourself). That file gets us access to the Database. 
	require('config.php'); 
?>
<?php
	
	// So we're in the DB, but we don't know which table the data we want is in.
	$result = $mysqli->query("SELECT * FROM states") or die(mysql_error());  	
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
				//echo "<img src=\"images/" . $row['image'] . "\">";

				echo "<a href=\"drink.php?id={$row['id']}\"><img src=\"images/" . $row['image'] . "\"></a>";
			} 
			?>

		<!-- EDIT HTML CODE END --> 
		</div><!-- #container --> 
		<script> 
			//JQUERY 
			//All of this is extra and seperate from the database. The jQuery here allows for the "click" feature of hiding and showing those images. 

			/* This first line is some standard code which is the "ON LOAD" event for all the jQuery we run. Basically it says, "Is everythign in the page loaded? Yes? Ok great now let's load the javaScript last" */

			(function(){
				
				/* hides all the images */
				 $("a").hide();
				 $("img").hide();

				/* when I click on an h2. The next image shows. Toggle means show/hide depending on whether it is open or closed already. Pretty neat eh? Try it for yourself. */
				$("h2").click(function(){
					$(this).next().toggle(); 
					$(this).next().children().toggle(); 
				});
						
			}()); //this ends everything
				
		</script> 
	</body>
</html>
<?php  mysqli_close($mysqli); //close the database connection ?>