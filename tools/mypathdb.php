<?php

if ($_SERVER['SERVER_NAME'] == 'localhost') {
    $serverName = "localhost";
    $userName = "root";
    $password = "";
    $dbName = "ecommerce";
}

//Crear la conexión
$conn = mysqli_connect($serverName, $userName, $password, $dbName);
mysqli_set_charset($conn, 'utf8');

//Chequear la conexion
if (!$conn) {
    $data = array("error" => '3');
    die(json_encode($data));
}
// var_dump("Conexion a la bd exitosa");
// die();