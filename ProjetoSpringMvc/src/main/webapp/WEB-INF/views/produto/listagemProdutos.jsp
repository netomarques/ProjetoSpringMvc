
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
                <h3><a href="<c:url value="/visualizarCarrinho"/>">Visualizar Carrinho</a></h3>
            </header>
            <section>   
                
                <div id="carrinho">
                    <h3>Meu carrinho:</h3>
                    <c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
                        <span>Você não possui itens no seu carrinho</span>
                    </c:if>
                    <c:if test="${carrinho.totalDeItens > 0 }">
                        <ul>
                          <li>
                            <strong>Itens:</strong> ${carrinho.totalDeItens } </li>
                          <li>
                            <strong>Total:</strong> 
                            <fmt:formatNumber type="currency" 
                              value="${carrinho.total }"/>
                          </li>
                        </ul>
                    </c:if>
                </div>
                
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
                                                <a  href="<c:url value='/detalheProduto?id=${produto.id}'/>">
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
        </div>
    </body>
</html>
