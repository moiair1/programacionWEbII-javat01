<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL</title>
    </head>
    <body>
        
        <h1>JSTL page</h1>
            <table cellpadding="10">
                <tr>
                    <th>Id</th>
                    <th>DNI</th>
                    <th>APELLIDO</th>
                    <th>NOMBRE</th>
                    <th>EDAD</th>
                    <th>NACIOALIDAD</th>
                    <th>ACTIVO</th>
                    <th></th>
                </tr>
                <c:forEach items="${listarCliente}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.dni}</td>
                        <td>${p.apellido}</td>
                        <td>${p.nombre}</td>
                        <td>${p.fecha_nac}</td>
                        <td>${p.nacionalidad_id}</td>
                        <td>${p.activo}</td>

                    </tr>
                </c:forEach>
            </table>
        
        
        
        
    </body>
</html>