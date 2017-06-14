
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
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
            <section>
                <h3>Itens do seu carrinho de compras</h3>

                <table>
                    <thead>
                      <tr>
                        <th>Nome</th>
                        <th>Descrição</th>
                        <th>Preço</th>
                        <th>Qtde</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${carrinho.compra.itens}" var="item">
                        <tr>
                          <td>${item.produto.nome }</td>
                          <td>${item.produto.descricao }</td>
                          <td>
                            <fmt:formatNumber type="currency" 
                              value="${item.produto.preco }"/>
                          </td>
                          <td>${item.quantidade }</td>
                          <td>
                            <fmt:formatNumber type="currency" 
                              value="${item.quantidade * item.produto.preco }"/>
                          </td>
                        </tr>          
                      </c:forEach>
                    </tbody>
                    <tfoot>
                      <tr>
                        <td colspan="2"></td>
                        <th colspan="2">Total:</th>
                        <th>
                          <fmt:formatNumber type="currency" 
                            value="${carrinho.total }"/>
                        </th>
                      </tr>
                    </tfoot>
                </table>
                        
                <h3><a href="<c:url value="/finalizarCompra"/>">Finalizar Comppra</a></h3>        
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
