<?php
	$bookid = $_GET['bookid'];
?>
<div class="container">
	<div class="row">
	<br /><br /><br /><hr /><br />
		<div class="col-sm-5" style="text-align: right;">
			<img src="img/covers/coverid<?php echo $bookid;?>.jpg" class="avatar"/>
		</div>
		<div class="col-sm-5">
			<?php
				$klient = new Book();
				$zap = $klient -> select_book("SELECT avg(ocena) FROM ocena_ksiazki WHERE id_ksiazki = ".$bookid.";");
				echo '<table id="ocena"><tr><td id="ocena_1"></td><td id="ocena_2"></td><td id="ocena_3"></td><td id="ocena_4"></td><td id="ocena_5"></td><td>&nbsp;&nbsp; Średnia ocen:&nbsp'.$zap[0].'</td></tr></table>';
				$zap = $klient -> select_book("SELECT ocena FROM ocena_ksiazki WHERE id_ksiazki = ".$bookid." AND id_klienta = ".$_SESSION['id'].";");
				if($zap[0] == 1) {
					echo "<script type='text/javascript'>$(function() { zmien_ocene('star_full', 'star', 'star', 'star', 'star');});</script>";
				} else if($zap[0] == 2) {
					echo "<script type='text/javascript'>$(function() { zmien_ocene('star_full', 'star_full', 'star', 'star', 'star');});</script>";
				} else if($zap[0] == 3) {
					echo "<script type='text/javascript'>$(function() { zmien_ocene('star_full', 'star_full', 'star_full', 'star', 'star');});</script>";
				} else if($zap[0] == 4) {
					echo "<script type='text/javascript'>$(function() { zmien_ocene('star_full', 'star_full', 'star_full', 'star_full', 'star');});</script>";
				} else if($zap[0] == 5) {
					echo "<script type='text/javascript'>$(function() { zmien_ocene('star_full', 'star_full', 'star_full', 'star_full', 'star_full');});</script>";
				}
			?>
			<h1><?php
				$dane = $klient -> select_book("SELECT id_ksiazki, tytul, autor.imie, autor.nazwisko, rok_wydania, cena, wydawnictwo, shortdesc FROM ksiazka JOIN autor ON autor.id_autora = ksiazka.autor WHERE id_ksiazki = $bookid;");
				$kategoria = $klient -> select_book("SELECT nazwa_kategorii FROM kategoria WHERE id_ksiazki = $bookid;");
				echo "<input id='id_ksiazki' style='display:none;' value='".$dane[0]."' />";
				echo $dane[1]." (".$dane[4].")";
			?></h1>
			<?php
				echo "<b>".$dane[2]." ".$dane[3]."</b><br /><br />";
				echo $dane[7]."<br /><br />";
				echo "<font style='font-size: 25px; color: red;'>".$dane[5]." zł</font>&nbsp;&nbsp;&nbsp;&nbsp;<a href=''> Dodaj do koszyka...</a>";
				echo "<br /><br /><br /><br /><font style='color: gray;'>";
				for($i = 0; $i < sizeof($kategoria); $i++) {
					echo $kategoria[$i].", ";
				}
				echo "</font>";
			?>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<br />
<hr />
<br />
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="category ">
				<ul>
					<li class="col-lg-4 center">Recenzje<li>
					<li class="col-lg-4 center">Inne książki tego autora<li>
					<li class="col-lg-4 center">O autorze<li>
				</ul>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>
<br /><br /><br /><br />