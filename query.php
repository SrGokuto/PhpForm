<?php

    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $direccion = $_POST["direccion"];
    $telefono = $_POST["telefono"];
    $documento = (int)$_POST["documento"];

    require_once("config.php");
    $sql = "INSERT INTO `pacientes`(`nombre`, `apellido`, `direccion`, `telefono`, `documento`) VALUES ('$nombre','$apellido','$direccion','$telefono','$documento')";

    $resultado = mysqli_query($conn, $sql);
    if ($resultado === TRUE) {
        echo "Registro exitoso";
        echo "Desea ver los pacientes registrados?";
        echo '<a href="./table.php"><button>Ver pacientes registrados</button></a>';
        echo '<a href="./index.php"><button>Volver al formulario de registro</button></a>';
        }
    else {
        echo "Hubo un error al realizar el registro";
    }
?>