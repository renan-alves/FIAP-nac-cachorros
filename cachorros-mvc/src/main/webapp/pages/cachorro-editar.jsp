<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

    <title>Cachorros - Editar</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar  navbar-fixed-top navbar-light"
		style="background-color: #692e8c;" role="navigation">
		<div class="container">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="${contextPath}/cachorro"> <img
							src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png"
							height="80" width="80" />
					</a></li>
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
					
					<form:form modelAttribute="cachorroModel" action="${contextPath}/cachorro/${cachorroModel.id}" method="put">
					
						<spring:hasBindErrors name="cachorroModel">
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
							<label class="control-label" for="raca">Raça:</label>
							<form:input type="text" path="raca" id="raca" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="raca"/></font><br/>
							
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sexo">Sexo:</label>
							<form:input type="text" path="sexo" id="sexo" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="sexo"/></font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="idade">Idade:</label>
							<form:input type="number" path="idade" id="idade" class="form-control" maxlength="14" size="15" />
							<font color="red"><form:errors path="idade"/></font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="descricao">Descrição:</label>
							<form:input type="text" path="descricao" id="descricao" class="form-control" maxlength="50" size="50" />
							<font color="red"><form:errors path="descricao"/></font><br/>
						</div>
						
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/cachorro">Cancelar</a>
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