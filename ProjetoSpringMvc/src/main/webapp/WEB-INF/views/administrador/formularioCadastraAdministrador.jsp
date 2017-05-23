
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Administrador</title>
    </head>
    <body>
        <form action="<c:url value='/cadastrarAdministrador'/>" method="post">
            <label for="nome"><!fmt:message key="usuario.nome"/>Nome:</label>
            <input type="text" name="nome" id="nome"><br>
            <label for="login"><!fmt:message key="usuario.login"/>Login:</label>
            <input type="text" name="login" id="login"><br>
            <label for="senha"><!fmt:message key="usuario.senha"/>Senha</label>
            <input type="password" name="senha" id="senha"><br>
            <!form:errors path="usuario.nome" cssStyle="color:red"/>
            <!form:errors path="usuario.login" cssStyle="color:red"/>
            <button type="submit">Cadastrar</button>
        </form>            
    </body>
</html>
