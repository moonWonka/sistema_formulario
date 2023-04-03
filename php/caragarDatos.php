<?php

include('regiones.php');
include('comunas.php');
include('candidatos.php');

// Obtener el contenido del archivo regiones.json    
$contenido = file_get_contents('regiones.json');

// Convertir el contenido en un array de PHP
$regiones = json_decode($contenido, true);


// Función agregarRegiones()
function agregarRegiones($regiones) {
    foreach($regiones as $region){
        $nombreRegion = $region['nombre'];
        insertarRegion($nombreRegion);
    }
}

function agregarComunas($regiones) {
    foreach($regiones as $region) {
        //cada region tiene un array de comunas
        $idRegion = mostrarIdRegion($region['nombre']);
        foreach($region['comunas'] as $comuna) {
            //insertar comuna
            insertarComuna($comuna, $idRegion);
        }
    }
}

function agregarCandidatos () {

    // Obtener el contenido del archivo candidatos.json  
    $contenido = file_get_contents('candidatos.json');
    
    // Convertir el contenido en un array de PHP
    $candidatos = json_decode($contenido, true);

    // Insertar los datos de los candidatos en la base de datos
    foreach($candidatos as $candidato) {
        $nombre = $candidato['nombre'];
        $partido = $candidato['partido'];
        $region = $candidato['region'];
        $idRegion = mostrarIdRegion($region);
        $comuna = $candidato['comuna'];
        $idComuna = mostrarIdComuna($comuna);

        insertarCandidato($nombre, $partido, $idRegion, $idComuna);
    }
}

agregarRegiones($regiones);
agregarComunas($regiones);
agregarCandidatos();


?>