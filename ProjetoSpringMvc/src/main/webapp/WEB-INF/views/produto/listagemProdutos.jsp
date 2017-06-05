
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
        <!--link href="<!c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"-->
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <header>
                <div class="row">
                    <c:import url="/topo"/>
                </div>       
            </header>
        </div>
        <section>
            <c:forEach var="produto" items="${listaProdutos}">
            <div class="row">
                <div class="col-md-12">
                    <article>
                        <div class="panel panel-info">
                            <div class="panel-heading">${produto.nome}</div>
                            <!-- Table -->
                            <table class="table">
                                <tr>
                                    <td rowspan="2">
                                        <figure>
                                            <a  href="<c:url value='/detalheProduto'/>">
                                                <img alt="${produto.nome}" src="<c:url value='/resources/img/produtos/${produto.imagem}'/>" class="img-responsive">
                                            </a>
                                        </figure>
                                    </td>
                                    <td>
                                        ${produto.descricao}                                        
                                    </td>
                                </tr>
                                <tr>                                                                               
                                    <td style="font-size: 48px; color: red">
                                        R$ ${produto.preco}
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </article>
                </div>
            </div>
            </c:forEach>
        </section>
        <footer>
            <div class="row">
                <div class="container-fluid">
                    <div clas="col-md-12">
                         <c:import url='/rodape'/>
                    </div>
                </div>
            </div>
        </footer>        
                
    </body>
</html>
