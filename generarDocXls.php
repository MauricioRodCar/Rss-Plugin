<?php
/**
 * Created by PhpStorm.
 * User: VíctorHugoMenéndezDo
 * Date: 22/08/2018
 * Time: 09:44 PM
 */
 @session_start();
 require_once 'autoloader.php';
 include "conexion.php";
 include "update.php";
 $sort = "SELECT * FROM entradas ORDER BY Fecha DESC";
 $noticiasNuevas = mysqli_query($cn, $sort);

 include "conexion.php";
 $tabla='<html><body>';
 $tabla.='<table>';
 $tabla.='<tr><td>Título</td><td>Autor</td><td>Fecha</td></tr>';
 $sort = "SELECT * FROM entradas ORDER BY Fecha DESC";
 $noticiasNuevas = mysqli_query($cn, $sort);
 for ($i=0; $i<10 ; $i++) {
   $noticia = $noticiasNuevas->fetch_assoc();
   $tabla.='<tr><td>'.$noticia['Autocomplete'].'</td><td>'.$noticia['Autor'].'</td><td>'.$noticia['Fecha'].'</td></tr>';
 }

 $tabla.='</table>';
 $tabla.='</body></html>';

 header('Content-Type: application/vnd.ms-excel');
 header('Content-Disposition: attachment; filename="tabla.xls"');
 header('Content-Transfer-Encoding: binary');
 print $tabla;
?>
