
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes do Produto</title>
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
                <div class="row">
                    <div class="col-md-6">
                        <table class="table table-striped">
                            <tr>
                                <td>
                                    <figure>
                                        <img alt="${produto.nome}" src="<c:url value='/resources/img/produtos/${produto.imagem}'/>" class="img-thumbnail" height="550" width="550">
                                    </figure>
                                </td>                                
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-6">
                        <form class="form-horizontal" action="<c:url value='/carrinho?id=${produto.id}'/>" method="post">
                        <fieldset>
                            <legend>Detalhes</legend>      
                                <div class="form-group has-success">
                                    <label class="control-label" for="nome">Nome</label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="nome" value="${produto.nome}" type="text" readonly>
                                    </div>
                                </div>
                                <div class="form-group has-success">
                                    <label class="control-label" for="descricao">Descricao</label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="descricao" value="${produto.descricao}" type="text" readonly>
                                    </div>
                                </div>    
                                <div class="form-group has-success">
                                    <label class="control-label" for="preco">R$</label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="preco" value="${produto.preco}" type="text" readonly>
                                    </div>
                                </div>
                                <div class="form-group has-success">
                                    <label class="control-label" for="categoria">categoria</label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="categoria" value="${produto.categoria.descricao}" type="text" readonly>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="control-label" for="quantidade">Quantidade</label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="quantidade" type="text">
                                    </div>
                                </div>     
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a class="btn btn-default" href="<c:url value='/listagemProdutos'/>">Cancelar</a>
                                        <button type="submit" class="btn btn-primary">Comprar</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>                    
                </div>
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
