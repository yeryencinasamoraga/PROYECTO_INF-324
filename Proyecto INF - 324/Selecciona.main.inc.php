<?php
session_start();
include "conexion.inc.php";
include "header.php";
$user= $_SESSION['user'];
$str = strtoupper($user);
// echo $str;
print "<center><h2 style = 'color: black' >Bienvenid@ {$str}</h2></center>";
?>
<a href="cerrar_sesion.php" ><button class="btn btn-danger text-left"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Cerrar Sesion</button></a>
<body background="fondo.jpg">        
	<div class="wrapper">
	<div class="container">
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <h1> Seleccione la accion a realizar.<h1>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            <center>
                                    <form action="Selecciona.motor.inc.php" method="GET" class="">
                                        <div class="form-group mb-2 d-flex">
                                            <select name="tipo" class="center custom-select mr-sm-2 w-100">
                                                <option class="center" selected>----Selecciona----</option>
                                                <option value = "Inscripcion" id = "tipo">Inscripcion</option>
                                                <option value = "Notas" id = "tipo">Ver Notas</option>
                                                <option value = "Bandeja" id = "tipo">Ver Movimientos</option>

                                            </select>
                                        </div>
                                        <div class="f-center">
                                            <input class="btn btn-success" type="submit"value="Siguiente"/>
                                        </div>
                                    </form>  
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
