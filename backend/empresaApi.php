<?php
require_once('../tools/mypathdb.php');
require_once('../tools/sed.php');
header('Access-Control-Allow-Origin: *'); // cualquier origen

$option = $_GET['option'];

if ($option == "consultar") {
    $clave = $_GET['id'];

    $claveDesencriptada = SED::decryption($clave);
    $clave = $claveDesencriptada;

    $sql = "SELECT * FROM empresa WHERE id = $clave";

    $resultado = mysqli_query($conn, $sql) or die(json_encode(array("error" => '1')));

    while ($data = mysqli_fetch_array($resultado)) {
        $id = $data['id'];
        $nombre = $data['nombre'];
        $telefono = $data['telefono'];
        $imagen = $data['imagen'];
        $titulo1 = $data['titulo1'];
        $subtitulo1 = $data['subtitulo1'];
        $descripcion1 = $data['descripcion1'];
        $imagen1 = $data['imagen1'];
        $titulo2 = $data['titulo2'];
        $subtitulo2 = $data['subtitulo2'];
        $descripcion2 = $data['descripcion2'];
        $imagen2 = $data['imagen2'];
        $titulo3 = $data['titulo3'];
        $subtitulo3 = $data['subtitulo3'];
        $descripcion3 = $data['descripcion3'];
        $imagen3 = $data['imagen3'];
        $ruta = $data['ruta'];
        $email = $data['email'];
        $facebook = $data['facebook'];
        $twitter = $data['twitter'];
        $instagram = $data['instagram'];
        $linkedin = $data['linkedin'];
        $direccion = $data['direccion'];
    }

    if (isset($nombre)) {
        $data = array(
            "exito" => '1',
            "id" => $id,
            "nombre" => $nombre,
            "telefono" => $telefono,
            "imagen" => $imagen,
            "ruta" => $ruta,
            "email" => $email,
            "facebook" => $facebook,
            "twitter" => $twitter,
            "instagram" => $instagram,
            "linkedin" => $linkedin,
            "titulo1" => $titulo1,
            "subtitulo1" => $subtitulo1,
            "descripcion1" => $descripcion1,
            "imagen1" => $imagen1,
            "titulo2" => $titulo2,
            "subtitulo2" => $subtitulo2,
            "descripcion2" => $descripcion2,
            "imagen2" => $imagen2,
            "titulo3" => $titulo3,
            "subtitulo3" => $subtitulo3,
            "descripcion3" => $descripcion3,
            "imagen3" => $imagen3,
            "direccion" => $direccion
        );
        mysqli_close($conn);
        die(json_encode($data));
    }
}
