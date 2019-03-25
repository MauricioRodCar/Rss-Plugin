<?php
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
?>
