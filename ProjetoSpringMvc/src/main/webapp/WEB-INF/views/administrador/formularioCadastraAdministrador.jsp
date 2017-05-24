
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Administrador</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<c:url value='/cadastrarAdministrador'/>" method="post">
                        <fieldset>
                            <legend>Formulário de Administrador</legend>
                                <div class="form-group">
                                    <label for="nome" class="col-lg-2 control-label">Nome</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="nome" placeholder="Nome completo">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="login" class="col-lg-2 control-label">Login</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="login" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="senha" class="col-lg-2 control-label">Senha</label>
                                    <div class="col-lg-10">
                                        <input type="password" class="form-control" name="senha" placeholder="Senha">
                                        <div class="checkbox">
                                            <label><input type="checkbox">Mostrar senha</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a class="btn btn-default" href="<c:url value='/formListaAdministrador'/>">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                                    </div>
                                </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
                                        
    </body>
    
    <script src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
</html>
