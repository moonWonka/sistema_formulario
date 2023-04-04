<?php 

require_once("votantes.php");

// Obtener el rut del votante desde el parámetro de la solicitud GET

if (isset($_GET["rut"])) {

    $rut = $_GET["rut"];

    // Realizar la consulta a la base de datos para obtener el nombre del votante

    $response = array(
        'nombre' => getNombreVotante($rut)
    );

    // Devolver los datos del votante en formato JSON
    echo json_encode($response);
} else {
    // Si no se ha recibido el parámetro rut, devolver un error
    $response = array(
        'error' => 'error en los datos para obtener el rut'
);
    echo json_encode($response);
}


?>
