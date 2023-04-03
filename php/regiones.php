<?php 

require_once("db_conexion.php");

function getRegiones(){
    global $conn;
    $sql = "SELECT * FROM regiones";
    $result = mysqli_query($conn, $sql);
    $regiones = mysqli_fetch_all($result);
    return $regiones;
}

function mostrarIdRegion($nombre){
    global $conn;
    $sql = "SELECT id_region FROM regiones WHERE nombre_region = '$nombre'";
    print($sql);
    $result = mysqli_query($conn, $sql);
    $id = mysqli_fetch_row($result);
    return $id[0];
}
function getRegion($id){
    global $conn;
    $sql = "SELECT * FROM regiones WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    $region = mysqli_fetch_assoc($result);
    print_r($region);
}

function insertarRegion($region) {
    global $conn;
    $sql = "INSERT INTO regiones (nombre_region) VALUES ('$region')";
    echo $sql;
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        echo mysqli_affected_rows($conn) . " registro insertado: " . $region;
    } else {
        echo "Error al insertar el registro: " . mysqli_error($conn);
    }
}

function updateRegion($id, $nombre){
    global $conn;
    $sql = "UPDATE regiones SET nombre_region = '$nombre' WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Region actualizada";
    } else {
        echo "Error al actualizar region";
    }
}

function deleteRegion($id){
    global $conn;
    $sql = "DELETE FROM regiones WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Region eliminada";
    } else {
        echo "Error al eliminar region";
    }
}


?>