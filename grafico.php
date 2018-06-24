<?php 

include'autoload.php';

$empleado = new Empleado();

$grafico  =  "";

foreach ($empleado->grafico() as $key => $value) {
	
    $grafico .=  "{name:'".$value['sucursal']."',y: ".$value['cant']."},";

}

$grafico  = substr($grafico, 0,-1);


 ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Gráfico</title>
<!-- Bootstrap 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- HigchCharts -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


</head>
<body>

<div class="container-fluid">

<div class="row">
	
<div class="col-md-12">
	
<div id="container"></div>

</div>

</div>

</div>



<script>
//Script que genera el Gráfico
// Build the chart
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Cantidad de Empleado por Departamento -  2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Porcentaje',
        colorByPoint: true,
        data: [

        //data que genera el gráfico
       /*
		{
		name: 'Internet Explorer',
		y: 11.84
		}, 
		*/

		<?=  $grafico; ?>


        ]
    }]
});


</script>	
</body>
</html>