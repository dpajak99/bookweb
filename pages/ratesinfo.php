<br /><br /><br /><br />
<?php
	$que = new Book();
	$search_wynik = $que -> select_book("SELECT ksiazka.id_ksiazki, ksiazka.tytul, ocena FROM ocena_ksiazki JOIN ksiazka on ocena_ksiazki.id_ksiazki = ksiazka.id_ksiazki WHERE id_klienta = ".$_SESSION['id'].";");
	
	$rows = sizeof($search_wynik);
	$i = 1;
	echo "<center><table>";
	for($a = 0; $a < $rows/3; $a++) {
		echo "<tr>";
			for($b = 1; $b < 2; $b++) {
				$o = $i + 1;
				$c = $i - 1;
				if($search_wynik[$o] == 1) {
					$gwiazdki = "<img src='img/star_full.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' />";
				} else if($search_wynik[$o] == 2) {
					$gwiazdki = "<img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' />";
				} else if($search_wynik[$o] == 3) {
					$gwiazdki = "<img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star.png' class='star' /><img src='img/star.png' class='star' />";
				} else if($search_wynik[$o] == 4) {
					$gwiazdki = "<img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star.png' class='star' />";
				} else if($search_wynik[$o] == 5) {
					$gwiazdki = "<img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' /><img src='img/star_full.png' class='star' />";
				}
				echo "<td style='padding: 10px; font-weight: bold;'><a href='index.php?page=book&bookid=".$search_wynik[$c]."'>".$search_wynik[$i]."</a></td><td style='padding: 10px;'>".$gwiazdki."</td>";
				$i = $i + 3;
			}
		echo "</tr>";
	}
	echo "</table></center>";
?>
<br /><br /><br /><br />