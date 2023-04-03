<?php
require_once("comunas.php");

if (isset($_GET['id_region'])) {
  // Obtener el ID de la región desde el parámetro de la solicitud GET
  $idRegion = $_GET['id_region'];

  // Realizar la consulta a la base de datos para obtener las comunas de la región
  $comunas = getComunas($idRegion);

  // Establecer el tipo de contenido a JSON
  header('Content-Type: application/json');

  // Devolver los datos de las comunas en formato JSON
  echo json_encode($comunas);
} else {
  // Si el parámetro no está definido, devolver un error
  http_response_code(400);
  echo json_encode(array('error' => 'El parámetro id_region no está definido.'));
}

?>