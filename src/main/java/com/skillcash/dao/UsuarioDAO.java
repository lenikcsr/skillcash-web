package com.skillcash.dao;

import com.skillcash.conexion.ConexionDB;
import com.skillcash.modelo.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    // INSERTAR
    public void insertar(Usuario usuario) {
        String sql = "INSERT INTO usuarios(nombre, email) VALUES(?, ?)";

        try (Connection conn = ConexionDB.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, usuario.getNombre());
            stmt.setString(2, usuario.getEmail());
            stmt.executeUpdate();

            System.out.println("Usuario insertado");

        } catch (Exception e) {
            System.out.println("Error insertar: " + e.getMessage());
        }
    }

    // CONSULTAR
    public List<Usuario> listar() {
        List<Usuario> lista = new ArrayList<>();
        String sql = "SELECT * FROM usuarios";

        try (Connection conn = ConexionDB.conectar();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                u.setEmail(rs.getString("email"));
                lista.add(u);
            }

        } catch (Exception e) {
            System.out.println("Error listar: " + e.getMessage());
        }

        return lista;
    }
// BUSCAR POR ID
public Usuario buscarPorId(int id) {

    Usuario usuario = null;

    String sql = "SELECT * FROM usuarios WHERE id=?";

    try (Connection conn = ConexionDB.conectar();
         PreparedStatement stmt = conn.prepareStatement(sql)) {

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {

            usuario = new Usuario();

            usuario.setId(rs.getInt("id"));
            usuario.setNombre(rs.getString("nombre"));
            usuario.setEmail(rs.getString("email"));

        }

    } catch (Exception e) {

        System.out.println(e.getMessage());

    }

    return usuario;
}
    // ACTUALIZAR
    public void actualizar(Usuario usuario) {
        String sql = "UPDATE usuarios SET nombre=?, email=? WHERE id=?";

        try (Connection conn = ConexionDB.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, usuario.getNombre());
            stmt.setString(2, usuario.getEmail());
            stmt.setInt(3, usuario.getId());

            stmt.executeUpdate();
            System.out.println("Usuario actualizado");

        } catch (Exception e) {
            System.out.println("Error actualizar: " + e.getMessage());
        }
    }

    // ELIMINAR
    public void eliminar(int id) {
        String sql = "DELETE FROM usuarios WHERE id=?";

        try (Connection conn = ConexionDB.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("Usuario eliminado");

        } catch (Exception e) {
            System.out.println("Error eliminar: " + e.getMessage());
        }
    }
}
