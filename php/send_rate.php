<?php 
	session_start();
	$id_ksiazki = $_GET['bookid'];
	$page = $_GET['page'];
	$ocena = $_GET['rate'];
	$id = $_SESSION['id'];
	
	require_once("Client.php");
	
	$ocenka = new Client();
	$oceny = $ocenka -> query("SELECT id FROM ocena_ksiazki WHERE id_ksiazki = '$id_ksiazki' AND id_klienta = '$id';");
	if(sizeof($oceny) > 0) {
		$ocenka -> add_client("UPDATE ocena_ksiazki SET ocena = '$ocena' WHERE id_klienta = '$id' AND id_ksiazki = '$id_ksiazki';");
	} else {
		$ocenka -> add_client("INSERT INTO ocena_ksiazki VALUES('', ".$id.", ".$id_ksiazki.", ".$ocena.");");
	}
	header("Location: ../index.php?page=$page&bookid=$id_ksiazki");
?>