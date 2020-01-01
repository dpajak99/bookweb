<?php
class db {
 
 
  // deklaracja zmiennych prywatnych bazy klasy
  private $db_host = 'localhost'; //  host bazy danych
  private $db_name = 'bookweb_sql'; //  nazwa bazy danych
  private $db_user = 'root'; // nazwa użytkownika
  private $db_passw = ''; // hasło 
 
  // zmienne publiczne  
  public $connection; // połączenie
  public $error; // błąd zwrócony przez bazę danych
 
  public function connect(){  // funkcja łącząca z bazą danych
 
    if ($connection = new mysqli($this->db_host, $this->db_user, $this->db_passw, $this->db_name)) {
		$this->connection = $connection;
        return true;
    } else {
      $this->error = $connection->error;
      return false;
    }
 
  } // eof connect()
 
  public function select($sql) {
    if ($this->connection) {
      $this->connection->set_charset('utf8');
	 
      if (isset($sql) && $sql != '') {
        if($result = $this->connection->query($sql)) {
          return $result;
        } else {
          $this->error = $connection->error;
          return false;  
        } 
      } else {
        $this->error = 'Błąd zapytania SQL'; 
        return false;
      }
    } else {
      $this->error = 'Brak połączenia z bazą danych';
      return false;  
    }
 
  } // eof select()
 
  public function query($sql){
 
    if (isset($sql) && $sql != '') {
      if ($this->connection) {
        $this->connection->set_charset('utf8');
        if ($this->connection->query($sql)){
          return true;
        } else {
          $this->error = $connection->error;
          return false;
        }    
      } else {
        $this->error = 'Brak połączenia z bazą danych';
        return false;
      } 
    } else {
      $this->error = 'Błąd zapytania SQL';
      return false;
    } 
 
  } // eof query()
 
  public function close(){
    if ($this->connection){
      if ($this->connection->close()){
        return true;
      } else {
        $this->error = $this->connection->error;
        return false;
      }
    } else {
      $this->error = 'Brak aktywnego połączenia';
      return false;
    }
 
  } // eof close()
 
}


?>