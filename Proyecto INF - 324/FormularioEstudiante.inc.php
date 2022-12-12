<?php
    session_start();
    include "conexion.inc.php";
    $semestre = $_GET['id'];
    $usuario = $_SESSION['user'];
    $sql="SELECT * FROM ssabd.materia WHERE semestre = $semestre";
    $resultado1=mysqli_query($con, $sql);
    $fila1=mysqli_fetch_all($resultado1);
    $sql2="SELECT *
             from ssabd.estudiante xe,ssabd.inscrito xi
            where xe.user ='$usuario' and xe.ci=xi.ci";
    $resultado2=mysqli_query($con, $sql2);
    $fila2=mysqli_fetch_all($resultado2);
?>

<body background="fondo.jpg">        
	<div class="wrapper">
	
	<div class="container">
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <h1> Seleccione las Materias Inscribirse.<h1>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            <center>
                            <table class="table">
                                    <thead>
                                        <tr class="success">
                                            <th style="width: 3px;">Semestre</th>
                                            <th>Sigla</th>
                                            <th>Nombre</th>
                                            <th>Inscribir</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                           
                                            for($j = 0; $j < count($fila1); $j += 1)
                                            {   $sw = 0;
                                                for($a = 0; $a < count($fila2); $a += 1){
                                                    if($fila2[$a][6]==$fila1[$j][0]){
                                                        $sw=1;
                                                        break;
                                                    }
                                                }
                                                if($sw==0){
                                                   
                                                        print 
                                                        "<tr style='cursor:pointer;'>    
                                                            <td style='width: 3px;'>{$fila1[$j][2]}</td>
                                                            <td onclick='selectInscripcion('INF20221', false, '')'>{$fila1[$j][1]}</td>
                                                            <td>{$fila1[$j][0]}</td>
                                                            <td >
                                                                <input type='checkbox' id='_checkbox {$fila1[$j][0]}' name = 'materia[]' value='{$fila1[$j][0]}'/>
                                                                <label for='_checkbox {$fila1[$j][0]}'>
                                                                </label>                                            
                                                            </td>
                                                         </tr>";
                                                
                                                }
                                            }
                                        ?>
                                        
                                    </tbody>
                                </table>
                                <br>
                                <div class="f-right mr-3" >
                                    <input type ="submit" class="btn btn-success" value="Listo" />
                                </div>
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
