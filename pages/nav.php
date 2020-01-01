<nav class="navbar navbar-fixed-top" style="z-index:1">
    <div class="navbar-header navbar-user">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#userBar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#"><!--<img src="img/logo.png"  height="100%"/>--></a>
    </div>
	<div class="collapse navbar-collapse navbar-login" id="userBar">
		<ul class="nav navbar-nav navbar-left">
			<li id="navbar-nag1"><a href="index.php" class="nabar-login-link navbar-user-login">BOOKWEB.pl | Sieć, w której znajdziesz książki, które Cię intersują</a></li>
			<li id="navbar-nag2"><img src="img/logo-inverse.png"  height="100px"/></li>
		</ul>
		<div id="search-box-mobile">
	  
		</div>
		<?php
			if(@$_SESSION['active'] == true) {
				
		?>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="php/logout.php" class="nabar-login-link navbar-user-login"><span class="glyphicon glyphicon-log-out" ></span> Wyloguj</a></li>
			<li><a href="index.php?page=profile" class="nabar-login-link navbar-user-login"><span class="glyphicon glyphicon-user"></span> Profil</a></li>
		</ul>
		<div id="koszyk">
			<div class="col-lg-6"><br />
				<b>Twój koszyk: </b><br />
				0
			</div>
			<div class="col-lg-6">
				<img src="img/shop.png" id="koszyk_photo"/>
			</div>
		</div>
		<?php
			} else {
		?>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" class="nabar-login-link navbar-user-login" data-toggle="modal" data-target="#rejestracjaModal"><span class="glyphicon glyphicon-user" ></span> Rejestracja</a></li>
			<li><a href="#" class="nabar-login-link navbar-user-login"  data-toggle="modal" data-target="#logowanieModal"><span class="glyphicon glyphicon-log-in"></span> Logowanie</a></li>
		</ul>
		<?php
			}
		?>	  
		<div id="menu-mobile">
	  
		</div>
    </div>
    <div class="collapse navbar-collapse" id="menuBar">
		<ul class="nav navbar-nav navbar-menu">
			<li><a href="#" class="menu-item">BESTSELLERY</a></li>
			<li><a href="#" class="menu-item">NOWOŚCI</a></li>
			<li><a href="#" class="menu-item">ZAPOWIEDZI</a></li>
			<li><a href="#" class="wyprzedaz menu-item">WYPRZEDAŻE</a></li>
		</ul>
		<ul class="navbar-right search-box" id="search-box">
			<li>
				<div id="search-container">
					<form action="php/search.php" method="post">
						<input type="text" id="search_value" placeholder="Szukaj w sklepie..." name="search" class="search-item">
						<button type="submit" class="search-item-button"><i class="glyphicon glyphicon-search"></i></button>
					</form>
				</div>
			</li>
		</ul>
    </div>

</nav>
