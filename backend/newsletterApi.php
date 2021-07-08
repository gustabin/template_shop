<?php
require_once('../tools/mypathdb.php');
require_once('../tools/sed.php');
header('Access-Control-Allow-Origin: *'); // cualquier origen

$option = $_GET['option'];

if ($option == "incluir") {
    $clave = $_GET['id'];
    $email = $_POST['subscribeEmail'];

    $claveDesencriptada = SED::decryption($clave);
    $clave = $claveDesencriptada;

    $sql = "SELECT * FROM empresa WHERE id = $clave";

    //Validar con preg_match
    $validaemail = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST['subscribeEmail']);

    if ($validaemail == 0) {
        $data = array("error" => '3');
        die(json_encode($data));
    }

    if (empty($email) or empty($clave)) {
        $data = array("error" => '2');
        die(json_encode($data));
    }

    $sql = "INSERT INTO `newsletter` (`id`, `email`, `idEmpresa`) VALUES (NULL, '$email', '$clave')";

    if (mysqli_query($conn, $sql)) {
        mysqli_close($conn);
        $data = array("exito" => '1');
        die(json_encode($data));
    } else {
        mysqli_close($conn);
        $data = array("error" => '1');
        die(json_encode($data));
    }
}
