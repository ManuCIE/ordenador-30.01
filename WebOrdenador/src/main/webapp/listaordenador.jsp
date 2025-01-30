<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="es.curso.negocio.Ordenador"%>
<%@ page import="es.curso.repositories.OrdenadorRepository"%>
<%@ page import="es.curso.repositories.jdbc.OrdenadorRepositoryJDBC"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDENADORES</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<h1>Biblioteca CIE</h1>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<div class="container">


		<%
		OrdenadorRepository repo = new OrdenadorRepositoryJDBC();

		List<Ordenador> lista = (List<Ordenador>) request.getAttribute("lista");
		%>


		<h1>Listado de ordenadores</h1>



		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>MARCA</th>
					<th>MODELO</th>
					<th>PRECIO</th>
				</tr>
			</thead>


			<%
			for (Ordenador o : lista) {
			%>

			<tr>
				<td><%=o.getMarca()%></td>
				<td><%=o.getModelo()%></td>
				<td><%=o.getPrecio() + " €"%></td>
			</tr>
			<%
			}
			%>
		</table>

		<a href="?comando=formularioordenador"> Insertar ordenador </a>
</body>
</html>