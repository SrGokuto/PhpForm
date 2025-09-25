<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultorio CBA</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <form action="query.php" method="post">
        <h1>Registro de pacientes</h1>
        <label for="nombre">Nombre del paciente:</label>
        <input name="nombre" id="nombre" type="text">
        
        <label for="apellido">Apellido del paciente:</label>
        <input name="apellido" id="apellido" type="text">
        
        <label for="direccion">Dirección del paciente:</label>
        <input name="direccion" id="direccion" type="text">
        
        <label for="telefono">Telefono del paciente:</label>
        <input name="telefono" id="telefono" type="text">
        
        <label for="documento">Documento del paciente:</label>
        <input name="documento" id="documento" type="number">
        
        <button type="submit">Registrar Paciente</button>
    </form>
    <div class="opciones">
        <a href="./table.php"><button>Ver pacientes registrados</button></a>
    </div>

</body>

</html>