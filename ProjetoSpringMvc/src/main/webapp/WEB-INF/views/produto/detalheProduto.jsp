<%-- 
    Document   : detalheProduto
    Created on : 05/06/2017, 03:54:21
    Author     : Wilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <img alt="${produto}" src="" class="" height="550" width="550">
                        </td>                                
                    </tr>
                </table>
            </div>
            <div class="col-md-6">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="#">Descricao</a></li>
                    <table class="table table-striped">
                        <tr>
                            <td>
                                <p>O shampoo Dove Men Proteção Anticaspa torna suas roupas escuras 
                                    ainda mais atraentes e livre das caspas. Sua fórmula possui Zinc 
                                    Pyrithione que ajuda a eliminar a caspa e deixa seu cabelo mais 
                                    saudável e com um brilho natural.</p>
                            </td>                                
                        </tr>
                        <tr>
                            <td>                                        
                        <li value="Shampoo Dove Men">Nome: Shampoo Dove Men</li>
                        <input type="hidden" value="Shampoo Dove Men" id="nome">
                        </td>
                        </tr>
                        <tr>
                            <td>
                                Preco: R$20,70
                                <input type="hidden" value="20.70" id="preco">
                            </td>                                
                        </tr>
                        <tr>
                            <td>
                                Marca: DOVE
                                <input type="hidden" value="DOVE" id="marca">
                            </td>                                
                        </tr>
                        <tr>
                            <td>
                                <div class="input-group">
                                    <input id="quantidade" value="2" type="text" class="form-control" placeholder="" aria-describedby="basic-addon2">
                                    <span class="input-group-addon" id="basic-addon2">Quantidade</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <nav aria-label="...">
                                    <ul class="pager">
                                        <li><a href="Home.html" target="Home.html">Voltar</a></li>
                                        <li><a href="ProdutosCarrinho.html" target="Home.html" id="botaoAdicionar">Adicionar ao Carrinho</a></li>
                                    </ul>
                                </nav>
                            </td>                                    
                        </tr>

                    </table>                            
                </ul>
            </div>                    
        </div>
    </body>
</html>
