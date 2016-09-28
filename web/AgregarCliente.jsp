<%-- 
    Document   : AgregarCliente
    Created on : 10-sep-2016, 19:32:00
    Author     : equipo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <head>
        <title>Add New</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Agregar Cliente</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto">
            <form action="AgregarCliente.do" method="post">
              <p>
                <label for="textfield">DNI:</label>
                <input type="text" name="txtdni" id="textfield">
              </p>
              <p>
                <label for="textfield2">APELLIDO:</label>
                <input type="text" name="txtapellido" id="textfield2">
              </p>
              <p>
                <label for="textfield3">NOMBRE:</label>
                <input type="text" name="txtnombre" id="textfield3">
              </p>
              <p>
                <label for="textfield4">FECHA NACIMIENTO:</label>
                <input type="text" name="txtfecha_nac" id="textfield4">
              </p>
              <p>
                <label for="textfield5">NACIONALIDAD:</label>
                <input type="text" name="txtnacionalidad" id="textfield5">
              </p>
              <p>
                <label for="textfield6">ACTIVO:</label>
                <input type="text" name="activo" id="textfield6">
              </p>
              <p>&nbsp;</p>
              <p>
                  <input type="submit" name="button" id="button" value="Enviar">
              </p>
            </form>
            <!--Complete Interface Addnew.-->
        </div>

    </body>
</html>
