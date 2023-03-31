<?php 
require_once("db_conexion.php");

function getVotantes(){
    global $conn;
    $sql = "SELECT * FROM votantes";
    $result = mysqli_query($conn, $sql);
    $votantes = mysqli_fetch_all($result);
    print_r($votantes);
}

function getVotante($id){
    global $conn;
    $sql = "SELECT * FROM votantes WHERE id_votante = $id";
    $result = mysqli_query($conn, $sql);
    $votante = mysqli_fetch_assoc($result);
    print_r($votante);
}

function insertarVotante($nombre, $alias, $rut, $email, $id_region, $id_comuna) {
    global $conn;
    $sql = "INSERT INTO votantes (nombre_votante, alias, rut_votante, email_votante, id_region_votante, id_comuna_votante) VALUES ('$nombre', '$alias', '$rut', '$email', $id_region, $id_comuna)";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo mysqli_affected_rows($conn) . " registro insertado: " . $nombre;
    } else {
        echo "Error al insertar el registro: " . mysqli_error($conn);
    }
}

function updateVotante($id, $nombre, $alias, $rut, $email, $id_region, $id_comuna){
    global $conn;
    $sql = "UPDATE votantes SET nombre_votante = '$nombre', alias = '$alias', rut_votante = '$rut', email_votante = '$email', id_region_votante = $id_region, id_comuna_votante = $id_comuna WHERE id_votante = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Votante actualizado";
    } else {
        echo "Error al actualizar votante";
    }
}

function deleteVotante($id){
    global $conn;
    $sql = "DELETE FROM votantes WHERE id_votante = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Votante eliminado";
    } else {
        echo "Error al eliminar votante";
    }
}

deleteVotante(1);

?>
