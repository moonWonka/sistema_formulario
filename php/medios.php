<?php 

require_once("db_conexion.php");

function getMedios(){
    global $conn;
    $sql = "SELECT * FROM medios";
    $result = mysqli_query($conn, $sql);
    $medios = mysqli_fetch_all($result);
    print_r($medios);
}

function mostrarIdMedio($nombre){
    global $conn;
    $sql = "SELECT id_medio FROM medios WHERE nombre_medio = '$nombre'";
    $result = mysqli_query($conn, $sql);
    $id = mysqli_fetch_row($result);
    return $id[0];
}

function getMedio($id){
    global $conn;
    $sql = "SELECT * FROM medios WHERE id_medio = $id";
    $result = mysqli_query($conn, $sql);
    $medio = mysqli_fetch_assoc($result);
    print_r($medio);
}

function insertarMedio($medio) {
    global $conn;
    $sql = "INSERT INTO medios (nombre_medio) VALUES ('$medio')";
    echo $sql;
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        echo mysqli_affected_rows($conn) . " registro insertado: " . $medio;
    } else {
        echo "Error al insertar el registro: " . mysqli_error($conn);
    }
}

function updateMedio($id, $nombre){
    global $conn;
    $sql = "UPDATE medios SET nombre_medio = '$nombre' WHERE id_medio = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Medio actualizado";
    } else {
        echo "Error al actualizar medio";
    }
}

function deleteMedio($id){
    global $conn;
    $sql = "DELETE FROM medios WHERE id_medio = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Medio eliminado";
    } else {
        echo "Error al eliminar medio";
    }
}
?>