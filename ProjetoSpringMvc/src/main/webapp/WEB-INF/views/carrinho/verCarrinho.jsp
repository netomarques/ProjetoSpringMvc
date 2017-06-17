
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <section>
                <!--<h3><a href="<c:url value="/visualizarCarrinho"/>">Visualizar Carrinho</a></h3>-->
                <div id="carrinho">
                    <!--<h3>Meu carrinho:</h3>-->
                    <c:if test="${empty carrinho or carrinho.totalDeItens eq 0 }">
                        <span>Você não possui itens no seu carrinho</span>
                    </c:if>
                    <c:if test="${carrinho.totalDeItens > 0 }">
                        <ul>
                            <li>
                                <strong>Itens:</strong>${carrinho.totalDeItens }</li>
                            <li>
                                <strong>Total:</strong>                              
                                <fmt:formatNumber type="currency" value="${carrinho.total }"/>                                
                            </li>
                        </ul>                        
                    </c:if>
                </div>
            </section>
        </div>
    </body>
</html>
