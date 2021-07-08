<?php
require_once('../tools/mypathdb.php');
require_once('../tools/sed.php');
header('Access-Control-Allow-Origin: *'); // cualquier origen

$option = $_GET['option'];

if ($option == "consultar") {
    $clave = $_GET['id'];
    $idProducto = $_GET['idProducto'];

    $claveDesencriptada = SED::decryption($clave);
    $clave = $claveDesencriptada;

    $sql = "SELECT count(*) total, avg(calificacion) avgCalificacion FROM opiniones WHERE idEmpresa = $clave AND idProducto =$idProducto";

    $resultado = mysqli_query($conn, $sql) or die(json_encode(array("error" => '1')));
    $fila = mysqli_fetch_assoc($resultado);

    $cantidadOpiniones = $fila['total'];
    $avgCalificacion = $fila['avgCalificacion'];
    $avgCalificacion = strval(round($avgCalificacion, 0, PHP_ROUND_HALF_UP)); //REDONDEO HACIA ARRIBA

    if (isset($cantidadOpiniones)) {
        $data = array(
            "exito" => '1',
            "cantidadOpiniones" => $cantidadOpiniones,
            "avgCalificacion" => $avgCalificacion
        );
        mysqli_close($conn);
        die(json_encode($data));
    }
}
