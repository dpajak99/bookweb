<?php
class Book {
  public $db;
  public $returned = array();
  
  function __construct(){
    $class_db_file = '../php/connect.php';
    if (file_exists($class_db_file)){
      require_once($class_db_file);
      $this->db = new db();
    } else {
      echo 'Brak pliku z klasą db';
    }
  }

  function select_book($sql) {
	  $mx = array();
   if ($this->db->connect()) {
    if ($results = $this->db->select($sql)) {
		$i = 0;
      while ($row = @mysql_fetch_assoc($results)) {
        
         foreach ($row as $key => $val) {
           $mx[$i] = $val;
		   $i++;
         }
         $this -> returned = $mx;
      }
		$zmienna= $this -> returned;
		print "<script type=\"text/javascript\">";
		print "var book_item=new Array()\n";
		foreach($zmienna as $tym) print "book_item.push('$tym')\n";
		print "</script>";
		
      return $this -> returned;
    } else {
      echo 'Błąd pobrania danych mysql: ' . $this->db->error;
      return false;
    } 
    $db->close();     
  } else {
    echo 'Błąd połączenia mysql: ' . $this->db->error;
    return false;
  }
  }
  
  
}
?>