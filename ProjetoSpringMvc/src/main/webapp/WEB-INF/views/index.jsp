<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyCosmetic</title>
        <!--link href="<!c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"-->
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
        <style>
            table{
                margin: auto;
                text-align: center;
            }
            header{
                margin: auto;
            }
            .imgLogo{
                width: 80%;
            }

        </style>
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
                    <div class="col-md-8">
                        <article>
                            <div class="panel panel-danger">
                                <div class="panel-heading">Promoção</div>
                                <!-- Table -->
                                <table class="table">
                                    <tr>
                                        <td>
                                            <img alt="artigo" src="<c:url value='/resources/img/artigo.png'/>" class="img-thumbnail">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img alt="combo" src="<c:url value='/resources/img/combo.jpg'/>" class="img-thumbnail">
                                        </td>
                                    </tr>

                                </table>

                            </div>
                        </article>
                    </div>
                    <div class="col-md-4">
                        <aside>
                            <div class="panel panel-info">
                                <!-- Default panel contents -->
                                <div class="panel-heading">Dica</div>

                                <!-- Table -->
                                <table class="table">
                                    <tr>
                                        <td> <img alt="Brand" src="<c:url value='/resources/img/mulherMaravilha.jpg'/>" class="img-thumbnail"></td>
                                    </tr>
                                    <tr>
                                        <th>Mulher Maravilha</th>
                                    </tr>
                                    <tr>
                                        <td>Risqué lança coleção de esmaltes inspirados na Mulher-Maravilha. São seis cores que fazem referência 
                                            à primeira e mais amada heroína que conhecemos, um dos maiores ícones femininos do mundo, a marca
                                            convida suas consumidoras a revelarem seus poderes, deixando o mundo mais forte e cheio de cor. A 
                                            Mulher Maravilha, é um símbolo mundial de coragem, inteligência, beleza e ousadia. Risqué desenvolveu
                                            cores que representam a principal característica da guerreira amazona, desde o azul e o vermelho de 
                                            seu ícone traje, até o dourado e chumbo presentes no laço da verdade e em seus braceletes.
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </aside>
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
                         
            <!--div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaCliente'/>">Módulo Cliente</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaAdministrador'/>">Módulo Administrador</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaCategoria'/>">Módulo Categoria</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaMensagem'/>">Módulo Mensagem</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaProduto'/>">Módulo Produto</a><br>
                    <a class="btn btn-info btn-lg btn-block active" role="button" href="<!c:url value='/formListaCurriculo'/>">Módulo Curriculo</a><br>
                </div>
            </div-->
        </div>

        <script src="<c:url value='/resources/js/jquery.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
    </body>
    
    
</html>
