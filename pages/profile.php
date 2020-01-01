<div class="container">
	<div class="row">
	<br /><br /><br /><br />
		<div class="col-sm-6" style="text-align: center;">
			<img src="img/avatars/avatar_default.jpg" class="avatar"/>
		</div>
		<div class="col-sm-6">
		<br /><br /><br /><br />
			<center><h1><?php echo "#00".$_SESSION['id']." - ".$_SESSION['imie']." ".$_SESSION['nazwisko']; ?></h1>
			<?php
				$klient = new Book();
				$dane = $klient -> select_book("SELECT adres.miasto, adres.ulica, adres.numer, adres.kod_pocztowy, adres.kraj, adres.wojewodztwo, klient.numer_telefonu, klient.email, klient.ranga FROM adres JOIN klient ON klient.id_klienta = adres.id_klienta WHERE klient.id_klienta = '".$_SESSION['id']."';");
				if($dane[8] == "Administrator") {
					$color = "#8b0000";
				} else if( $dane[8] == "Użytkownik") {
					$color = "darkgreen";
				}
				
				echo "<font style='font-weight: bold; font-size: 20px; color: $color;'>$dane[8]</font><br /><br /><table><tr><td class='dane_table'><h5>Numer telefonu:</h5></td><td class='dane_table'>+48 $dane[6]</td></tr>
				<tr><td class='dane_table'><h5>Adres email:</h5></td><td class='dane_table'> $dane[7]</td></table>";
			?>
			</center>
		</div>
	</div>
	<br /><br /><br /><br />
	<div class="row">
		<div class="col-xs-12">
			<div class="category ">
				<ul>
					<li class="col-lg-2 center"><a class='categoryhref' href="index.php?page=profile&setting=dane">Dane kontaktowe</a><li>
					<li class="col-lg-2 center">Recenzje<li>
					<li class="col-lg-2 center"><a class='categoryhref' href="index.php?page=profile&setting=rates">Ocenione</a><li>
					<li class="col-lg-2 center">Historia zamówień<li>
					<li class="col-lg-2 center">Znajomi<li>
					<li class="col-lg-2 center">Lista życzeń<li>
				</ul>
			</div>
		</div>
	</div>
	<?php
		if(!isset($_GET['setting']) || $_GET['setting'] == 'dane') {
			include('pages/dane_kontaktowe.php');
		} else if($_GET['setting'] == 'rates') {
			include('pages/ratesinfo.php');
		}
	?>
</div>