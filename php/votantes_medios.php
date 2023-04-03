<?php
require_once("db_conexion.php");

// Obtener todos los votantes y medios
function getVotantesMedios($id_medio) {
  global $conn;
  $sql = "SELECT * FROM votantes_medios WHERE id_medio = $id_medio";
  $result = mysqli_query($conn, $sql);
  $votantesMedios = mysqli_fetch_all($result, MYSQLI_ASSOC);
  return $votantesMedios;
}


// Insertar un nuevo votante y medio
function insertarVotanteMedio($id_votante, $id_medio) {
  global $conn;
  $sql = "INSERT INTO votantes_medios (id_votante, id_medio) VALUES ($id_votante, $id_medio)";
  $result = mysqli_query($conn, $sql);

  if ($result) {
    echo "Se ha insertado el votante y medio con éxito";
  } else {
    echo "Error al insertar el votante y medio: " . mysqli_error($conn);
  }
}

// Actualizar un votante y medio existente
function actualizarVotanteMedio($id_votante, $id_medio, $nuevo_id_votante, $nuevo_id_medio) {
  global $conn;
  $sql = "UPDATE votantes_medios SET id_votante = $nuevo_id_votante, id_medio = $nuevo_id_medio WHERE id_votante = $id_votante AND id_medio = $id_medio";
  $result = mysqli_query($conn, $sql);

  if ($result) {
    echo "Se ha actualizado el votante y medio con éxito";
  } else {
    echo "Error al actualizar el votante y medio: " . mysqli_error($conn);
  }
}

// Eliminar un votante y medio existente
function eliminarVotanteMedio($id_votante, $id_medio) {
  global $conn;
  $sql = "DELETE FROM votantes_medios WHERE id_votante = $id_votante AND id_medio = $id_medio";
  $result = mysqli_query($conn, $sql);

  if ($result) {
    echo "Se ha eliminado el votante y medio con éxito";
  } else {
    echo "Error al eliminar el votante y medio: " . mysqli_error($conn);
  }
}
?>
