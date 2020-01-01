<?php
class Client {
  public $db;
  public $returned = array();
  
  function __construct(){
    $class_db_file = 'connect.php';
    if (file_exists($class_db_file)){
      require_once($class_db_file);
      $this->db = new db();
    } else {
      echo 'Brak pliku z klasą db';
    }
  }

  function add_client($sql) {
    if ($this->db->connect()) {
      if ($results = $this->db->query($sql)) {
      return true;
    } else {
      echo 'Błąd wysyłania danych mysql: ' . $this->db->error;
      return false;
    } 
    $db->close();     
  } else {
    echo 'Błąd połączenia mysql: ' . $this->db->error;
    return false;
  }
  }
  
  function query($sql) {
	  $mx = array();
   if ($this->db->connect()) {
    if ($results = $this->db->select($sql)) {
		$i = 0;
      while ($row = mysqli_fetch_assoc($results)) {
        
         foreach ($row as $key => $val) {
           $mx[$i] = $val;
		   $i++;
         }
         $this -> returned = $mx;
      }
		$zmienna= $this -> returned;
		print "<script type=\"text/javascript\">";
		print "var klient_tab=new Array()\n";
		foreach($zmienna as $tym) print "klient_tab.push('$tym')\n";
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