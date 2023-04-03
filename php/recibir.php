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
    


    // // insertar votante
    insertarVotante($nombre, $alias, $rut_sin_puntos, $email, $region, $comuna);

    // // obtener id del votante
    $id_votante = getIdVotante($rut);

    // // // insertar votacion
    // insertarVoto($id_votante, $candidato);

    // //insertar como se entero
    // insertarVotanteMedio($id_votante, $como_se_entero);



    $respose = array(
        'nombre' => $nombre,
        'alias' => $alias,
        'rut' => $rut,
        'email' => $email,
        'region' => $region,
        'comuna' => $comuna,
        'candidato' => $candidato,
        'como_se_entero' => $como_se_entero,
    );

//    echo json_encode($respose,true);
echo json_encode('yes',TRUE);
} else {
    echo json_encode('yes',200);
    // $response = array(
    //     'error' => 'error en los datos'
    // );
    // echo json_encode($response);
    echo "no";
}

?>