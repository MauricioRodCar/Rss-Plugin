<?php
 include "conexion.php";

 if(isset($_POST['query'])){
   $respuesta = mysqli_real_escape_string($cn, $_POST['query']);
   $data = array();
   $sql = "SELECT * from entradas WHERE Autocomplete LIKE '%" . $respuesta . "%'";
   $res = $cn->query($sql);
   if ($res->num_rows > 0) {
       while ($row = $res->fetch_assoc()) {
           $data[] = $row["Autocomplete"];
       }
       echo json_encode($data);
   }
 }
 ?>
