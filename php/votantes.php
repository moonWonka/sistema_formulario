<?php 
require_once("db_conexion.php");

function getVotantes(){
    global $conn;
    $sql = "SELECT * FROM votantes";
    $result = mysqli_query($conn, $sql);
    $votantes = mysqli_fetch_all($result);
    print_r($votantes);
}

function getIdVotante($rut){
    global $conn;
    $sql = "SELECT id_votante FROM votantes WHERE rut_votante = '$rut'";

    $result = mysqli_query($conn, $sql);
    $votante = mysqli_fetch_assoc($result);

    return($votante["id_votante"]);
    }

function getNombreVotante($rut){
    global $conn;
    $sql = "SELECT nombre_votante FROM votantes WHERE rut_votante = '$rut'";
    $result = mysqli_query($conn, $sql);
    $votante = mysqli_fetch_assoc($result);
    if ($votante == null) {
        return "";
    }
    return $votante["nombre_votante"];
}


function insertarVotante($nombre, $alias, $rut, $email, $id_region, $id_comuna) {
    global $conn;
    $sql = "INSERT INTO votantes (nombre_votante, alias, rut_votante, email_votante, id_region_votante, id_comuna_votante) VALUES ('$nombre', '$alias', '$rut', '$email', $id_region, $id_comuna)";
    $conn -> query($sql);
    return ($conn -> insert_id);
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


// echo (getNombreVotante("18989009k"));

// $id_incertado = insertarVotante("wonka prueba", "pedasito", "18.989.009-k", "w.lunah@protonmail.com", "419", "2747");
// print($id_incertado);
// if (getNombreVotante("123456789") == ""){
//     echo "No existe";
// } else {
//     echo "Existe";
// }

?>



