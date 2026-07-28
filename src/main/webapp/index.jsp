<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>SkillCash</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow-lg border-0">

        <div class="card-body text-center p-5">

            <img src="assets/img/logo.png"
                 class="img-fluid mb-4"
                 style="max-width:550px;">

            <h3 class="fw-bold">
                Sistema de Gestión de Usuarios
            </h3>

            <p class="text-secondary mb-5">
                Bienvenido a SkillCash. Seleccione una opción para continuar.
            </p>

            <a href="registrar.jsp"
               class="btn btn-success btn-lg px-5">

                👤 Registrar Usuario

            </a>

            <br><br>

            <a href="UsuarioServlet"
               class="btn btn-primary btn-lg px-5">

                📋 Ver Usuarios Registrados

            </a>

        </div>

    </div>

</div>

</body>

</html>