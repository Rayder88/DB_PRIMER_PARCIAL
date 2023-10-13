<?php
require_once "conexion.php";
 $correo = $_POST ["email"];
 $password = $_POST ["password"];

 if (!isset ($correo)|| empty($correo)) {
    echo "Debes  rellear el campo correo";
 }

 if (!isset ($password)|| empty ($password)) {
    echo "Debes rellenar el campo contraseña";
 }

 
 $consulta = "SELECT * from alumnos where email = '$correo' and password = '$password'";
 $resultado = mysqli_query ($conex, $consulta);
 $registros= mysqli_num_rows ($resultado);
 
 if ($registros > 0){
    echo "bienvenido" . $correo;
    echo "usuario incorrecto";

 }
 

$servername = "localhost";
$username = "root";
$password = "123456";
$database = "clases";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

$sql = "SELECT `Ciudad`, `Estado` FROM alumnos";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h2>Resultados de la consulta:</h2>";
    echo "<table border='1'>";
    echo "<tr><th>Ciudad</th><th>Estado</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["Ciudad"] . "</td><td>" . $row["Estado"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron resultados en la tabla.";
}


$conn->close();



?>

