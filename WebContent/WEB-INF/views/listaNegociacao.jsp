<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Negociação de Mercadorias.</title>

<!-- Bootstrap CSS -->
<link type="text/css" href="resouces/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="resouces/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<script src="resouces/js/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="resouces/js/jquery.min.js"></script>
    <script type="text/javascript" src="resouces/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resouces/js/npm.js"></script>
    <script type="text/javascript" src="resouces/js/bootstrap.js"></script>
	<script type="text/javascript" src="resouces/js/home.js"></script>

<title>Lista tudo </title>
</head>
<body>

	<div class="container">
		
		<div class="form-group">
			<h1>Tela de operações</h1>
			<div class="col-sm-10">
			
				<a href="listaNegociacao" class="btn btn-default">Consulta</a>
				<a href="listaNegociacao" class="btn btn-default">Altera</a>
				<a href="home" class="btn btn-default">Cadastra</a>


			</div>
		</div>

		<div class="form-group">
				
				<div class="col-sm-4">
					<input type="text" class="form-control" 
						placeholder="Procurar por codigo"  name="nomeDaMercadoria">
				</div>
		</div>

		<hr  class="featurette-divider" />

		<div class="form-group">
			<div class="col-sm-10">
				<div class="table-responsive">
					<table class="table table-striped">
						<tr>
							
							<th>Codigo do Produto</th>
							<th>Nome da Mercadoria</th>
							<th>Preço</th>
							<th>Quantidade</th>
							<th>Total</th>
							<th>Tipo da compra</th>
							<th>Tipo da Mercadoria</th>
							<th>Excluir<th>
							
						</tr>
						<c:forEach items="${negocia}" var="negocia">

							<td>${negocia.codigoDaMercadoria}</td>
							<td>${negocia.nomeDaMercadoria}</td>
							<td>${negocia.preco}</td>
							<td>${negocia.qtdMercadoria}</td>
							<td>${negocia.qtdMercadoria*negocia.preco}</td>
							<td>${negocia.tipoDaConta}</td>
							<td>${negocia.tipoDaMercadoria}</td>
							<td><a href="removeNegociacao?codigoDaMercadoria=${negocia.codigoDaMercadoria}">Remover</a></td>
							<td><a href="mostraNegocia?codigoDaMercadoria=${negocia.codigoDaMercadoria}">Alterar</a></td>
							
							</tr>
						</c:forEach>
					</table>

				</div>
			</div>
		</div>
	</div>

</body>
</html>