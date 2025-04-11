/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.seguridad;

import Controlador.seguridad.Pais; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import Modelo.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author visitante
 */
public class PaisDAO {

    private static final String SQL_SELECT = "SELECT id_pais, nombre_pais FROM pais";
    private static final String SQL_INSERT = "INSERT INTO perfiles(id_pais, nombre_pais) VALUES( ?, ?)";
    private static final String SQL_UPDATE = "UPDATE perfiles SET nombre_pais=? WHERE id_pais = ?";
    private static final String SQL_DELETE = "DELETE FROM pais WHERE id_pais=?";
    private static final String SQL_QUERY = "SELECT id_pais, nombre_pais FROM pais WHERE id_pais = ?";

    public List<Pais> select() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Pais pais = null;
        List<Pais> paises = new ArrayList<Pais>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idPais = rs.getInt("id_pais");
                String nombrePais = rs.getString("nombre_pais");
                pais = new Pais();
                pais.setId_pais(idPais);
                pais.setNombre_pais(nombrePais);
                
                paises.add(pais);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return paises;
    }

    public int insert(Pais pais) { 
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setInt(1, pais.getId_pais());
            stmt.setString(2, pais.getNombre_pais());

            System.out.println("ejecutando query: " + SQL_INSERT);
            rows = stmt.executeUpdate();
            System.out.println("Registros afectados: " + rows);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;
    }

    public int update(Pais pais) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            System.out.println("ejecutando query: " + SQL_UPDATE);
            stmt = conn.prepareStatement(SQL_UPDATE);
            
            stmt.setString(1, pais.getNombre_pais());
            
            rows = stmt.executeUpdate();
            System.out.println("Registros actualizado: " + rows);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;
    }

    public int delete(Pais pais) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            System.out.println("Ejecutando query: " + SQL_DELETE);
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, pais.getId_pais());
            rows = stmt.executeUpdate();
            System.out.println("Registros eliminados: " + rows);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;
    }

    public Pais query(Pais pais) {    
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Pais> paises = new ArrayList<Pais>();
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            System.out.println("Ejecutando query: " + SQL_QUERY);
            stmt = conn.prepareStatement(SQL_QUERY);
            stmt.setInt(1, pais.getId_pais());
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idPerfil = rs.getInt("id_perfil");
                String nombrePerfil = rs.getString("nombre_perfil");
                String estatusPerfil = rs.getString("estatus_perfil");
                
                pais = new Pais();
                pais.setId_pais(idPerfil);
                pais.setNombre_pais(nombrePerfil);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return pais; 
    }
        
}
