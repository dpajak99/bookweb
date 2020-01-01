<?php
	$szukane = $_POST['search'];
	
	header("Location: ../index.php?page=search&searchid=$szukane&easter=egg");
?>