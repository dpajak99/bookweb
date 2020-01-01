<!DOCTYPE HTML>
<html>
	<head>
		<title> Panel Administratora </title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" type="text/css" href="admin/style/admin.css" />
	</head>
	<body>
		<header>
			<div style="width: 50%; position: relative; height: 40px; display: inine-block;">
				BookWeb.pl
			</div>
			<div style="float: right; position: relative; height: 40px; top: -40px; display: inine-block; text-align: right; width: 50%;">
				Zalogowano jako:<b> ID<?php echo $_SESSION['id'];?> </b><br /><a href="">Wyloguj</a>
			</div>
		</header>
		<div id="all">
			<nav>
				<ul>
					<li>Ustawienia książek
						<ul>
							<li><a href="index.php?page=admin&subpage=book">Dodawanie książek</a></li>
							<li><a href="index.php?page=admin&subpage=autor">Dodawanie autorów</a></li>
						</ul>
					</li>
					<li>Zamówienia
						<ul>
							<li>Zamówienia do zrealizowania</li>
						</ul>
					</li>
					<li>Wyprzedaże i promocje
						<ul>
							<li>Utwórz promocję</li>
						</ul>
					</li>
					<li>Książki
						<ul>
							<li>Bestsellery</li>
							<li>Nowości</li>
							<li>Zapowiedzi</li>
							<li>Wyprzedaże</li>
						</ul>
					</li>
					<li>Inne
						<ul>
							<li>Edycja hasła do panelu</li>
							<li>Dodanie nowych użytkowników panelu</li>
							<li>Uprawnienia użytkowników</li>
							<li>Inne opcje</li>
						</ul>
					</li>
				</ul>
			</nav>
			<div id="content">
			<?php 
				if($_GET['page'] != "admin") {
					header("Location: index.php");
				} else if(!isset($_GET['subpage']) || $_GET['subpage'] == 'book') {
					include('admin/forms/addbook.php');
				} else if( $_GET['subpage'] == 'autor') {
					include('admin/forms/addautor.php');
				}
			?>
			</div>
		</div>
		<script type="text/javascript">
		
		</script>
	</body>
</html>