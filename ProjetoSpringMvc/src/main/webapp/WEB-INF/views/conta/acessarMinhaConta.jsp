<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%-- 
    Document   : acessarMinhaConta
    Created on : 16/06/2017, 17:19:09
    Author     : Junnio
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyCosmetic</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
        <style>
            table{
                margin: auto;
                text-align: center;
            }
            header{
                margin: auto;
            }
            .imgLogo{
                width: 80%;
            }

        </style>
    </head>
    <body>
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


        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-4 control-label">Não tem Conta? Crie uma conta agora.</label>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
                <div class="col-sm-3">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Nome">
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Login</label>
                <div class="col-sm-3">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Login">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Senha</label>
                <div class="col-sm-3">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Senha">
                </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-2 control-label">Data de Nascimento</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="data" >
                </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-2 control-label">Sexo</label>
                <div class="col-sm-3">
                    <div class="radio">
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="Masculino" >Masculino
                        </label>                    
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="Feminino">Feminino
                        </label>
                    </div>                    
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <button type="submit" class="btn btn-default">Criar Conta</button>
                </div>
            </div>
        </form>
        <script src="<c:url value='/resources/js/jquery.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
    </body>
</html>
