<?php

require_once('db.php');

$book_title = $_POST['book_title'];  
$id_autora = $_POST['id_autora'];
$rok_wydania = $_POST['rok_wydania'];
$opis = $_POST['opis'];
$cena = $_POST['cena'];
$kategoria1 = $_POST['kategoria1'];
$kategoria2 = $_POST['kategoria2'];
$kategoria3 = $_POST['kategoria3'];

$book = new Book();
$book -> select_book("INSERT INTO ksiazka values('', '$book_title', '$id_autora', '$rok_wydania', '$cena', '', '','','$opis');");
$max = $book -> select_book("select max(id_ksiazki) from ksiazka;");
$book -> select_book("INSERT INTO kategoria values('', '$max[0]', '$kategoria1'), ('', '$max[0]', '$kategoria2'), ('', '$max[0]', '$kategoria3');");

if(isset($_FILES['files'])){
    $errors = array();
	foreach($_FILES['files']['tmp_name'] as $key => $tmp_name ){
		$file_name = $key.$_FILES['files']['name'][$key];
		$file_size = $_FILES['files']['size'][$key];
		$file_tmp  = $_FILES['files']['tmp_name'][$key];
		$file_type = $_FILES['files']['type'][$key];	
		$current_date = date("YmdHi"); 
		
        if($file_size > 2097152){
			$errors[]='File size must be less than 2 MB';
        }		
        $desired_dir="../img/covers";
        if(empty($errors)==true){
            if(!is_dir($desired_dir)){
                mkdir("$desired_dir", 0700);
            }
			$fileExt = explode('.', $file_name);
			$fileActualExt = strtolower(end($fileExt));
				
				
			$fileNameNew = "coverid$max[0]".".".$fileActualExt;
            if(is_dir("$desired_dir/".$fileNameNew)==false){
				
                move_uploaded_file($file_tmp,"$desired_dir/".$fileNameNew);
            }	
        }else{
                print_r($errors);
        }
    }
	if(empty($error)){
		header("Location: ../index.php?page=admin&upload=success");
	}
}
?>
