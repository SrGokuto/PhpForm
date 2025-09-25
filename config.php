<?php
    $db_name = "consultorio_cba";
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_port = 3306;


    $conn = new mysqli($db_host, $db_user, $db_password, $db_name, $db_port);
    if ($conn->connect_error) {
        die("Error de conexión: ". $conn->connect_error);
        }
?>