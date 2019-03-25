<?php
session_start();
include('conexion.php');
$_SESSION['url'] = $_POST['urlXml'];
$url = $_SESSION['url'];
echo '<p><a href="/Rss-Plugin/index.html">Volver</a></p>';
$valor=$url;

$query = "SELECT * from sitios where rss ='$valor'";
$result=mysqli_query($cn, $query);

if(mysqli_num_rows($result)<1)

    {
        $_REGISTRAR_SITIO = "INSERT INTO sitios (rss) VALUES ('$url')";
        mysqli_query($cn, $_REGISTRAR_SITIO);
        echo '<script> alert("Guardado exitosamente") </script>';

    }
        else{

        echo '<script> alert("El sitio ya se encuentra registrado") </script>';

    }
    include('index.php');

?>
