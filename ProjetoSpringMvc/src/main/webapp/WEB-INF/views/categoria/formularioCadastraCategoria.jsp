
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Categoria</title>
    </head>
    <body>
        <form action="<c:url value='/cadastrarCategoria'/>" method="post">
            <label for="descricao"><!fmt:message key="usuario.nome"/>Descricao:</label>
            <input type="text" name="descricao">
            <!form:errors path="usuario.nome" cssStyle="color:red"/>
            <!form:errors path="usuario.login" cssStyle="color:red"/>
            <button type="submit">Cadastrar</button>
        </form>            
    </body>
</html>
