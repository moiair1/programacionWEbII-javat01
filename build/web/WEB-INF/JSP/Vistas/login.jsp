<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp" />
        <title>Login</title>
        <script type="text/javascript">
            $().ready(function () {
                $("#formulario_login").validate({
                    rules: {
                        usuario: {
                            required: true,
                            minlength: 3,
                            maxlength: 15
                        },
                        contrasenia: {
                            required: true,
                            minlength: 3,
                            maxlength: 15
                        }
                    },
                    messages: {
                        usuario: {
                            required: "Campo obligatorio",
                            minlength: "Longitud minima 3 car�cteres",
                            maxlength: "Longitud maxima 20 car�cteres"
                        },
                        contrasenia: {
                            required: "Campo obligatorio",
                            minlength: "Longitud minima 3 car�cteres",
                            maxlength: "Longitud maxima 20 car�cteres"
                        }
                    }
                });
            });
        </script>
    </head>
    <body>
       <form class="form-horizontal" method="POST" action="Login" id="formulario_login">
            <div class="container">
                <div class="row-flow">
                    <p></p><p></p>
                    <div class="col-md-10">
                        <div class="panel panel-success">
                            <div class="panel-body">Inico de Session</div>
                            <div class="panel-footer">
                                <ul class="list-group">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="usuario">Usuario </label>
                                        <div class="col-sm-10"> <input class="form-control" name="usuario" type="text" > </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="contrasenia">Contrase�a </label>
                                        <div class="col-sm-10"> <input class="form-control" name="contrasenia" type="password"> </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button class="btn btn-success" type="submit">Guardar</button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <c:if test="${not empty errores}"><!-- muestro errores-->
                                            <p>Error al prosesar el formulario</p>
                                            <ul>
                                                <c:forEach var="fila" items="${errores}" >
                                                    <li style="color: red;"><c:out value="${fila.value}"/></li>
                                                </c:forEach>
                                            </ul>  
                                        </c:if>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
