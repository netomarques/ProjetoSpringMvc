
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Mensagens</title>
    </head>
    <body>
        <a href="<c:url value='/' />">Voltar</a> <br><br>
        <a href="<c:url value='/formCadastraMensagem'/>">Formulário de Cadastro de Mensagem</a><br><br>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Descricão</th>
                <th>Tipo</th>
            </tr>
            
            <c:forEach var="mensagem" items="${listaMensagens}">
                <tr>
                    <td>${mensagem.id}</td>
                    <td>${mensagem.descricao}</td>
                    <td>${mensagem.tipo}</td>
                </tr>
            </c:forEach>  
        </table>
            
    </body>
</html>
