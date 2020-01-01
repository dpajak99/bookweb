<?php
	$book = new Book();
	$book -> select_book("SELECT ksiazka.id_ksiazki, ksiazka.tytul, concat(autor.imie, ' ', autor.nazwisko) as 'autor', ksiazka.cena FROM ksiazka JOIN autor ON ksiazka.autor = autor.id_autora");
?>
<div class="container">
	<div class="row" style="padding-left: 3%;">
		<div id="favourite-desktop">
			<div class="col-lg-3 test">
				<div class="row">
					<div class="col-xs-5 boxBook">
						<img src="img/book_clear.jpg"  height="100%"/>
					</div>
					<div class="col-xs-5 boxBook">
						<img src="img/book_clear.jpg"  height="100%"/>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-5 boxBook">
						<img src="img/book_clear.jpg"  height="100%"/>
					</div>
					<div class="col-xs-5 boxBook">
						<img src="img/book_clear.jpg"  height="100%"/>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<br /><br /><br /><br /><br /><br /><img src="img/logo.png" width="85%" /><br /><br /><br /><br /><br /><br />
		</div>
		<div class="col-lg-3 test">
			<div class="row">
				<div class="col-xs-5 boxBook">
					<img src="img/book_clear.jpg"  height="100%"/>
				</div>
				<div class="col-xs-5 boxBook">
					<img src="img/book_clear.jpg"  height="100%"/>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-5 boxBook">
					<img src="img/book_clear.jpg"  height="100%"/>
				</div>
				<div class="col-xs-5 boxBook">
					<img src="img/book_clear.jpg"  height="100%"/>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="category ">
		<ul>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=fantasy&easter=wiosna">Fantasy</a><li>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=dzieci&easter=wiosna">Dla dzieci</a><li>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=romanse&easter=wiosna">Romanse</a><li>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=historyczne&easter=wiosna">Historyczne</a><li>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=przygodowe&easter=wiosna">Przygodowe</a><li>
			<li class="col-lg-2"><a class='categoryhref' href="index.php?page=search&searchid=psychologiczne&easter=wiosna">Psychologiczne</a><li>
		</ul>
	</div>
	<div class="container" style="padding-left: 13%;">
		<div class="row">
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
		</div>
		<div class="row">
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
		</div>
		<div class="row">
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
		</div>
		<div class="row">
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
		</div>
		<div class="row">
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
			<div class="col-xs-2 boxBook"></div>
		</div>
	</div>
	
	dodo<br />dodo<br />dodo<br />dodo<br />dodo<br />dodo<br />dodo<br />dodo<br />
</div>
<script type="text/javascript">
	showKsiazka();
</script>