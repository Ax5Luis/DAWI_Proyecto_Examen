<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registro Cliente</title>
</head>
<body>

<div class="container">
<h1>Registro Cliente</h1>
	
	<c:if test="${sessionScope.MENSAJE != null }">
			<div class="alert alert-success" id="success-alert">
	 		   <button type="button" class="close" data-dismiss="alert">x</button>
				${sessionScope.MENSAJE}				
			</div>
	</c:if>
	<c:remove var="MENSAJE"/>

	<form action="registraClient" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombre del Cliente</label>
				<input class="form-control" type="text" id="id_nombre" name="cliente.nom_cliente" placeholder="Ingrese el nombre del Cliente">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Apellido del Cliente</label>
				<input class="form-control" type="text" id="id_apellido" name="cliente.ape_cliente" placeholder="Ingrese el Apellido del Cliente">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_dni">Dni del Cliente</label>
				<input class="form-control" type="text" id="id_dni" name="cliente.dni_docente" placeholder="Ingrese el Dni del Cliente">
			</div>
			
			<div class="form-group">
			
			<label class="control-label" for="id_fecha">Fecha de Nacimiento  del Cliente</label>
			<input class="form-control"  type="date" id="id_fecha" name="cliente.fec_nac_cliente"  placeholder="Ingrese la Fecha  del Cliente" >
			
			</div>
			
	
	
			<div class="form-group">
				<label class="control-label" for="cod_tipo">Tipo</label>
				<select id="cod_tipo" name="cliente.tipo.cod_tipo" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
		    
		    
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Registrar Cliente </button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">
	$.getJSON("cargaTipo",{}, function(data,q,txt){
		$.each(data.lstTipo, function(key,value){
			$("#cod_tipo").append("<option value='" + value.cod_tipo +  "'>" + value.nom_tipo + "</option>")
		})
	});
</script>
	
<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nombre: {
        		selector :"#id_nombre",
        		validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 40 caracteres',
                    	min : 5,
                    	max : 40
                    }
                }
            },
            
            
            
        	apellido: {
        		selector :"#id_apellido",
                validators: {
                    notEmpty: {
                        message: 'El Apellido es un campo obligatorio'
                    },
                    stringLength: {
                        	  message:'El Apellido es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
            
             	dni: {
        		selector :"#id_dni",
                validators: {
                    notEmpty: {
                        message: 'El Dni es un campo obligatorio'
                    },
                    regexp: {
                    
                     regexp: /(^([0-9]{8})|^)$/,
                        	  message:'El Dni tiene que ser de 8 digitos '
                    	
                    }
                }
            },
            
            
            
            fecha: {
            	selector :"#id_fecha",
                validators: {
                    notEmpty: {
                        message: 'La Fecha es un campo obligatorio'
                    },
                    
                }
            },
            tipo: {
            	selector :"#cod_tipo",
                validators: {
                    notEmpty: {
                        message: 'El  Tipo es un campo obligatorio'
                    }
                }
            },
          
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>


</body>
</html>




