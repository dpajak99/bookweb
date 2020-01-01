<?php
session_start();
$_SESSION['active'] = '';
$_SESSION = array();
session_destroy();
header("Location: ../index.php?logout=success");
?>




