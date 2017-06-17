
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato</title>
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
                    <form class="form-horizontal" action="<c:url value='/cadastrarMensagem'/>" method="post">
                        <fieldset>
                            <legend>Contato - Deixe sua mensagem</legend>
                                <div class="form-group">
                                    <label for="descricao" class="col-lg-2 control-label">Descrição</label>
                                    <div class="col-lg-10">
                                      <textarea class="form-control" rows="3" name="descricao"></textarea>
                                      <span class="help-block">Mensagem de informação</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tipo" class="col-lg-2 control-label">Tipo</label>
                                    <div class="col-lg-10">
                                      <select class="form-control" name="tipo">
                                          <option value="Selecione" disabled selected >Selecione</option>
                                        <option value="Elogio">Elogio</option>
                                        <option value="Sugestao">Sugestao</option>
                                        <option value="Critica">Crítica</option>
                                      </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <a class="btn btn-default" href="<c:url value='/formListaMensagem'/>">Cancelar</a>
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
