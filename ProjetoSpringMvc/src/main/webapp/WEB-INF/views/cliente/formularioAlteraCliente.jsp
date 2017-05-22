<%-- 
    Document   : formularioAdicionaTarefa
    Created on : 30/04/2017, 02:22:00
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
        <title>Formulário de Alteração de Cliente</title>
    </head>
    <body>
        <form action="<c:url value='/alterarCliente'/>" method="post">
            <label for="id"><!fmt:message key="usuario.nome"/>ID:</label>
            <input type="text" name="id" value="${cliente.id}" readonly>
            <label for="nome"><!fmt:message key="usuario.nome"/>Nome:</label>
            <input type="text" name="nome" value="${cliente.nome}">
            <label for="login"><!fmt:message key="usuario.login"/>Login:</label>
            <input type="text" name="login" value="${cliente.login}">
            <label for="senha"><!fmt:message key="usuario.senha"/>Senha:</label>
            <input type="password" name="senha" value="${cliente.senha}">
            <!form:errors path="usuario.nome" cssStyle="color:red"/>
            <!form:errors path="usuario.login" cssStyle="color:red"/>
            <button>Alterar</button>
        </form>           
        <br><br>
        <a href="<c:url value='/formListaCliente'/>">Voltar</a>
    </body>
</html>
