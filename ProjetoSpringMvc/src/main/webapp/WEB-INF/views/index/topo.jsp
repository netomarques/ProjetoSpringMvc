
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <body>
        <div class="col-md-2">
            <div class="container-fluid">
                <div class="navbar-header">
                    <figure>
                        <img alt="MyCosmetic" src="<c:url value='/resources/img/logoMaior.png'/>" class="img-responsive"/>
                        <!--img alt="MyCosmetic" src="img/logoMaior.png" class="imgLogo"-->
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

                    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" aria-expanded="false" style="height: 1px;">
                        <ul class="nav navbar-nav">
                            <!--li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li-->
                            <li><a href="<c:url value='/listagemProdutos'/>">Produtos</a></li>
                            <li><a href="#">Masculino</a></li>
                            <li><a href="#">Feminino</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Formulários <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="<c:url value='/formListaCliente'/>">Módulo Cliente</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<c:url value='/formListaAdministrador'/>">Módulo Administrador</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<c:url value='/formListaCategoria'/>">Módulo Categoria</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<c:url value='/formListaMensagem'/>">Módulo Mensagem</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<c:url value='/formListaProduto'/>">Módulo Produto</a></li>
                                    <li class="divider"></li>
                                    <li><a href="<c:url value='/formListaCurriculo'/>">Módulo Curriculo</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                            <input type="text" class="form-control" placeholder="Pesquisar">
                            </div>
                            <button type="submit" class="btn btn-default">Ir</button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Contato</a></li>
                            <li><a href="#">Trabalhe Conosco</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </body>
</html>
