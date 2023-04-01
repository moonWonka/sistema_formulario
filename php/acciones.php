<?php

require_once("regiones.php");

$regiones = getRegiones();

header('Content-Type: application/json');

echo json_encode($regiones);

?>
