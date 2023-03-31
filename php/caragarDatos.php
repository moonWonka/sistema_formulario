<?php

include('regiones.php');
include('comunas.php');

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
        $idRegion = mostrarIdRegion($region['nombre']);
        foreach($region['comunas'] as $comuna) {
            insertarComuna($comuna, $idRegion);
        }
    }
}

agregarRegiones($regiones);
agregarComunas($regiones);




?>