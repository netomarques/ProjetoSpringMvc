
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Mensagens</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/estiloTeste.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2"
                    <a href="<c:url value='/' />">Voltar</a> <br><br>
                    <a href="<c:url value='/formCadastraMensagem'/>">Formulário de Cadastro de Mensagem</a><br><br>

                    <table class="table table-hover">
                        <caption>Mensagens</caption>
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Descricão</th>
                                <th scope="col">Tipo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="mensagem" items="${listaMensagens}">
                                <tr>
                                    <td>${mensagem.id}</td>
                                    <td>${mensagem.descricao}</td>
                                    <td>${mensagem.tipo}</td>
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
