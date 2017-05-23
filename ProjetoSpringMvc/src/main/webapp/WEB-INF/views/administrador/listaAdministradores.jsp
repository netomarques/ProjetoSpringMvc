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
        <title>Listagem de Administradores</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/estiloTeste.css'/>" rel="stylesheet">        
    </head>
    <body>
        <div class="container">
            <div class="row"
                <a href="<c:url value='/' />">Voltar</a> <br><br>
                <a href="<c:url value='/formCadastraAdministrador'/>">Formulário de Cadastro de Administrador</a><br><br>
        
                <table class="table table-hover">
                    <caption>Administradores</caption>
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Login</th>
                            <th scope="col">Senha</th>
                            <th scope="col">Acão</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <c:forEach var="administrador" items="${listaAdministradores}">
                            <tr>
                                <td>${administrador.id}</td>
                                <td>${administrador.nome}</td>
                                <td>${administrador.login}</td>
                                <td>${administrador.senha}</td>
                                <td>
                                    <a href="formAlteraAdministrador?id=${administrador.id}">Alterar</a>
                                </td>
                                <td>
                                    <a href="removerAdministrador?id=${administrador.id}" onclick="return confirm('Deseja realmente excluir')">
                                        Remover
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="<c:url value='/resources/js/jquery.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>    
    </body>
</html>
