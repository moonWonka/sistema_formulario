<?php
require_once("db_conexion.php");

function getComunas() {
    global $conn;
    $sql = "SELECT * FROM comunas";
    $result = mysqli_query($conn, $sql);
    $comunas = mysqli_fetch_all($result);
    print_r($comunas);
}

function getComuna($id) {
    global $conn;
    $sql = "SELECT * FROM comunas WHERE id _comuna = $id";
    $result = mysqli_query($conn, $sql);
    $comuna = mysqli_fetch_assoc($result);
    print_r($comuna);
}

function insertarComuna($nombre, $id_region) {
    global $conn;
    $sql = "INSERT INTO comunas (nombre_comuna, id_region_comuna) VALUES ('$nombre', $id_region)";
    echo $sql;
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo mysqli_affected_rows($conn) . " registro insertado: " . $nombre;
    } else {
        echo "Error al insertar el registro: " . mysqli_error($conn);
    }
}

function updateComuna($id, $nombre, $id_region) {
    global $conn;
    $sql = "UPDATE comunas SET nombre_comuna = '$nombre', id_region = $id_region WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo "Comuna actualizada";
    } else {
        echo "Error al actualizar comuna";
    }
}

function deleteComuna($id) {
    global $conn;
    $sql = "DELETE FROM comunas WHERE id_comuna = $id";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo "Comuna eliminada";
    } else {
        echo "Error al eliminar comuna";
    }
}

function mostrarComunasPorRegion($nombre) {
    global $conn;
    $sql = "SELECT c.nombre_comuna FROM comunas c INNER JOIN regiones r ON c.id_region = r.id_region WHERE r.nombre_region = '$nombre'";
    $result = mysqli_query($conn, $sql);
    $comunas = mysqli_fetch_all($result);
    print_r($comunas);
}


?>