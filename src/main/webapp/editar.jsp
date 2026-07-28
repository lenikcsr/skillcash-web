<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.skillcash.modelo.Usuario"%>

<%
Usuario usuario=(Usuario)request.getAttribute("usuario");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Editar Usuario</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow-lg border-0">

<div class="card-body p-5">

<div class="text-center">

<img src="assets/img/logo.png"
style="max-width:350px;"
class="mb-4">

<h3>Editar Usuario</h3>

<p class="text-secondary">

Modifique la información y guarde los cambios.

</p>

</div>

<form action="UsuarioServlet" method="post">

<input
type="hidden"
name="accion"
value="actualizar">

<input
type="hidden"
name="id"
value="<%=usuario.getId()%>">

<div class="mb-3">

<label class="form-label">Nombre</label>

<input
class="form-control"
type="text"
name="nombre"
value="<%=usuario.getNombre()%>"
required>

</div>

<div class="mb-4">

<label class="form-label">Correo</label>

<input
class="form-control"
type="email"
name="email"
value="<%=usuario.getEmail()%>"
required>

</div>

<div class="text-center">

<button class="btn btn-warning btn-lg">

Actualizar

</button>

<a href="UsuarioServlet"
class="btn btn-primary btn-lg">

Volver

</a>

</div>

</form>

</div>

</div>

</div>

</body>

</html>