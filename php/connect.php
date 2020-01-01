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
 
    if ($connection = mysql_connect($this->db_host, $this->db_user, $this->db_passw)) {
      if(mysql_select_db($this->db_name, $connection)) {
        $this->connection = $connection;
        return true;
      } else {
        $this->error = mysql_error();
        return false;
      }
    } else {
      $this->error = mysql_error();
      return false;
    }
 
  } // eof connect()
 
  public function select($sql) {
 
    if ($this->connection) {
      mysql_set_charset('utf8', $this->connection);
      if (isset($sql) && $sql != '') {
        if($result = mysql_query($sql)) {
          return $result;
        } else {
          $this->error = mysql_error();
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
        mysql_set_charset('utf8', $this->connection);
        if (mysql_query($sql)){
          return true;
        } else {
          $this->error = mysql_error();
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
      if (mysql_close($this->connection)){
        return true;
      } else {
        $this->error = mysql_error();
        return false;
      }
    } else {
      $this->error = 'Brak aktywnego połączenia';
      return false;
    }
 
  } // eof close()
 
}


?>