<!DOCTYPE HTML>
<html>
	<head>
		<title>BOOK WEB | Sieć, w której znajdziesz wszystko</title>
		
		<link rel="icon" type="image/ico" href="img/favicon.ico" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
		<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/main-mobile.css" />
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	</head>
	<body>
	<?php
		if(isset($_GET["register"])) {
			echo "<div id='alert_all'>
				<div id='alert_info'>";
				if($_GET["register"] == 'success') {
					echo "Rejestracja przebiegła pomyślnie!<br />
					Zaloguj się na swoje konto!<br />";
				} else if($_GET["register"] == 'error1') {
					echo "Podany email lub numer telefonu już istnieje!<br />";
				}
			echo"
					<button id='closealert'>Ok</button>
				</div>
			</div>";
		} 
	?>
	<div class="modal fade" id="rejestracjaModal" tabindex="-1" role="dialog" aria-labelledby="rejestracjaModal" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title">Rejestracja<h4>
		  </div>
		  <form action="php/rejestracja.php" method="post">
					<div class="col-sm-12" style="padding: 30px; padding-right: 50px;">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Imię</label>
								<input type="text" name="imie" placeholder="Wpisz swoje imię..." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Nazwisko</label>
								<input type="text" name="nazwisko" placeholder="Wpisz swoje nazwisko..." class="form-control">
							</div>
						</div>					
						<div class="row">
							<div class="col-sm-5 form-group">
								<label>Miasto</label>
								<input type="text" name="miasto" placeholder="Wpisz nazwę miasta..." class="form-control">
							</div>	
							<div class="col-sm-5 form-group">
								<label>Ulica</label>
								<input type="text" name="ulica" placeholder="Wpisz numer ulicy..." class="form-control">
							</div>	
							<div class="col-sm-2 form-group">
								<label>Numer</label>
								<input type="text" name="dom" placeholder="Numer domu/numer lokalu" class="form-control">
							</div>	
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Kod pocztowy</label>
								<input type="text" name="kod" placeholder="Wpisz kod pocztowy..." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Kraj</label>
								<input type="text" name="kraj" placeholder="Wpisz nazwę kraju..." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Województwo</label>
								<input type="text" name="woje" placeholder="Wpisz nazwę województwa..." class="form-control">
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Numer telefonu</label>
								<input type="text" name="tel" placeholder="Wpisz numer telefonu..." class="form-control">
							</div>		
							<div class="col-sm-6 form-group">
								<label>Adres email</label>
								<input type="text" name="email" placeholder="Wpisz adres email..." class="form-control">
							</div>	
						</div>						
					<div class="row">
							<div class="col-sm-6 form-group">
								<label>Hasło</label>
								<input type="password" name="pass" placeholder="******" class="form-control">
							</div>		
							<div class="col-sm-6 form-group">
								<label>Powtórz hasło</label>
								<input type="password" name="pass2"  placeholder="******" class="form-control">
							</div>	
						</div>			
					</div>
					<div class="row">
							<div class="col-sm-6 form-group" style="padding-left: 50px;">
								Oznajmiam iż zapoznałem się z <b>Regulaminem</b>, <b>Polityką prywatności</b> oraz <b>Zasadami przechowywania danych</b>.
							</div>		
							<div class="col-sm-6 form-group">
								<input type="checkbox" /> Akceptuję
							</div>	
					</div>			
				
		  <div class="modal-footer">
			<button class="btn btn-default" data-dismiss="modal">Zamknij</button>
			<button type="submit" class="btn btn-primary">Zarejestruj</button>
		  </div>
		  </form> 
		</div> <!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="logowanieModal" tabindex="-1" role="dialog" aria-labelledby="logowanieModal" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title">Logowanie<h4>
		  </div>
		  <form action="php/logowanie.php" method="post">
			<div style="padding: 30px; padding-right: 50px;">	
				<label>Numer telefonu lub adres email</label>
				<input type="text" name="login" placeholder="Login" class="form-control">
				<br />
				<label>Hasło</label>
				<input type="password" name="pass" placeholder="********" class="form-control"><br /><br />
				<button class="btn btn-default" data-dismiss="modal">Zamknij</button>
				<button type="submit" class="btn btn-primary">Zaloguj</button>				
			</div>
		  </form> 
		</div> <!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	
