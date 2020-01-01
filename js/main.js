var menu_mobile = document.getElementById("menu-mobile");
var search_box_mobile = document.getElementById("search-box-mobile");

var menu = document.getElementById("menuBar");
var searchBox = document.getElementById("search-box");

var test = 3;

var mobileViewport = window.matchMedia("screen and (max-width: 768px)");

mobileViewport.addListener(zmien);
zmien();

function zmien() {
	if(mobileViewport.matches) {
		menu_mobile.innerHTML = menu.innerHTML;
		search_box_mobile.innerHTML = searchBox.innerHTML;
		$("#favourite_desktop").css("display", "none");
	} else {
		menu_mobile.innerHTML = "";
		search_box_mobile.innerHTML = "";
		$("#favourite_desktop").css("display", "block");
	}
}

function showKsiazka() {
	$(".boxBook").html('<center><a class="link" href=""><li class="box"><img class="box_pic" src="img/book_clear.jpg" class="bookphoto"/><p class="box_tytul"><b>Tytuł</b></p><p class="box_autor">Autor</p><p class="box_cena">cena</p></li></a></center>');

	var i = 0;
	$(".boxBook").each(function () {
    var tytul, autor, picture, cena = "";
    /*if (i < result.length) {*/
		picture = "img/covers/coverid"+book_item[i]+".jpg";
		$(this).find(".box").attr("id", book_item[i]);
		$(this).find(".link").attr("href", "index.php?page=book&bookid="+book_item[i]);
		i++;
        tytul = book_item[i];//result[i].name;
		i++;
        autor = book_item[i];//result[i].address;
		i++;//result[i].boxpicture;
		cena = book_item[i];//result[i].mallid;
		i++;
    //}

    $(this).find(".box_tytul").html(tytul);
    $(this).find(".box_autor").html(autor);
    $(this).find(".box_pic").attr("src", picture);
    $(this).find(".box_cena").html(cena + " zł");
    $(this).find(".box_cena").html(cena + " zł");
	
});
}
var ocena = 0;
$("#ocena").hover(function() {
	$("#ocena_1").hover(function() {
		zmien_ocene('star_full', 'star', 'star', 'star', 'star');
		ocena = 1;
	});
	$("#ocena_2").hover(function() {
		zmien_ocene('star_full', 'star_full', 'star', 'star', 'star');
		ocena = 2;
	});
	$("#ocena_3").hover(function() {
		zmien_ocene('star_full', 'star_full', 'star_full', 'star', 'star');
		ocena = 3;
	});
	$("#ocena_4").hover(function() {
		zmien_ocene('star_full', 'star_full', 'star_full', 'star_full', 'star');
		ocena = 4;
	});
	$("#ocena_5").hover(function() {
		zmien_ocene('star_full', 'star_full', 'star_full', 'star_full', 'star_full');
		ocena = 5;
	});
	
	$(this).click(function() {
		window.location.href='http://localhost/ksiegarnia_internetowa/php/send_rate.php?page=book&bookid='+$("#id_ksiazki").val()+'&rate='+ocena;
	});
});

function zmien_ocene(a,b,c,d,e) {
	$("#ocena_1").css("background-image", "url(img/"+a+".png)");
	$("#ocena_2").css("background-image", "url(img/"+b+".png)");
	$("#ocena_3").css("background-image", "url(img/"+c+".png)");
	$("#ocena_4").css("background-image", "url(img/"+d+".png)");
	$("#ocena_5").css("background-image", "url(img/"+e+".png)");
}

$('#closealert').click(function() {
	$('#alert_all').css("display", 'none');
});


/*navbar-fixed-top*/
