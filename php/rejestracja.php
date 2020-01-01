<?php
	require_once("Client.php");
	
	$imie = $_POST['imie'];
	$nazwisko = $_POST['nazwisko'];
	$telefon = $_POST['tel'];
	$email = $_POST['email'];
	$haslo = $_POST['pass'];
	$haslo_control = $_POST['pass2'];
	
	$miasto = $_POST['miasto'];
	$ulica = $_POST['ulica'];
	$dom = $_POST['dom'];
	$kod = $_POST['kod'];
	$kraj = $_POST['kraj'];
	$woje = $_POST['woje'];
	
	if($haslo == $haslo_control) {
		$klient = new Client();
		$check = $klient -> query("SELECT id_klienta FROM klient WHERE numer_telefonu = '$telefon' OR email = '$email';");
		if( sizeof($check) == 0 ) {
			$klient -> add_client("INSERT INTO klient values('','','$imie', '$nazwisko', '000', '$telefon', '$email', '$haslo', 'Użytkownik');");
			$klient -> query("SELECT id_klienta FROM klient WHERE numer_telefonu = '$telefon';");
			$id = $klient -> returned;

			$klient -> add_client("INSERT INTO adres values('','$id[0]','$miasto', '$ulica', '$dom', '$kod', '$kraj', '$woje');");
			$klient -> add_client("UPDATE klient SET id_adresu = $id[0] WHERE id_klienta = '$id[0]';");
			header("Location: ../index.php?register=success");
		} else {
			echo "kurdebele, błąd krytyczny";
			header("Location: ../index.php?register=error1");
		}
	} else {
		echo "Error: Hasła nie zgadzają się! Javascript przepuścił!";
	}
?>