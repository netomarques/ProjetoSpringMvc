
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Alteração de Categoria</title>
    </head>
    <body>
        <form action="<c:url value='/alterarCategoria'/>" method="post">
            <label for="id"><!fmt:message key="usuario.nome"/>ID:</label>
            <input type="text" name="id" value="${categoria.id}" readonly>
            <label for="descricao"><!fmt:message key="usuario.nome"/>Descrição:</label>
            <input type="text" name="descricao" value="${categoria.descricao}">
            <!form:errors path="usuario.nome" cssStyle="color:red"/>
            <!form:errors path="usuario.login" cssStyle="color:red"/>
            <button>Alterar</button>
        </form>           
        <br><br>
        <a href="<c:url value='/formListaCategoria'/>">Voltar</a>
    </body>
</html>
