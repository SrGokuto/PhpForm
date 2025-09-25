<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultorio CBA</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <div class="pacientes">
        <?php
            require_once "config.php";
            $sql = "SELECT * FROM pacientes";
            $result = $conn->query($sql);
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                        echo '<div class="paciente">';
                        echo "<p>Nombre del paciente: $row[nombre] $row[apellido] </p>";
                        echo "<p>Direccion del paciente: $row[direccion] </p>";
                        echo "<p>Telefono del paciente: $row[telefono] </p>";
                        echo "<p>Documento del paciente: $row[documento] </p>";
                        echo '</div>';
                    }
                }
        ?>
    </div>
</body>

</html>