<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

    <title>Produtos - Editar</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/produto">Produtos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Produto</h2>
					
					<form:form modelAttribute="produtoModel" action="${contextPath}/produto/${produtoModel.id}" method="put">
					
						<spring:hasBindErrors name="produtoModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<form:input type="text" path="nome" id="nome" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="nome"/></font><br/>
							
                        </div>
                        <div class="form-group">
							<label class="control-label" for="nome">SKU:</label>
							<form:input type="text" path="sku" id="sku" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="sku"/></font><br/>
							
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Descrição:</label>
							<form:textarea id="descricao" class="form-control" path="descricao" rows="4" cols="100" />
							<font color="red"><form:errors path="descricao"/></font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<form:input type="number" path="preco" id="preco" class="form-control" maxlength="14" size="15" />
							<font color="red"><form:errors path="preco"/></font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Características:</label>
							<form:textarea id="mensagem" class="form-control" path="caracteristicas" rows="4" cols="100" />
							<font color="red"><form:errors path="caracteristicas"/></font><br/>
						
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/produto">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form:form>
					
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>