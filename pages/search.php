<?php
	$que = new Book();
	if($_GET['easter'] == "egg") {
		$search_wynik = $que -> select_book("SELECT ksiazka.id_ksiazki, ksiazka.tytul, concat(autor.imie, ' ', autor.nazwisko) as 'autor', ksiazka.cena FROM ksiazka JOIN autor ON ksiazka.autor = autor.id_autora WHERE tytul LIKE '%".$_GET['searchid']."%' COLLATE utf8_general_ci;");
	} else if($_GET['easter'] == "wiosna") {
		$search_wynik = $que -> select_book("SELECT ksiazka.id_ksiazki, ksiazka.tytul, concat(autor.imie, ' ', autor.nazwisko) as 'autor', ksiazka.cena FROM kategoria JOIN ksiazka ON ksiazka.id_ksiazki = kategoria.id_ksiazki JOIN autor ON autor.id_autora = ksiazka.autor WHERE kategoria.nazwa_kategorii  LIKE '%".$_GET['searchid']."%' COLLATE utf8_general_ci;");
	}
?>

	<div class="container" style="padding-left: 13%;">
<?php
	$ile = sizeof($search_wynik);
	$sum = $ile / 4;
	echo "<h3>".$sum." wyników wyszukiwania dla zapytania '". $_GET['searchid']."'</h3>";
?>
<?php
	$wyn = sizeof($search_wynik);
	for($a = 1; $a <= ($wyn/5/4)+1; $a++) {
		echo '<div class="row">';
			for($b = 1; $b <= 5; $b++) {
				echo '<div class="col-xs-2 boxBook"></div>';
			}
		echo '</div>';
	}
?>
	</div>
	<script type="text/javascript">
		showKsiazka();
	</script>