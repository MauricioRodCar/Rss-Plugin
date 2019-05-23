function autoC(){
	alert("hola");
	$(document).ready(function () {
		var items = '<?php = json_encode($array) ?>';
		$("#busqueda").autocomplete({
			source: items,
		});
	});
}