
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Produtos</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <a href="<c:url value='/' />">Voltar</a> <br><br>
                <a href="<c:url value='/formCadastraProduto'/>">Formulário de cadastro de Produto</a><br><br>

                <table class="table table-hover">
                    <caption>Clientes</caption>
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Categoria</th>
                            <th scope="col">Administrador</th>
                            <th scope="col">Acão</th>
                        </tr>                
                    </thead>
                    <tbody>
                        <c:forEach var="produto" items="${listaProdutos}">
                            <tr>
                                <td>${produto.id}</td>
                                <td>${produto.nome}</td>
                                <td>${produto.categoria.descricao}</td>
                                <td>${produto.administrador.nome}</td>
                                <td>
                                    <a href="formAlteraProduto?id=${produto.id}">Alterar</a>
                                </td>
                                <td>
                                    <a href="removerProduto?id=${produto.id}" onclick="return confirm('Deseja realmente excluir')">
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
