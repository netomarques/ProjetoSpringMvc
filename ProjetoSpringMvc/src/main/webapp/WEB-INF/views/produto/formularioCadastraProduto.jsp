
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Produto</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<c:url value='/cadastrarProduto'/>" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <legend>Formulário de Produto</legend>
                                <div class="form-group">
                                    <label for="nome" class="col-lg-2 control-label">Nome</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="nome" placeholder="Nome do Produto">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="descricao" class="col-lg-2 control-label">Descricao</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="descricao" placeholder="Descricao do Produto">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="preco" class="col-lg-2 control-label">Preço</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="preco" placeholder="Preço do Produto">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="categoria.id" class="col-lg-2 control-label">Categoria</label>
                                    <div class="col-lg-10">
                                        <select class="form-control" name="categoria.id" >
                                            <option value="">Selecione a categoria</option>
                                            <c:forEach items="${categorias}" var="categoria">
                                                <option value="${categoria.id}"> ${categoria.descricao} </option>
                                            </c:forEach>    
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="file" class="col-lg-2 control-label">Imagem</label>
                                    <div class="col-lg-10">
                                        <input type="file" class="form-control" name="file">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a class="btn btn-default" href="<c:url value='/formListaProduto'/>">Cancelar</a>
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
