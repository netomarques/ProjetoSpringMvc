
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Categorias</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/estiloTeste.css'/>" rel="stylesheet">        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <a href="<c:url value='/' />">Voltar</a> <br><br>
                <a href="<c:url value='/formCadastraCategoria'/>">Formulário de Cadastro de Categoria</a><br><br>

                <table class="table table-hover">
                    <caption>Categorias</caption>
                    <thead
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Descricão</th>
                            <th scope="col" colspan="2">Acão</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="categoria" items="${listaCategorias}">
                            <tr>
                                <td>${categoria.id}</td>
                                <td>${categoria.descricao}</td>
                                <td>
                                    <a href="formAlteraCategoria?id=${categoria.id}">Alterar</a>
                                </td>
                                <td>
                                    <a href="removerCategoria?id=${categoria.id}" onclick="return confirm('Deseja realmente excluir')">
                                        Remover
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    
    <script src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>    
</html>
