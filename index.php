<?php
	session_start();
	require_once("php/book.php");
	if(isset($_GET['page']) && $_GET['page'] == 'admin') {
		$client = new Book();
		$query = $client -> select_book("SELECT klient.ranga from klient where klient.id_klienta = ".$_SESSION['id'].";");
		
		if(@$_SESSION['active'] == true) {
			if($query[0] = "Administrator") {
				require_once("admin/index.php");
			}
		} else {
			require_once("pages/start.php");
		}
	} else {
		require_once("pages/header.php");
		require_once("pages/nav.php");
		
		if(!isset($_GET['page']) || $_GET['page'] == 'start') {
			require_once("pages/start.php");
		} else if($_GET['page'] == 'profile') {
			if(@$_SESSION['active'] == true) {
				require_once("pages/profile.php");
			} else {
				require_once("pages/start.php");
			}
		} else if($_GET['page'] == 'book') {
			require_once("pages/book_page.php");
		} else if($_GET['page'] == 'search') {
			require_once("pages/search.php");
		}
		require_once("pages/footer.php");
	}
?>