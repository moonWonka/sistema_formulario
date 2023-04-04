<?php 

require_once("db_conexion.php");

function getVotos(){
    global $conn;
    $sql = "SELECT * FROM votos";
    $result = mysqli_query($conn, $sql);
    $votos = mysqli_fetch_all($result);
    print_r($votos);
}

function getVoto($id){
    global $conn;
    $sql = "SELECT * FROM votos WHERE id_voto = $id";
    $result = mysqli_query($conn, $sql);
    $voto = mysqli_fetch_assoc($result);
    print_r($voto);
}

function insertarVoto($id_votante, $id_candidato) {
    global $conn;
    $sql = "INSERT INTO votos (id_votante_voto, id_candidato_voto) VALUES ($id_votante, $id_candidato)";
    $conn -> query($sql);
}

function updateVoto($id, $id_votante, $id_candidato){
    global $conn;
    $sql = "UPDATE votos SET id_votante_voto = $id_votante, id_candidato_voto = $id_candidato WHERE id_voto = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Voto actualizado";
    } else {
        echo "Error al actualizar voto";
    }
}

function deleteVoto($id){
    global $conn;
    $sql = "DELETE FROM votos WHERE id_voto = $id";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo "Voto eliminado";
    } else {
        echo "Error al eliminar voto";
    }
}

?>
