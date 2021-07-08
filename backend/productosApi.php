<?php
require_once('../tools/mypathdb.php');
require_once('../tools/sed.php');
header('Access-Control-Allow-Origin: *'); // cualquier origen

$option = $_GET['option'];

if ($option == "consultar") {
    $clave = $_GET['id'];

    $claveDesencriptada = SED::decryption($clave);
    $clave = $claveDesencriptada;

    $sql = "SELECT * FROM productos WHERE idEmpresa = $clave";

    $resultado = mysqli_query($conn, $sql) or die(json_encode(array("error" => '1')));

    $data = array(); //creamos un array
    $i = 0; //guardamos en un array multidimensional todos los datos de la consulta

    while ($fila = mysqli_fetch_array($resultado)) {
        $data[$i] = $fila;
        $i++; // $i= $i + 1        
    }
    mysqli_close($conn);
    die(json_encode($data));
}
