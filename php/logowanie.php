<?php
	require_once("Client.php");

	$login = $_POST['login'];
	$haslo = $_POST['pass'];
	
	$klient = new Client();
	$check = $klient -> query("SELECT id_klienta FROM klient WHERE numer_telefonu = '$login' OR email = '$login';");
	
	if( sizeof($check) == 1 ) {
		$check = $klient -> query("SELECT id_klienta FROM klient WHERE numer_telefonu = '$login' OR email = '$login' AND haslo = '$haslo';");
		if( sizeof($check) == 1 ) {
			$check = $klient -> query("SELECT id_klienta, imie, nazwisko FROM klient WHERE numer_telefonu = '$login' OR email = '$login' AND haslo = '$haslo';");
			session_start();
			$_SESSION['active'] = true;
			$_SESSION['id'] = $check[0];
			$_SESSION['imie'] = $check[1];
			$_SESSION['nazwisko'] = $check[2];
			
			echo $_SESSION['id'].$_SESSION['imie'].$_SESSION['nazwisko'];
			header("Location: ../index.php?login=success");
		} else {
			echo "Błędne hasło";
		}
	} else {
		echo "Błędny login";
		//header("Location: ../index.php?login=error1");
	}
?>