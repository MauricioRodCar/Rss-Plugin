<?php
  require_once 'autoloader.php';
  session_start();
  $search = $_POST['articulo'];
  include('conexion.php');
  echo '<p><a href="/Rss-Plugin/index.php">Volver</a></p>';

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
                $autor = $item->get_author()->get_name();
                $date = $item->get_date('Y-m-d H:i:s');
                $descripcion = $item->get_description();

                $_REGISTRAR_NOTICIA = "INSERT INTO entradas (Titulo, Autor, Fecha, Descripcion) VALUES ('$titulo', '$autor', '$date', '$descripcion')";
                mysqli_query($cn, $_REGISTRAR_NOTICIA);


              }
        }
      }

  //Busca coincidencias en Título o Descripcion

  $query = "SELECT * FROM entradas WHERE (Titulo LIKE '%".$search."%' OR Descripcion LIKE '%".$search."%')";

  $busqueda = mysqli_query($cn, $query);

   while ($encontrado = $busqueda->fetch_assoc()){

    echo '<p>Titulo '. $encontrado['Titulo'].'</p>';
    echo '<p>Autor '. $encontrado['Autor'].'</p>';
    echo '<p>Descripcion '. $encontrado['Descripcion'].'</p>';
    echo '<p>Fecha '. $encontrado['Fecha'].'</p>';
    echo '<br>';
  }

?>
