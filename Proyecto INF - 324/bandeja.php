<?php
session_start();
include "conexion.inc.php";
include "header.php";

// include "conexion.inc.php";
///$_SESSION["ID_usuario"]=21;
$user= $_SESSION["user"];
// username

$sql="select * from flujoprocesoseguimiento where Usuario='$user'";
// $sql.="and HoraFin is null ";
$resultado=mysqli_query($con, $sql);
?>
<body background="fondo.jpg">        
	<div class="wrapper">
	
	<div class="container">
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <h1> Tabla de Procesos<h1>
                           <a href='index.php' class='btn btn-danger' style = 'color:white'>Salir</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            <center>
                                
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td class="table-header" >Flujo</td>
                                            <td class="table-header" >Proceso</td>
                                            <td class="table-header" >Fecha de Inicio</td>
                                            <td class="table-header" >Hora de Inicio</td>
                                            <td class="table-header" >Fecha Finalizada</td>
                                            <td class="table-header" >Hora Finalizada</td>
                                            <td class="table-header"  >Operacion</td>
                                        </tr>
                                        <?php 
                                        $pro = "";
                                            while ($fila=mysqli_fetch_array($resultado))
                                            {
                                                if($fila["Proceso"]=='P2')
                                                    $pro='Inscripcion';
                                                if($fila["Proceso"]=='P6')
                                                    $pro='Seleccion de Materia';
                                                if($fila["Proceso"]=='P10')
                                                    $pro='Registro de Nota';
                                                print "<tr>
                                                <td class='tables'>{$fila["Flujo"]}</td>
                                                <td class='tables'>{$pro}</td>
                                                <td class='tables'>{$fila["FechaInicio"]}</td>
                                                <td class='tables'>{$fila["HoraInicio"]}</td>
                                                <td class='tables'>{$fila["FechaFin"]}</td>
                                                <td class='tables'>{$fila["HoraFin"]}</td>
                                                
                                                <td class='center' >
                                                <a href='principal.php?flujo=F1&proceso=P2'>{$fila["Proceso"]}</a>
                                                </td>
                                            </tr>
                                            "
                                            ;
                                        }                                           
                                        ?>
                                      </table>  
                            </center>
                            
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
		
	</div>
			
	</div>
										
</body>
