
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Alteração de Produto</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<c:url value='/alterarProduto'/>" method="post">
                        <fieldset>
                            <legend>Formulário de Produto</legend>   
                                <div class="form-group">
                                    <label for="id" class="col-lg-2 control-label">ID</label>
                                    <div class="col-lg-10">
                                        <span class="label label-info">
                                            ${produto.id}
                                            <input type="text" name="id" value="${produto.id}" hidden readonly>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="administrador.id" class="col-lg-2 control-label">Administrador</label>
                                    <div class="col-lg-10">
                                        <span class="label label-info">
                                            ${produto.administrador.id}
                                            <input type="text" name="administrador.id" value="${produto.administrador.id}" hidden readonly>
                                        </span>
                                    </div>
                                </div>        
                                <div class="form-group">
                                    <label for="nome" class="col-lg-2 control-label">Nome</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="nome" value="${produto.nome}" placeholder="Nome do Produto">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="categoria.id" class="col-lg-2 control-label">Tipo</label>
                                    <div class="col-lg-10">
                                        <select class="form-control" name="categoria.id" >
                                            <option value="">Selecione a categoria</option>
                                            <c:forEach items="${categorias}" var="categoria">
                                                <option value="${categoria.id}" 
                                                    <c:if test="${fn:contains(categoria.descricao, produto.categoria.descricao)}">selected</c:if>>
                                                    ${categoria.descricao}
                                                </option>
                                            </c:forEach>    
                                        </select> </br> </br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a class="btn btn-default" href="<c:url value='/formListaProduto'/>">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Alterar</button>
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
