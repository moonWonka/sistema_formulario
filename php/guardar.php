<?php

require_once("db_conexion.php");
include("votantes.php");
include("votos.php");

// Extraer los valores de los datos del formulario


$nombre = "muffin coxina";
$alias = "hdgfhjfgj";
$rut = "12345678-9";
$email = "hjgjh";
$region = 418;
$comuna = 2745;
// $candidato = $_POST["candidato"];

// Insertar los datos votantes en la base de datos

if (insertarVotante($nombre, $alias, $rut, $email, $region, $comuna) === true) {
    // Enviar una respuesta al cliente
    $response = array("status" => "success", "message" => "Los datos se han guardado correctamente.");
    echo json_encode($response);
    } else {
    // Enviar una respuesta al cliente
    $response = array("status" => "error", "message" => "Se ha producido un error al guardar los datos en la base de datos.");
    echo json_encode($response);
}

$conn->close();
?>
