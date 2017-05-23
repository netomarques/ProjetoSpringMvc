
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Alteração de Cliente</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<!c:url value='/cadastrarCliente'/>" method="post">
                        <fieldset>
                            <legend>Formulário de Cliente</legend>
                                <div class="form-group">
                                    <label for="id" class="col-lg-2 control-label">ID</label>
                                    <div class="col-lg-10">
                                        <span class="label label-info">
                                            ${cliente.id}
                                            <input type="text" name="id" value="${cliente.id}" hidden readonly>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nome" class="col-lg-2 control-label">Nome</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="nome" value="${cliente.nome}" placeholder="Nome completo">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="login" class="col-lg-2 control-label">Login</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="login" value="${cliente.login}" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="senha" class="col-lg-2 control-label">Senha</label>
                                    <div class="col-lg-10">
                                        <input type="password" class="form-control" name="senha" value="${cliente.senha}" placeholder="Senha">
                                        <div class="checkbox">
                                            <label><input type="checkbox">Mostrar senha</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a type="reset" class="btn btn-default" href="<c:url value='/formListaCliente'/>">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                                    </div>
                                </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        
        
        
        
        <!--form action="<!c:url value='/alterarCliente'/>" method="post">
            <label for="id"><!fmt:message key="usuario.nome"/>ID:</label>
            <input type="text" name="id" value="${cliente.id}" readonly><br>
            <label for="nome"><!fmt:message key="usuario.nome"/>Nome:</label>
            <input type="text" name="nome" value="${cliente.nome}"><br>
            <label for="login"><!fmt:message key="usuario.login"/>Login:</label>
            <input type="text" name="login" value="${cliente.login}"><br>
            <label for="senha"><!fmt:message key="usuario.senha"/>Senha:</label>
            <input type="password" name="senha" value="${cliente.senha}"><br>
            <!form:errors path="usuario.nome" cssStyle="color:red"/>
            <!form:errors path="usuario.login" cssStyle="color:red"/>
            <button>Alterar</button>
        </form-->           
        <br><br>
    </body>
    
    <script src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
</html>
