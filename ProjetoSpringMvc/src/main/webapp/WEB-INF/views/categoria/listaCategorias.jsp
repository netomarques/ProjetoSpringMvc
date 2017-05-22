
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Categorias</title>
    </head>
    <body>
        <a href="<c:url value='/' />">Voltar</a> <br><br>
        <a href="<c:url value='/formCadastraCategoria'/>">Formulário de Cadastro de Categoria</a><br><br>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Descricão</th>
                <th>Acão</th>
            </tr>
            
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
        </table>
            
    </body>
</html>
