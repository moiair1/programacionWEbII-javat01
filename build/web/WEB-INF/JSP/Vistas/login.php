<?php

require '../Modelos/Conexion_user.php';
require '../Modelos/Crud.php';

//realizo la conexion con db
$modelo = new Crud();

$user='admin';
$pass='123';
$modelo->seleccionar = '*';
$modelo->donde = 'usuario';
$modelo->condicion  = "usuario='$user' AND password='$pass'";

//ahora acceso al metodo para leer
$modelo->ConectarUser();

$filas = $modelo->rows;
$total = count($filas);

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Listado de clientes</title>


    
 <?php
    require './header.php';
    
 ?>

    
  </head>
<body>
   <!--<h1>Hello, world!</h1>--> 

    
    <div class="container">
    
      <div class="jumbotron"><h1>Listado de Usuarios </h1></div>
      
      <div>
          <div align="center">	<a href="insertar_cliente.php" class="btn btn-primary" > Nuevo Cliente</a>
          	<p>
            </div>
	        	

          <div> <strong> El total de Filas es .. <?php echo $total ?></strong> 
              
              <?php
               // $user='admin';
              //  $pass='123';      
               ?>
          
          </div>
    	<table class="table table-striped">
        	
            
            	<tr class="danger">
                  
        			<td> <b>DOCUMENTO</b></td><td><b> APELLIDO</b></td><td> <b>NOMBRE</b></td><td> <b>EDAD</b></td><td><b> PAIS</b></td><td><b><center>     ACTIVO</center></b></td> 	<td> </td> 	<td> </td> 	
       			
                </tr>
    
                     
       	 <?php 
     
         
         foreach($filas as $usuarios):?>
			<tr>
                            	<td><?php echo $usuarios['usuario'] ?></td>       
                                <td><?php echo $usuarios['password'] ?></td>       
		
                
                <td>  
                    
            
            <div align="right"  >
                
              
                <a href="actualizar_cliente.php?id=<?php //echo $cliente['id'] ?>" class="btn btn-info" > <span class="glyphicon glyphicon-pencil" aria-hidden="true"> </span>  Editar  </a>
                <a href="eliminar_cliente.php?id=<?php  //echo $cliente['id'] ?>" onclick="return confirm('Deseas Eliminar este Registro?');" class="btn btn-danger"> <span class="glyphicon glyphicon-trash" aria-hidden="true"> </span>  Eliminar  </a> 
                
                   

            </div>


                </td>


	
            </tr>
        
         <?php endforeach;?>
            
            
            
            
        </table>  
        
        </div>
  </div>
   
     
  
<?php

                          require './footer.php';

?>
   
  
   

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