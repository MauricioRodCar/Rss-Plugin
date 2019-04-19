<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap3-typeahead.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css"> 
    <title>Rss consumer</title>
</head>
<body>
<h1></h1>
<br/><br/>
<div align="center">
<form action="php/buscar.php" method="post" class="search" style="margin-left:10px;max-width:600px">
      <input type="text" name="articulo" id="articulo" autocomplete="off"
             placeholder="Buscar articulo"/>
      <button type="submit" value="Buscar"><i class="fa fa-search"></i></button>
    </form>
</div>
<script>
    $(document).ready(function () {
        $("#articulo").typeahead({
            source: function (query, resultado) {
                $.ajax({
                    url: "php/accion.php",
                    type: "POST",
                    dataType: "json",
                    data: {query: query},
                    success: function (data) {
                        resultado($.map(data, function (item) {
                            return item;
                        }));
                    }
                });
            }
        });
    });
</script>
</body>
</html>
<?php
@session_start();
require_once 'php/autoloader.php';
include "php/conexion.php";
//Actualiza la informacion

$query = "SELECT * from sitios";
$result=mysqli_query($cn, $query);

while($row = $result->fetch_assoc()){

      @$url = $row['rss'];
      $feed = new SimplePie();
      $feed->set_feed_url($url);
      $feed->init();

      $itemQty = $feed->get_item_quantity();
      for ($i = 0; $i < $itemQty; $i++) {

        $item = $feed->get_item($i);
        $valor=$item->get_description();
        $query = "SELECT * from entradas where Descripcion = '$valor'";
        $result=mysqli_query($cn, $query);

        if(@mysqli_num_rows($result)<1){

              $titulo =  '<a href=' . $item->get_link() . '>' . $item->get_title() . '</a>';
              $autocomplete = $item->get_title();
              $autor = $item->get_author()->get_name();
              $date = $item->get_date('Y-m-d H:i:s');
              $descripcion = $item->get_description();

              $_REGISTRAR_NOTICIA = "INSERT INTO entradas (Titulo, Autocomplete, Autor, Fecha, Descripcion) VALUES ('$titulo','$autocomplete', '$autor', '$date', '$descripcion')";
              mysqli_query($cn, $_REGISTRAR_NOTICIA);


            }
      }
    }

    //Recopila las ultimas 10 noticias
    ?>
    <div align="center">
      <h1> Noticias recientes </h1>
    </div>
    <br>
    <div align="center">
      <input type="button" value="Generar Excel" onclick="location.href='php/generarDocXls.php'">
    </div>
    <br>
    <br>
    <?php
    $sort = "SELECT * FROM entradas ORDER BY Fecha DESC";
    $noticiasNuevas = mysqli_query($cn, $sort);

    for ($i=0; $i < 10 ; $i++) {
      $noticia = $noticiasNuevas->fetch_assoc();
      echo '<div align="center">';
      echo '<p>Titulo '. $noticia['Titulo'];

      echo'<input type="checkbox" id="myCheck"  onclick="myFunction()">';
      ?>
      <p id="text" style="display:none">Checkbox is CHECKED!</p>

    <script>
    function myFunction() {
      var checkBox = document.getElementById("myCheck");
      var text = document.getElementById("text");
      if (checkBox.checked == true){
        text.style.display = "block";
      } else {
        text.style.display = "none";
      }
    }
    </script>
      <?php
      echo '<p>Autor '. $noticia['Autor'].'</p>';
      echo '<p>Descripcion '. $noticia['Descripcion'].'</p>';
      echo '<p>Fecha '. $noticia['Fecha'].'</p>';
      echo '</div>';
      echo '<br>';
      echo '<br>';
    }
 ?>
