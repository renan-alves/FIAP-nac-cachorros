<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>Produtos - Detalhe</title>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${css}/bootstrap.css" rel="stylesheet">
<link href="${css}/small-business.css" rel="stylesheet">
<link href="${css}/detalhe.css" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://rawcdn.githack.com/zmmbreeze/UBBParser/fcba08a374fedfa3c1b5a7a194731b44c5796fa9/ubb.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>



	<section class="">
		<div class="">
			<div class="container has-text-centered">
				<div class="column is-4 is-offset-4">



					<div class="box">
						<figure class="avatar">
						<c:if test="${cachorro.sexo.equals('F')}">
										<img id="avatar"
											src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png"
											style="filter: hue-rotate(88deg);">
									</c:if>
									<c:if test="${cachorro.sexo.equals('M')}">
										<img id="avatar"
											src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png">
									</c:if>

						</figure>
						<h3 class="title has-text-black">
							<span id="name">${cachorro.nome}</span> <sup><i
								id="pronoun"></i></sup>
						</h3>
						<div id="bio"></div>
						<br>
						<table class="table details">
							<tr>
								<td>Raça:</td>
								<td><span id="nome" for="raca">${cachorro.raca}</span></td>
							</tr>
							<tr>
								<td>Sexo:</td>
								<td><span id="nome" for="sexo">${cachorro.sexo}</span></td>
							</tr>
							<tr>
								<td>Idade:</td>
								<td><span id="nome" for="idade">${cachorro.idade}</span></td>
							</tr>
							<tr>
								<td>Descrição:</td>
								<td><span id="nome" for="descricao">${cachorro.descricao}</span></td>
							</tr>


						</table>
						<br>
						<h3 class="title has-text-black">
							<a class="btn btn-default btn-lg" href="${contextPath}/cachorro">Voltar</a>
						</h3>
					</div>

				</div>
			</div>
		</div>
	</section>


	<style>

</style>
	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>