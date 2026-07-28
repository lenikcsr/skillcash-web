package com.skillcash.servlet;

import com.skillcash.dao.UsuarioDAO;
import com.skillcash.modelo.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {

    // Muestra la lista de usuarios
   @Override
protected void doGet(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {

    UsuarioDAO dao = new UsuarioDAO();

    String accion = request.getParameter("accion");

    if (accion == null) {

        request.setAttribute("listaUsuarios", dao.listar());

        request.getRequestDispatcher("usuarios.jsp")
                .forward(request, response);

    } else if (accion.equals("editar")) {

    int id = Integer.parseInt(request.getParameter("id"));

    Usuario usuario = dao.buscarPorId(id);

    request.setAttribute("usuario", usuario);

    request.getRequestDispatcher("editar.jsp")
            .forward(request, response);

} else if (accion.equals("eliminar")) {

    int id = Integer.parseInt(request.getParameter("id"));

    dao.eliminar(id);

    response.sendRedirect("UsuarioServlet");

}
}

    // Guarda un nuevo usuario
    @Override
protected void doPost(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {

    UsuarioDAO dao = new UsuarioDAO();

    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String email = request.getParameter("email");

    if (id == null || id.isEmpty()) {

        // INSERTAR
        Usuario usuario = new Usuario(nombre, email);
        dao.insertar(usuario);

    } else {

        // ACTUALIZAR
        Usuario usuario = new Usuario(nombre, email);
        usuario.setId(Integer.parseInt(id));

        dao.actualizar(usuario);

    }

    response.sendRedirect("UsuarioServlet");
 }
}