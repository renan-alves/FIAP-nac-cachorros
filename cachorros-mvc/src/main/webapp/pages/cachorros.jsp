<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>Cachorros - Listagem</title>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${css}/bootstrap.css" rel="stylesheet">
<link href="${css}/small-business.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
	
<script>history.scrollRestoration = "manual"</script>

</head>

<body>

	<nav class="navbar  navbar-fixed-top navbar-light"
		style="background-color: #692e8c;" role="navigation">
		<div class="container">

			<div class="row">
				<div>
					<a href="/cachorros-mvc/cachorro">
						<div class="col-md-1">
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><img
										src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png"
										height="80" width="80"></li>
								</ul>


							</div>
						</div>
						<div class="col-md-4" style="padding-top: 23px;">
							<div>
								<h1 style="color: deepskyblue;">Adote seu amigo!</h1>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<!-- Coisa do Anderson -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" style="height: 500px;">
					<img
						src="https://media11.s-nbcnews.com/j/MSNBC/Components/Video/202003/DogAdoptionThumbnail.social_share_1200x630_center.jpg">
				</div>
				<div class="item" style="height: 500px;">
					<img
						src="https://www.aspca.org/sites/default/files/nyc-adoption-center-facebook.jpg">
				</div>
				<div class="item" style="height: 500px;">
					<img
						src="https://ewscripps.brightspotcdn.com/dims4/default/ccc8437/2147483647/strip/true/crop/640x360+0+0/resize/1280x720!/quality/90/?url=https%3A%2F%2Fewscripps.brightspotcdn.com%2F18%2F1b%2F1ecff5494c629fa12d02ea7d1efe%2Fa0818372-t-bone.jpg">
				</div>
				<div class="item" style="height: 500px;">
					<img src="https://i.ytimg.com/vi/ZhVNjzKbhK8/maxresdefault.jpg">
				</div>
				<div class="item" style="height: 500px;">
					<img
						src="https://www.stclaircollege.ca/sites/default/files/styles/image_carousel_1320_x_740_/public/paragraphs/image/carousels/2018/pet-adoption-6.jpg?h=0f2818f0&itok=B_ilqbR4">
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a class="btn btn-primary btn-lg"
					href="${contextPath}/cachorro/form?page=cachorro-novo"
					style="margin: 10px; background: #692e8c">Cadastrar Cachorro</a>
				<p class="toolbar">
					<span class="alert"></span>
				</p>
				<c:if test="${not empty messages}">
					<h3 class="alert alert-warning">${messages}</h3>
				</c:if>
				<ul class="list">
					<c:forEach items="${cachorros}" var="cachorro">
						<li class="list-item"><div class="h-100 w-100">
								<div class="box">
									<figure class="avatar">
										<c:if test="${cachorro.sexo.equals('M')}">
											<img id="avatar"
												src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png">
										</c:if>
										<c:if test="${cachorro.sexo.equals('F')}">
											<img id="avatar"
												src="https://karenpryoracademy.com/wp-content/uploads/2017/12/animal-training-classes-clicker-training-karen-pryor-dog-trainer-professional-sticky-header-blueicon.png"
												style="filter: hue-rotate(88deg);">
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
											<td class="actions"><form:form
													action="${contextPath}/cachorro/${cachorro.id}"
													method="delete">

													<a class="btn btn-info btn-xs"
														href="${contextPath}/cachorro/${cachorro.id}">Detalhes</a>
													<a class="btn btn-primary btn-xs"
														href="${contextPath}/cachorro/form?page=cachorro-editar&id=${cachorro.id}">Editar</a>
													<input type="submit" value="Excluir"
														class="btn btn-danger btn-xs">
												</form:form></td>

										</tr>


									</table>
									<br>

								</div>
							</div></li>
					</c:forEach>
				</ul>
				<%-- <table class="table">
					<thead>
						<tr>
							<th data-field="name">Nome</th>
							<th data-field="forks_count">Raça</th>
							<th class="actions" width="220">Ações</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${cachorros}" var="cachorro">
							<tr>
								<td>${cachorro.nome}</td>
								<td>${cachorro.raca}</td>

								<td class="actions"><form:form
										action="${contextPath}/cachorro/${cachorro.id}"
										method="delete">

										<a class="btn btn-info btn-xs"
											href="${contextPath}/cachorro/${cachorro.id}">Detalhes</a>
										<a class="btn btn-primary btn-xs"
											href="${contextPath}/cachorro/form?page=cachorro-editar&id=${cachorro.id}">Editar</a>
										<input type="submit" value="Excluir"
											class="btn btn-danger btn-xs">
									</form:form></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>--%>
			</div>
		</div>
		<hr>
	</div>
	<style>
.list {
	list-style: none;
	display: flex;
	flex-wrap: wrap;
}

.list-item {
	padding: 0;
	flex-basis: 26%;
	margin: 1em;
	min-width: 150px;
}

.w-100 {
	width: 100%;
}

.h-100 {
	height: 100%;
}
</style>
	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>