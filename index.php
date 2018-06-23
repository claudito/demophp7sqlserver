<?php include'autoload.php'; ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Lista de Empleados</title>

<!-- Bootstrap 3 -->
<!-- Css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>


<!-- Datatables -->

<!-- Css -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">

<!-- JS -->
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>


</head>
<body>

<div class="container-fluid">
	
<div class="row">
	
<div class="col-md-12">
	
<div class="table-responsive">
	
<table id="consulta"  class="table table-condensed">
	
<thead>
<tr>
<th>Nombres</th>
<th>Cargo</th>
<th>Sucursal</th>
<th>Fecha de Ingreso</th>
<th>Edad</th>
<th>Salario</th>
</tr>
</thead>

<tbody>
<?php 
$empleado = new Empleado();
foreach ($empleado->lista() as $key => $value): ?>
<tr>
<td><?= $value['nombres']; ?></td>
<td><?= $value['cargo']; ?></td>
<td><?= $value['sucursal']; ?></td>
<td><?= $value['fecha_inicio']; ?></td>
<td><?= $value['edad']; ?></td>
<td><?= $value['salario']; ?></td>
</tr>
<?php endforeach ?>
</tbody>


</table>



</div>



</div>


</div>



</div>	



<script>
$(document).ready(function() {
    $('#consulta').DataTable();
} );
</script>
</body>
</html>