<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<html lang="en">
  <head>
    <title>Listado de clientes</title>

<%/* aca va la cabecera*/%>
    <jsp:include page="../headerFooter/header.jsp" />

  </head>
<body>
    
    <div class="container">
    
      <div class="jumbotron"><h1>Registro de Clientes </h1></div>
            
             <div class="container">
        <div class="row">
            <!-- form: -->
            <section>
                <div class="page-header">
                    <strong> </strong>
                    <h2>  <%    /*<?php echo $mensaje; ?> */%></h2>
                    <center>
                        <h3  class="text-danger">
                            
                   <c:if test="${not empty errores}">
             
                        <c:forEach var="fila" items="${errores}" >
                                                        <li><c:out value="${fila.value}"/></li>
                                                    </c:forEach>
                       
                       
                       
                    </c:if>
                     
                     
                     
                     
                     
                    </h3> 
                    
                    
                    
                 
                    
                    
                    </center>
                </div>

                <div class="col-lg-8 col-lg-offset-2">
                    
                    
                    
                    
                    
                    
                    
                    <form id="defaultForm" method="post" action="EditarCliente" class="form-horizontal">
                      
                    

                        <fieldset>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Documento:</label>
                                <div class="col-lg-5">
                                    
                       <c:forEach items="${getid}" var="pp">

                                     <input type="hidden" name="id" value="${i.id}">
                                     <p> ${p.dni}</p>
                        

                                    <input type="text" class="form-control" name="dni" value="${pp.dni}">
                                    
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Apellido:</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="apellido" value="${pp.apellido}"/>
                               
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Nombres: </label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="nombre" value="${pp.nombre}"/>
                                </div>
                            </div>

    						<div class="form-group">
					<!--	<label class="col-lg-3 control-label">Fecha Nacimiento:    </label>-->
                        <div class="col-lg-8">
       			
                             
                        </div>
         			  </div>



						<div class="form-group">
						<label class="col-lg-3 control-label">Fecha Nacimiento:    </label>
                        	<div class="col-lg-5">
                                    <input type="date" class="form-control" name="fecha_nac"  value="${pp.fecha_nac}"id="datepicker"/>
                                </div>
                            </div>



							   <div class="form-group">
                                <label class="col-lg-3 control-label">Pais de Nacimiento:</label>
                                <div class="col-lg-5">
                                    <select class="form-control" name="nacionalidad_id" >
                                        <option value=""> ${pp.nombre} </option>
                                         <option value="13">Argentina</option>
                                 
                                     <c:forEach items="${paises}" var="p">
                                       <option value="${p.id}">${p.id} - ${p.nombre} </option>

                                       </c:forEach>
                                        
                                        
                                       
                                    </select>
                                </div>
                            </div>


							<div class="form-group">
                                <div class="col-lg-5 col-lg-offset-3">
                                    <div class="checkbox">
                                        <input type="checkbox" name="activo"  checked value="1" /> Activo?
                                    </div>
                                </div>
                            </div>
                          
 </c:forEach>
                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                               
                                <input type="hidden" name="insertar">
                                <button type="submit" class="btn btn-success"> Guardar Datos</button>
                           
                            
                            
                            
                            
                            
                            
                            
                            
                            </div>
                        </div>
                          
                          
                          
                          
                        
                         </fieldset>
                        
                        
                   
                        
                    </form>
                        
                        
                         
                </div>
            </section>
            <!-- :form -->
        </div>
    </div>

        
        </div>
  </div>
  
  
  

<script>

$(document).ready(function() {
    $('#defaultForm').formValidation({
        message: 'This value is not valid',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
		fields: {
            dni: {
                message: 'El Documento es Invalido',
                validators: {
                    notEmpty: {
                        message: 'Es Obligatorio el Ingreso del Documento'
                    },
                    stringLength: {
                        min: 6,
                        max: 8,
                        message: 'El Documento debe contener 8 digitos no se acepta caracteres'
                    },
                    regexp: {
                        regexp: /^[0-9_\.]+$/,
						//regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'El DNI sólo puede consistir  solo números'
                    }
                }
            },
			
			
			apellido: {
                message: 'El Apellido es invalido',
                validators: {
                    notEmpty: {
                        message: 'Es Obligatorio el Ingreso del Apellido'
                    },
                    stringLength: {
                        min: 3,
                        max: 30,
                        message: 'El Apellido debe contener como min 3 y como max 30 letras no se acepta numeros ni caracteres'
                    },
                    regexp: {
                        //regexp: /^[0-9_\.]+$/,
						regexp: /^[a-zA-Z\s]+$/,
						//regexp: /[a-zA-Z+(\s*[a-zA-Z]*)*[a-zA-Z]+$/,
                        message: 'El Apellido sólo puede consistir  solo letras'
                    }
                }
            },
			
			nombre: {
                message: 'El Nombre es invalido',
                validators: {
                    notEmpty: {
                        message: 'Es Obligatorio el Ingreso del Nombre'
                    },
                    stringLength: {
                        min: 2,
                        max: 30,
                        message: 'El Nombre debe contener como minimo 3 letras no se acepta numeros ni caracteres'
                    },
                    regexp: {
                        //regexp: /^[0-9_\.]+$/,
						regexp: /^[a-zA-Z\s]+$/,
                        message: 'El Nombre sólo puede consistir  solo letras'
                    }
                }
            },
			
          
            fecha_nac: {
                message: 'El Calendario es invalido',
                validators: {
                    notEmpty: {
                        message: 'Es Obligatorio la Seleccion de Fecha de Nac.'
                    },
                    stringLength: {
                        min: 5,
                        max: 11,
                        message: 'La Fecha de Nac.  debe ser valido	'
                    },
         
                }
            },
		  
		  
	nacionalidad_id: {
                message: 'Pais  es invalido',
                validators: {
                    notEmpty: {
                        message: 'Es Obligatorio que lo seleccione su Nacionalidad'
                    },
       
                }
            },
        }
    });
});




</script>


<%/*aca va el footer*/%>

</body>
</html>