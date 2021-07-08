<?php
require_once('../tools/mypathdb.php');
require_once('../tools/sed.php');
header('Access-Control-Allow-Origin: *'); // cualquier origen

$option = $_GET['option'];

if ($option == "consultar") {
    $clave = $_GET['id'];

    $claveDesencriptada = SED::decryption($clave);
    $clave = $claveDesencriptada;

    $sql = "SELECT count(*) total FROM contactos WHERE idEmpresa = $clave";

    $resultado = mysqli_query($conn, $sql) or die(json_encode(array("error" => '1')));
    $fila = mysqli_fetch_assoc($resultado);

    $cantidadMensajes = $fila['total'];

    if (isset($cantidadMensajes)) {
        $data = array(
            "exito" => '1',
            "cantidadMensajes" => $cantidadMensajes
        );
        mysqli_close($conn);
        die(json_encode($data));
    }
}
