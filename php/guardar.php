<?php


$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST["candidato"];
$como_se_entero = $_POST["como_se_entero"];
// $checkbox = $_POST['checkbox'];

$respose = array(
    'nombre' => $nombre,
    'alias' => $alias,
    'rut' => $rut,
    'email' => $email,
    'region' => $region,
    'comuna' => $comuna,
    'candidato' => $candidato,
    'como_se_entero' => $como_se_entero,
);

echo json_encode($respose);



?>