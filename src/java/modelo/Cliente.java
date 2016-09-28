/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author equipo
 */
public class Cliente {
    
   
    private Integer id;
    private int dni;
    private String apellido;
    private String nombre;
    private String fecha_nac;
    private int nacionalidad_id;
    private int activo;
    
    //lo creo especialmente para date
    private Date fecha;
    private String nomPais;
  
    
    
    public Cliente(Integer documento,String apellido,String nombre, Date fecha, Integer nacionalidad, Integer activo) {
        this.dni=documento;
        this.apellido=apellido;
        this.nombre=nombre;
        this.fecha=fecha;
        this.nacionalidad_id=nacionalidad;
        this.activo=activo;
    }
    
    
    
      public Cliente(int id, int dni, String apellido, String nombre, String fecha_naci, String nacionalidad, int activo) {
    
        this.id=id;
        this.dni=dni;
        this.apellido=apellido;
        this.nombre=nombre;
        this.fecha_nac = fecha_naci;
        this.nomPais=nacionalidad;
        this.activo=activo;
      }
    
    /*
    public Cliente(int id, int dni, String apellido, String nombre, java.sql.Date fecha_naci, int nacioalidad_id, int activo) {
    
        this.id=id;
        this.dni=dni;
        this.apellido=apellido;
        this.nombre=nombre;
        this.fecha_nac = fecha_naci;
        this.nacionalidad_id=nacioalidad_id;
        this.activo=activo;
    
    
    }
*/
 
    /**
     *
     * @param nombre
     * @param apellido
     * @param fecha_nac
     */
    

   

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the dni
     */
    public int getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(int dni) {
        this.dni = dni;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the fecha_nac
     */
    public String getFecha_nac() {
        return fecha_nac;
    }

    /**
     * @param fecha_nac the fecha_nac to set
     */
    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    /**
     * @return the nacionalidad_id
     */
    public int getNacionalidad_id() {
        return nacionalidad_id;
    }

    /**
     * @param nacionalidad_id the nacionalidad_id to set
     */
    public void setNacionalidad_id(int nacionalidad_id) {
        this.nacionalidad_id = nacionalidad_id;
    }

    /**
     * @return the activo
     */
    public int getActivo() {
        return activo;
    }

    /**
     * @param activo the activo to set
     */
    public void setActivo(int activo) {
        this.activo = activo;
    }

    /**
     * @return the fecha
     */
    public Date getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the nomPais
     */
    public String getNomPais() {
        return nomPais;
    }

    /**
     * @param nomPais the nomPais to set
     */
    public void setNomPais(String nomPais) {
        this.nomPais = nomPais;
    }


    
    
    

    
  
    

    
    
}
