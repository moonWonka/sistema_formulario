<?php 

require_once("db_conexion.php");

function getCandidatos($idComuna){
    global $conn;
    $sql = "SELECT * FROM candidatos WHERE id_comuna_candidato = $idComuna";
    $result = mysqli_query($conn, $sql);
    $candidatos = mysqli_fetch_all($result);
    return $candidatos;
}

function mostrarIdRegionCandidato($id_candidato){
    global $conn;
    $sql = "SELECT id_region_candidato FROM candidatos WHERE id_candidato = $id_candidato";
    $result = mysqli_query($conn, $sql);
    $id = mysqli_fetch_row($result);
    return $id[0];
}

function mostrarIdComunaCandidato($id_candidato){
    global $conn;
    $sql = "SELECT id_comuna_candidato FROM candidatos WHERE id_candidato = $id_candidato";
    $result = mysqli_query($conn, $sql);
    $id = mysqli_fetch_row($result);
    return $id[0];
}

function getCandidato($id){
    global $conn;
    $sql = "SELECT * FROM candidatos WHERE id_candidato = $id";
    $result = mysqli_query($conn, $sql);
    $candidato = mysqli_fetch_assoc($result);
    print_r($candidato);
}

function insertarCandidato($nombre, $partido, $id_region, $id_comuna) {
    global $conn;
    $sql = "INSERT INTO candidatos (nombre_candidato, partido_candidato, id_region_candidato, id_comuna_candidato) VALUES ('$nombre', '$partido', $id_region, $id_comuna)";
    echo $sql;
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        echo mysqli_affected_rows($conn) . " registro insertado: " . $nombre;
    } else {
        echo "Error al insertar el registro: " . mysqli_error($conn);
    }
}

function updateCandidato($id, $nombre, $partido, $id_region, $id_comuna){
    global $conn;
    $sql = "UPDATE candidatos SET nombre_candidato = '$nombre', partido_candidato = '$partido', id_region_candidato = $id_region, id_comuna_candidato = $id_comuna WHERE id_candidato = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Candidato actualizado";
    } else {
        echo "Error al actualizar candidato";
    }
}

function deleteCandidato($id){
    global $conn;
    $sql = "DELETE FROM candidatos WHERE id_candidato = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Candidato eliminado";
    } else {
        echo "Error al eliminar candidato";
    }
}

?>
