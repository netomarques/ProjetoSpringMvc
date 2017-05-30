<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio Spring</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/estiloTeste.css'/>" rel="stylesheet">
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaCliente'/>">Módulo Cliente</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaAdministrador'/>">Módulo Administrador</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaCategoria'/>">Módulo Categoria</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaMensagem'/>">Módulo Mensagem</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaProduto'/>">Módulo Produto</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<c:url value='/formListaCurriculo'/>">Módulo Curriculo</a><br>
                </div>
            </div>
        </div>
                
        <script src="<c:url value='/resources/js/jquery.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
    </body>
</html>
