<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Produtos - Detalhe</title>
    
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

    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Cachorros</h2>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<b>${cachorro.nome}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">Raça:</label>
							<label class="label label-default">${cachorro.raca}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Sexo:</label>
							<label class="label label-default">${cachorro.sexo}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Idade:</label>
							<label class="label label-default">${cachorro.idade}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Castrado?:</label>
							<label class="label label-default">${cachorro.castrado}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Descrição:</label>
							<label class="label label-default">${cachorro.descricao}</label>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/cachorro">Voltar</a>
                            
                        <br>
                        <br>
					
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