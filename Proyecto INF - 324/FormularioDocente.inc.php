<body background="fondo.jpg">        
	<div class="wrapper">
	
	<div class="container">
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <h1> Registro De Notas.<h1>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            <center>
                            <div class="row bg-white">

                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="" class="col-form-label m-0">CI. Estudiante</label>
                                            <input type="text" class="form-control f-1" name="ci" id="ci">
                                        </div>
                                        <div class="form-group col-md-4">
                                        <label for="" class="col-form-label m-0">Sigla</label>
                                                    <?php
                                                        $sigla = $_GET["sigla"];
                                                        $id = $_GET["id"];

                                                        print "
                                                        <input type='text' value={$sigla} class='form-control f-1' name='sigla' id='sigla'>
                                                        ";
                                                    ?>
                                        </div>
                                        <div class="form-group col-md-4">
                                        <label for="" class="col-form-label m-0">Semestre</label>
                                                    <?php
                                                        $sigla = $_GET["sigla"];
                                                        print "
                                                        <input type='text' value={$id} class='form-control f-1' name='semestre' id='semestre'>
                                                        ";
                                                    ?>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <label for="" class="col-form-label m-0">Nota Primer Parcial</label>
                                            <input type="text" value=0 class="form-control f-1" name="nt1" id="nt1">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="" class="col-form-label m-0">Nota Segundo Parcial</label>
                                            <input type="text" value=0 class="form-control f-1" name="nt2" id="nt2">
                                        </div>
                                        <div class="form-group col-md-3">
                                         <label for="" class="col-form-label m-0">Nota Tercer Parcial</label>
                                            <input type="text" value=0 class="form-control f-1" name="nt3" id="nt3">
                                        </div>
                                    </div>
                                    
                                </div>
                                <input type="submit" class="btn btn-success" value="Aceptar"/><br/>
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
