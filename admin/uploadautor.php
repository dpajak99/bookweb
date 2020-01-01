<?php

require_once('db.php');

$autor_imie = $_POST['autor_imie'];  
$autor_nazwisko = $_POST['autor_nazwisko'];


$book = new Book();
$book -> select_book("INSERT INTO autor values('', '$autor_imie', '$autor_nazwisko');");
$query = $book -> select_book("SELECT max(id_autora) from autor;");

echo "<script type='text/javascript'>alert('".$query[0]."');</script>";
?>
