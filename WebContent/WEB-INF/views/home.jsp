<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

<link type="text/css" href="resouces/css/bootstrap.min.css" rel="stylesheet" />


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../js/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/npm.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/home.js"></script>

<!-- da pagina CSS -->
<link href="../css/home.css" rel="stylesheet">

</head>
<body>

	<div class="container">
		<form class="form-horizontal" method="post" action="adicionaNegociacao">
			
			<!-- inicio tipo de Negocio. -->
			<div class="form-group">
				<h1 >Negociação de Mercadorias</h1>
				<label for="inputTipoMercadoria" class="col-sm-2 control-label">Tipo
					da Negocio</label>
				<div class="col-sm-10">

					<div class="radio">
						<label> <input type="radio" name="tipoDaConta"
							id="blankRadio1" value="Compra">Compra
						</label> <label> <input type="radio" name="tipoDaConta"
							id="blankRadio1" value="Venda">Venda
						</label>
					</div>
				</div>
				<!-- fim tipo de Negocio -->
			
			<div class="form-group">
				

				<label
					for="inputCodMercadoria" class="col-sm-2 control-label">Código
					da Mercadoria</label>
				<div class="col-sm-10">
					<input name="codigoDaMercadoria" type="number" class="form-control" id="inputCodMercadoria"
						placeholder="Código da Mercadoria."  max="9999" min="1"  required value="">
				</div>
			</div>

			<!-- tipo de mercadoria. -->
			<div class="form-group">
				<label for="inputTipoMercadoria" class="col-sm-2 control-label">Tipo
					da Mercadoria</label>
				<div class="col-sm-10">

					<div class="radio">
						<label> <input type="radio" name="tipoDaMercadoria"
							id="blankRadio1" value="Roupas" >Roupas
						</label><br> <label> <input type="radio" name="tipoDaMercadoria"
							id="blankRadio1" value="Cosmeticos">Cosmeticos
						</label><br> <label> <input type="radio" name="tipoDaMercadoria"
							id="blankRadio1" value="Bebidas">Bebidas
						</label><br> <label> <input type="radio" name="tipoDaMercadoria"
							id="blankRadio1" value="Eletronicos">Eletronicos
						</label><br> <label> <input type="radio" name="tipoDaMercadoria"
							id="blankRadio1" value="Informatica">Informatica
						</label><br>


					</div>
				</div>
				
  			</div>
							<!-- fim tipo de mercadoria. -->

			<!-- inicio Nome. -->
			<div class="form-group">
				<label for="exampleInputName2" class="col-sm-2 control-label">Nome
					da Mercadoria</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="exampleInputName2"
						placeholder="Nome da Mercadoria" required value="" name="nomeDaMercadoria">
				</div>
			</div>
			<!-- fim Nome. -->


			<!-- inicio Quantidade. -->

			<div class="form-group">
				<label for="exampleInputQTD" class="col-sm-2 control-label">Quantidade</label>
				<div class="col-sm-2">
					<input type="number" class="form-control" id="exampleInputQTD"
						max="9" min="1" pattern="[0-9]+$" required="required" maxlength="5" name="qtdMercadoria">
				</div>
			</div>
			<!-- fim Quantidade. -->

			

				<!-- Inicio preço. -->
				<div class="form-group">

					<label for="exampleInputName2" class="col-sm-2 control-label">Preço</label>
					<div class="col-sm-2">
						<input class="form-control" type="number"
							placeholder="Valor se for por compra" name="preco">
					</div>
				</div>
				<!-- Fim preçoa. -->



				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Enviar</button>
						<a href="listaNegociacao" class="btn btn-default">Lista</a>
					</div>
				</div>
		</form>
		
	</div>
	<!-- /.container -->




</body>
</html>