<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.skillcash.modelo.Usuario"%>

<%
List<Usuario> lista = (List<Usuario>) request.getAttribute("listaUsuarios");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Usuarios Registrados</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-4">

<div class="card shadow-lg border-0">

<div class="card-body">

<div class="text-center mb-4">

<img src="assets/img/logo.png"
     style="max-width:350px;"
     class="mb-3">

<h2 class="fw-bold">
Usuarios Registrados
</h2>

<p class="text-secondary">
Administración de usuarios del sistema SkillCash
</p>

</div>

<div class="d-flex justify-content-between mb-3">

<a href="registrar.jsp"
class="btn btn-success">

➕ Nuevo Usuario

</a>

<a href="index.jsp"
class="btn btn-secondary">

🏠 Inicio

</a>

</div>

<table class="table table-bordered table-hover align-middle">

<thead class="table-success">

<tr>

<th>ID</th>

<th>Nombre</th>

<th>Correo</th>

<th width="220">Acciones</th>

</tr>

</thead>

<tbody>

<%
for(Usuario u : lista){
%>

<tr>

<td><%=u.getId()%></td>

<td><%=u.getNombre()%></td>

<td><%=u.getEmail()%></td>

<td>

<a href="UsuarioServlet?accion=editar&id=<%=u.getId()%>"
class="btn btn-warning btn-sm">

✏️ Editar

</a>

<a href="UsuarioServlet?accion=eliminar&id=<%=u.getId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('¿Está seguro de eliminar este usuario?')">

🗑 Eliminar

</a>

</td>

</tr>

<%
}
%>

</tbody>

</table>

<div class="text-end">

<span class="badge bg-success fs-6">

Total usuarios:
<%=lista.size()%>

</span>

</div>

</div>

</div>

</div>

</body>

</html>