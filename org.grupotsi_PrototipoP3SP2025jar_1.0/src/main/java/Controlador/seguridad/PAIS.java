/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.seguridad;

/**
 *
 * @author visitante
 */
public class Pais {

    public Pais(int id_pais, String nombre_pais) {
        this.id_pais = id_pais;
        this.nombre_pais = nombre_pais;
    }

    public int getId_pais() {
        return id_pais;
    }

    public String getNombre_pais() {
        return nombre_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    public void setNombre_pais(String nombre_pais) {
        this.nombre_pais = nombre_pais;
    }

    @Override
    public String toString() {
        return "Pais{" + "id_pais=" + id_pais + ", nombre_pais=" + nombre_pais + '}';
    }
    
    int id_pais;
    String nombre_pais;
    
    

    
    public Pais() {
    }
   
}
