<%-- 
    Document   : ListarClientes
    Created on : 10-sep-2016, 4:17:43
    Author     : equipo
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
        
        
        
        
    </head>
    <body>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">
                <tr>
                    <th class="col-lg-1">Id</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Detail</th>
                    <th>Category</th>
                    <th>Date</th>
                    <th>Image</th>
                    <th>Image</th>
                    <th></th>
                </tr>
                <c:forEach items="${listarCliente}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.title.substring(0,10)}...</td>
                        <td>${p.description.substring(0,10)}...</td>
                        <td>${p.detail.substring(0,10)}...</td>
                        <td>${p.category}</td>
                        <td>${p.date.substring(0,10)}...</td>
                        <td>${p.image.substring(0,10)}...</td>
                        <td>
                            <a href="edit?id=${p.id}">Edit</a>
                            <a href="delete?id=${p.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
