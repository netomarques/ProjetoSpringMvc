
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Cliente</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="col-md-2">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <figure>
                            <img alt="MyCosmetic" src="<c:url value='/resources/img/logoNovaSemFundo.png'/>" class="img-responsive"/>
                        </figure>    
                    </div>
                </div>
            </div>
            <div class="col-md-10">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<c:url value='/'/>">Home</a>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <form class="form-inline">
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail3">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Login">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputPassword3">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Senha">
                                </div>                        
                                <button type="submit" class="btn btn-default">Entrar</button>
                            </form>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<c:url value='/cadastrarCliente'/>" method="post">
                        <fieldset>
                            <legend>Não tem Conta? Crie uma conta agora.</legend>
                            <div class="form-group">
                                <label for="nome" class="col-lg-2 control-label">Nome</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="nome" placeholder="Nome completo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sexo" class="col-lg-2 control-label">Sexo</label>
                                <div class="col-lg-10">
                                    <select class="form-control" name="sexo" >
                                        <option value="">Selecione o sexo</option>
                                        <c:forEach items="${sexo}" var="s">
                                            <option value="${s}"> ${s} </option>
                                        </c:forEach>    
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label">Data de Nascimento</label>
                                <div class="col-lg-10">
                                    <input type="date" class="form-control" id="data" >
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
                                    <!--<a class="btn btn-default" href="<c:url value='/formListaCliente'/>">Cancelar</a>-->
                                    <button type="submit" class="btn btn-primary">Criar Conta</button>
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
