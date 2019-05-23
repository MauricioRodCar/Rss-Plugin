<!doctype html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap3-typeahead.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
		<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>

    <title>Rss consumer</title>

</head>
<body>
	<div class="sideBar">
		<div class="header">
			<ul class="nav flex-column nav nav-pills nav-stacked">
				<li class="active"><a>Menu</a>
					<ul>
						<li><a href="agregar.php">Agregar XML</a></li>
						<li><a href="excel.php">Excel</a></li>
					</ul>
				</li>
				<li class="active active2"><a>Ordenar</a>
					<ul>
						<li><a id="sortFecha">Fecha</a></li>
						<li><a id="sortTitulo">Titulo</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<br>


		<div class="header" id="fechas">
		<a class="list-group-item active">Filtrar por fecha</a>
		<br>
			<ul class="nav flex-column nav nav-pills nav-stacked">
				<li class="active fecha"><a>2019</a>
					<ul>
						<li><a class="mes" value="2019-01">Enero</a></li>
						<li><a class="mes" value="2019-02">Febrero</a></li>
						<li><a class="mes" value="2019-03">Marzo</a></li>
						<li><a class="mes" value="2019-04">Abril</a></li>
						<li><a class="mes" value="2019-05">Mayo</a></li>
						<li><a class="mes" value="2019-06">Junio</a></li>
						<li><a class="mes" value="2019-07">Julio</a></li>
						<li><a class="mes" value="2019-08">Agosto</a></li>
						<li><a class="mes" value="2019-09">Septiembre</a></li>
						<li><a class="mes" value="2019-10">Octubre</a></li>
						<li><a class="mes" value="2019-11">Noviembre</a></li>
						<li><a class="mes" value="2019-12">Diciembre</a></li>
					</ul>
				</li>
				<li class="active active2 fecha"><a>2018</a>
					<ul>
						<li><a class="mes" value="2018-01">Enero</a></li>
						<li><a class="mes" value="2018-02">Febrero</a></li>
						<li><a class="mes" value="2018-03">Marzo</a></li>
						<li><a class="mes" value="2018-04">Abril</a></li>
						<li><a class="mes" value="2018-05">Mayo</a></li>
						<li><a class="mes" value="2018-06">Junio</a></li>
						<li><a class="mes" value="2018-07">Julio</a></li>
						<li><a class="mes" value="2018-08">Agosto</a></li>
						<li><a class="mes" value="2018-09">Septiembre</a></li>
						<li><a class="mes" value="2018-10">Octubre</a></li>
						<li><a class="mes" value="2018-11">Noviembre</a></li>
						<li><a class="mes" value="2018-12">Diciembre</a></li>
					</ul>
				</li>
				<li class="active active2 fecha"><a>2017</a>
					<ul>
						<li><a class="mes" value="2017-01">Enero</a></li>
						<li><a class="mes" value="2017-02">Febrero</a></li>
						<li><a class="mes" value="2017-03">Marzo</a></li>
						<li><a class="mes" value="2017-04">Abril</a></li>
						<li><a class="mes" value="2017-05">Mayo</a></li>
						<li><a class="mes" value="2017-06">Junio</a></li>
						<li><a class="mes" value="2017-07">Julio</a></li>
						<li><a class="mes" value="2017-08">Agosto</a></li>
						<li><a class="mes" value="2017-09">Septiembre</a></li>
						<li><a class="mes" value="2017-10">Octubre</a></li>
						<li><a class="mes" value="2017-11">Noviembre</a></li>
						<li><a class="mes" value="2017-12">Diciembre</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div class="jumbotron" id="margen">
	<form action="buscar.php" method="post">
		<p>Introduzca su búsqueda:
			<input type="text" name="palabra" id="busqueda">
		</p>
		<h2 id="nombre"></h2>
		<img src="" id="avatar">
		<input class="btn btn-success" type="submit" value="Buscar">
	</form>
	</div>

	<div class="jumbotron">
		<h2>Noticias recientes</h2>
	</div>
	<div id="noticias">

	</div>





	<script>

	window.onload = function() {

	$('#noticias').html('<?php imprimir('ORDER BY Fecha desc')?>');
	$('#sortTitulo').on('click', function(){
	document.getElementById('noticias').innerHTML = '<?php imprimir("ORDER BY Titulo desc") ?>';
	});
	$('#sortFecha').on('click', function(){
	document.getElementById('noticias').innerHTML = '<?php imprimir("ORDER BY Fecha desc") ?>';
	});


	$('.mes').on('click', function(e){

		alert($(event.target).text());

	});

	$(document).ready(function () {
		var items = <?php autoCom(); ?>;
		$("#busqueda").autocomplete({
			source: items,
		});
	});

	}


</script>
</body>
<?php
function imprimir($parametros){
	include("configDB.php");
	$result = mysqli_query($conexion, "SELECT * FROM entradas");
	$array = array();
	if($result){
		while ($row = mysqli_fetch_array($result)) {
			$titulo = $row['Titulo'];
			array_push($array, $titulo);
		}
	}

	$consulta = 'SELECT * FROM entradas '.$parametros;
    $respuesta = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");
    $i=0;

	while ($columna = mysqli_fetch_array( $respuesta ) and $i<10)
    {
        echo '<div class="jumbotron noticia"><h3>'.$columna['Titulo'] . '</h3><hr>' .
		$columna['Descripcion'] . '<br><br>'.$columna['Fecha'].
		'</div><br/><br/>';
        $i++;
    }

}

function autoCom(){
	include("configDB.php");
	$result = mysqli_query($conexion, "SELECT * FROM entradas");
	$array = array();
	if($result){
		while ($row = mysqli_fetch_array($result)) {
			$titulo = $row['Titulo'];
			array_push($array, $titulo);
		}
	}

	echo json_encode($array);
}
?>
