<?php 

require_once("candidatos.php");

if (isset($_GET['id_comuna'])) {
  // Obtener el ID de la región desde el parámetro de la solicitud GET
  $idComuna = $_GET['id_comuna'];

  // Realizar la consulta a la base de datos para obtener las comunas de la región
  $candidatos = getCandidatos($idComuna);

  // Establecer el tipo de contenido a JSON
  header('Content-Type: application/json');

  // Devolver los datos de las candidatos en formato JSON
  echo json_encode($candidatos);
} else {
  // Si el parámetro no está definido, devolver un error
  http_response_code(400);
  echo json_encode(array('error' => 'El parámetro id_region no está definido.'));
}


?>