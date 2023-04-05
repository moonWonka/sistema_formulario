<?php
require_once("votantes.php");
require_once("votos.php");
require_once("votantes_medios.php");

if (isset($_POST['nombre']) && isset($_POST['alias']) && isset($_POST['rut']) && isset($_POST['email']) && isset($_POST['region']) && isset($_POST['comuna']) && isset($_POST['candidato']) && isset($_POST['como_se_entero'])) {

    $nombre = $_POST['nombre'];
    $alias = $_POST['alias'];
    $rut = $_POST['rut'];
    $rut_sin_puntos = str_replace(array(".", "-"), "",$rut);
    $email = $_POST['email'];
    $region = $_POST['region'];
    $comuna = $_POST['comuna'];
    $candidato = $_POST["candidato"];
    $como_se_entero = $_POST["como_se_entero"];
    
    // insertar votante
    $id_votante = insertarVotante($nombre, $alias, $rut_sin_puntos, $email, $region, $comuna);

    // verificar si se obtuvo un id válido
    if ($id_votante != null) {

        // insertar votacion
        insertarVoto($id_votante, $candidato);

        //insertar como se entero

        foreach ($como_se_entero as $medio) {
            insertarVotanteMedio($id_votante, $medio);
        }

        $response = array(
            'nombre' => $nombre,
            'alias' => $alias,
            'rut' => $rut,
            'email' => $email,
            'region' => $region,
            'comuna' => $comuna,
            'candidato' => $candidato,
            'como_se_entero' => $como_se_entero,
            "mensaje" => "Votante insertado correctamente"
        );

        echo json_encode($response, true);
    } else {
        $response = array(
            'error' => true,
            "mensaje" => "Error al insertar votante"
        );
        echo json_encode($response, true);
    }
} else {
    $response = array(
        'error' => true,
        "mensaje" => "Error al insertar votante - parametros"
    );
    echo json_encode($response, true);
}
?>