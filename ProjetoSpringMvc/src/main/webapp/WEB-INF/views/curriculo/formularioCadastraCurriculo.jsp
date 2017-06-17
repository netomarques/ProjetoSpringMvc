
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Cadastro de Curriculo</title>
        <link href="<c:url value='/resources/css/bootstrap-personalizado.min.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <header>
                <div class="row">
                    <c:import url="/topo"/>
                </div>       
            </header>
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-horizontal" action="<c:url value='/cadastrarCurriculo'/>" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <legend>Formulário de Curriculo</legend>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Nome</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-6">
                                    <input type="Email" class="form-control" id="inputPassword3">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Telefone</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Data de Nascimento</label>
                                <div class="col-sm-6">
                                    <input type="date" class="form-control" id="inputEmail3">
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Sexo</label>
                                <div class="col-sm-8">
                                    <input type="radio" name="rdsexo" value="F" id="fem">
                                    <label for="fem">Feminino</label>
                                    <input type="radio" name="rdsexo" value="M" id="mas">
                                    <label for="mas">Masculino</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" >Cidade</label>
                                <div class="col-sm-6">
                                    <select class="form-control">
                                        <option>-</option>
                                        <option>Manaus</option>                                        
                                    </select>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <label for="exampleInputName2" class="col-sm-2 control-label">Bairro</label>
                                <div class="col-sm-6">
                                    <select class="form-control">
                                        <option>-</option>
                                        <option>Centro</option>
                                        <option>Cidade Nova</option>
                                        <option>Alvorada</option>
                                        <option>Joao Paulo</option>
                                        <option>Cidade de Deus</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="file" class="col-lg-2 control-label">Curriculo</label>
                                <div class="col-lg-6">
                                    <input type="file" class="form-control" name="file">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-6 col-lg-offset-2">
                                    <a class="btn btn-default" href="<c:url value='/formListaCurriculo'/>">Cancelar</a>
                                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

    </body>

    <script src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/> "></script>
</html>
