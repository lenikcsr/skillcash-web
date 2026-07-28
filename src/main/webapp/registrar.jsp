<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Registrar Usuario</title>

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

<h3>Registrar Usuario</h3>

<p class="text-secondary">
Ingrese la información del nuevo usuario.
</p>

</div>

<form action="UsuarioServlet" method="post">

<div class="mb-3">

<label class="form-label">Nombre</label>

<input
class="form-control"
type="text"
name="nombre"
required>

</div>

<div class="mb-4">

<label class="form-label">Correo electrónico</label>

<input
class="form-control"
type="email"
name="email"
required>

</div>

<div class="text-center">

<button class="btn btn-success btn-lg">

Guardar Usuario

</button>

<a href="UsuarioServlet"
class="btn btn-primary btn-lg">

Ver Usuarios

</a>

<a href="index.jsp"
class="btn btn-secondary btn-lg">

Inicio

</a>

</div>

</form>

</div>

</div>

</div>

</body>

</html>