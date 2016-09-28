<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
  <head>
    <title>Listado de clientes</title>



    <jsp:include page="../headerFooter/header.jsp" />
    
    
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
  
  </head>
<body>
   <!--<h1>Hello, world!</h1>--> 

    
    <div class="container">
    
      <div class="jumbotron"><h1>Listado de Clientes </h1></div>
      
      <div>
          <div align="center">	<a href="insertar_cliente.php" class="btn btn-primary" > Nuevo Cliente</a>
          	<p>
            </div>
	        	
             <%/*  <?php if ($filas != ''): ?> */%>

          <div> <strong> El total de Filas es .. <%/* <?php echo $total ?>*/%></strong> 
          </div>
    	<table class="table table-striped">
        	
            
            	<tr class="danger">
                  
        			<td> <b>DOCUMENTO</b></td><td><b> APELLIDO</b></td><td> <b>NOMBRE</b></td><td> <b>EDAD</b></td><td><b> PAIS</b></td><td><b><center>     ACTIVO</center></b></td> 	<td> </td> 	<td> </td> 	
       		
                                
                                
                                
                </tr>
                
                
                
                  <c:forEach items="${listarCliente}" var="p">
                    <tr>
                        <td>${p.dni}</td>
                        <td>${p.apellido}</td>
                        <td>${p.nombre}</td>
                        <td>${p.fecha_nac}</td>
                        <td>${p.nomPais}</td>
                        
                        
                        <td>

                            <c:if test="${p.activo==1}">
                        <center><img src='Recursos/img/activo.png' width='25' height='25'></center>
                            </c:if>
                            
                            <c:if test="${p.activo==0}">
                        <center><img src='Recursos/img/desactivo.png' width='25' height='25'></center>
                            </c:if>
                             
                        
                        
                        
                        
                        
                        </td>

                        
                        
                        </td>
                
                <td>  
                    
            
            <div align="right"  >
                
           
                <a href="EditarCliente?id=${p.id}"  class="btn btn-info" > <span class="glyphicon glyphicon-pencil" aria-hidden="true"> </span>  Editar  </a>
                <a href="EliminarCliente?id=${p.id}" onclick="return confirm('Deseas Eliminar este Registro?');" class="btn btn-danger"> <span class="glyphicon glyphicon-trash" aria-hidden="true"> </span>  Eliminar  </a> 
                
                   

            </div>


                </td>


                        
                        
                        
                        
                        
                    </tr>
                </c:forEach>
                
    
        <%/*
         <?php endforeach;?>
            <?php else: ?>
            
            <h3>No hay Datos para Mostrar</h3>
            
            
           <?php endif; ?> 
            
            */ %>
            
        </table>  
        
        </div>
  </div>
   
<% /*  
  
<?php

                          require './footer.php';

?>
   
 * 
 */%>
  
   

 <script type="text/javascript">
<!--
function confirmation() {
    var answer = confirm("Deseas eliminar este registro?")
    if (answer){
        // code for deleting record
        
    
        }
    else{
        // do nothing
    }
}
//-->
</script>  


   
</body>
</html>