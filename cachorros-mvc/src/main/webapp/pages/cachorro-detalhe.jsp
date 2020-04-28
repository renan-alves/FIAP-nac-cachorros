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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://rawcdn.githack.com/zmmbreeze/UBBParser/fcba08a374fedfa3c1b5a7a194731b44c5796fa9/ubb.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">

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

	<section class="">
		<div class="">
			<div class="container has-text-centered">
				<div class="column is-4 is-offset-4">



					<div class="box">
						<figure class="avatar">
							<img id="avatar"
								src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png"
								style="filter: hue-rotate(88deg);">	
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
.hero.is-success {
	background: #F2F6FA;
}

.hero .nav, .hero.is-success .nav {
	-webkit-box-shadow: none;
	box-shadow: none;
}

#avatar {
	width: 170px;
}

.userid-field {
	flex-grow: 3;
}

table.details {
	width: 100%;
}

table.details tr td {
	width: 50%;
	word-break: break-all;
}

table.details tr td:first-child {
	text-align: right;
	font-weight: bold;
}

#bio {
	margin-top: -10px;
	margin-bottom: 20px;
	text-align: fill;
	font-size: small;
	max-width: 100%;
	word-break: break-word;
}

#points {
	font-weight: bold;
}

#pronoun {
	font-size: 11px;
	opacity: 0.7;
}

.box {
	margin-top: 5rem;
}

.avatar {
	margin-top: -70px;
	padding-bottom: 20px;
}

.avatar img {
	padding: 5px;
	background: #fff;
	border-radius: 50%;
	-webkit-box-shadow: 0 2px 3px rgba(10, 10, 10, .1), 0 0 0 1px
		rgba(10, 10, 10, .1);
	box-shadow: 0 2px 3px rgba(10, 10, 10, .1), 0 0 0 1px
		rgba(10, 10, 10, .1);
}

input {
	font-weight: 300;
}

p {
	font-weight: 700;
}

p.subtitle {
	padding-top: 1rem;
}

.login-hr {
	border-bottom: 1px solid black;
}

.has-text-black {
	color: black;
}

.field {
	padding-bottom: 10px;
}

.fa {
	margin-left: 5px;
}
</style>
	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>