<%-- 
    Document   : listagem-tarefas
    Created on : 01/05/2017, 14:36:22
    Author     : Wilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Clientes</title>
    </head>
    <body>
        <a href="<c:url value='/' />">Voltar</a> <br><br>
        <a href="<c:url value='/formCadastraCliente'/>">Formulário de cadastro de cliente</a><br><br>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Login</th>
                <th>Senha</th>
                <th>Acão</th>
            </tr>
            
            <c:forEach var="cliente" items="${listaClientes}">
                <tr>
                    <td>${cliente.id}</td>
                    <td>${cliente.nome}</td>
                    <td>${cliente.login}</td>
                    <td>${cliente.senha}</td>
                    <td>
                        <a href="formAlteraCliente?id=${cliente.id}">Alterar</a>
                    </td>
                    <td>
                        <a href="removerCliente?id=${cliente.id}" onclick="return confirm('Deseja realmente excluir')">
                            Remover
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
            
    </body>
</html>
