<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sistema_votacion";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Check connection
    if (isset($conn->connect_error)) {
        die("conexion fallida: " . $conn->connect_error);
    }

?>