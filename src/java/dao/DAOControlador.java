/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import conexion.Conexion;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import modelo.Cliente;
import modelo.Paises;
import org.apache.coyote.ajp.Constants;

public class DAOControlador {
    
  
    public void agregarCliente(Cliente cliente) {
 
        try {
            String query = "insert into clientes (dni,apellido,nombre,fecha_nac,nacionalidad_id,activo) VALUES (?,?,?,?,?,?)";
            
            PreparedStatement prs = Conexion.getPreparedStatement(query);
            
            prs.setInt(1, cliente.getDni());
            prs.setString(2, cliente.getApellido());
            prs.setString(3, cliente.getNombre());            
            prs.setDate(4, (Date) cliente.getFecha());
            prs.setInt(5, cliente.getNacionalidad_id());
            prs.setInt(6, cliente.getActivo());
        
            
            if (cliente.getApellido().equals("")) {
                listaMensajes("error en apellido");
            }else{
            prs.executeUpdate();
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
	}
    
    

    
    
    
    
    //lista clientes convertiendo la edad
    
      public static List<Cliente> listarCliente(){
     
          List<Cliente> ls =new LinkedList<Cliente>();
     //    
     
        try {
            ResultSet rs = Conexion.getPreparedStatement
                  ("SELECT clientes.id, clientes.dni, clientes.apellido,clientes.nombre, TIMESTAMPDIFF(YEAR,clientes.fecha_nac,CURDATE()) as edad, paises.nombre as p_nombre, clientes.activo "
                          + "FROM clientes LEFT JOIN paises ON paises.id = clientes.nacionalidad_id").executeQuery();
            while(rs.next()){
               
             Cliente consulta = new Cliente(rs.getInt(1),rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getInt(7));

             ls.add(consulta);
            }
        } catch (SQLException ex) {
          Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
      
      
  //te entrega lista de paises para seleccionar    
      public static List<Paises> listaDePaises(){
     
          List<Paises> paises =new LinkedList<Paises>();
     //    
     
        try {
            ResultSet rs = Conexion.getPreparedStatement
                  ("SELECT * FROM paises ").executeQuery();
            while(rs.next()){
               
               Paises consulta = new Paises(rs.getInt(1),rs.getString(2), rs.getString(3));

              paises.add(consulta);
            }
        } catch (SQLException ex) {
          Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return paises;
    }   
  
 
 public static List<String> listaMensajes(String mensaje){
  
     List<String> mensajes =new LinkedList<String>();
     
     mensajes.add(mensaje);
 
     return mensajes;
 }  
 
 
     public static List<Cliente> getID(int id){
     List<Cliente> ls = new LinkedList<Cliente>();
            
            //String sql = "select * from clientes where id = "+id;
            
              String sql = "SELECT clientes.id, clientes.dni, clientes.apellido,clientes.nombre, clientes.fecha_nac, paises.nombre as pais, clientes.activo "
                          + "FROM clientes LEFT JOIN paises ON paises.id = clientes.nacionalidad_id WHERE clientes.id="+id;
        
        try {
  
            ResultSet rs = Conexion.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Cliente consulta = new Cliente(rs.getInt(1),rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getInt(7));
                ls.add(consulta);
            }
    
                } catch (SQLException ex) {
                    Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
                }
          return ls;

        }
        
 

public void eliminar(int id){
        try {
            String sql = "delete Clientes where id = ?";
            PreparedStatement ps = Conexion.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
  
    }   catch (ClassNotFoundException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DAOControlador.class.getName()).log(Level.SEVERE, null, ex);
        }

}
}

