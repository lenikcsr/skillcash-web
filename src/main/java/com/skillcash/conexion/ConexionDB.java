package com.skillcash.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {

    private static final String URL = "jdbc:mysql://localhost:3306/skillcash";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection conectar() {
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(URL, USER, PASSWORD);

        System.out.println("Conexión exitosa");

    } catch (ClassNotFoundException | SQLException e) {
    }

    return conn;
 }
}