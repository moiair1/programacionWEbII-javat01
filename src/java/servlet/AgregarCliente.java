/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import java.io.IOException;

import modelo.Cliente;
import dao.DAOControlador;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*

*
 *
 *
 * @author equipo
 */


//recibir paramemtrnos de request  
//validar
//guardato dato
//redireccionar


//@WebServlet(name = "AgregarCliente", urlPatterns = {"/AgregarCliente.do"})

public class AgregarCliente extends HttpServlet {
    

    public  String mensaje="hola mundo";
    public  boolean ok=false;
 
    
     public Date string_fecha(String fecha){
    
        try {
            DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
            java.util.Date dtt = df.parse(fecha);
            java.sql.Date ds = new java.sql.Date(dtt.getTime());
           // System.out.println(ds);//Mon Jul 05 00:00:00 IST 2010
            return ds;
        } catch (ParseException ex) {
            Logger.getLogger(AgregarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HashMap<String, Object> errores = new HashMap();
        
         Integer dni=null;
         String fecha_nacimiento=null;
         Date fecha=null;
         Integer nacionalidad=null;
         
         
        String documento = request.getParameter("dni");
        if (documento==null || documento.equals("")) {     
            errores.put("dni", "Documento invalido!!! ingrese nuevamente");
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("/WEB-INF/JSP/Vistas/insertar_cliente.jsp").forward(request, response);           
         }else{
           dni = Integer.valueOf(documento); 
         }
  
        String apellido = request.getParameter("apellido");
        String nombre = request.getParameter("nombre");
        String nompais = request.getParameter("nacionalidad_id");

        Integer activo = Integer.valueOf(request.getParameter("activo"));

        
        if (apellido==null || apellido.equals("")) {
            errores.put("apellido", "Apellido invalido!!! ingrese nuevamente");
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("/WEB-INF/JSP/Vistas/insertar_cliente.jsp").forward(request, response); 
         }
        
        if (nombre==null || nombre.equals("")) {
            errores.put("nombre", "Nombre invalido!!! ingrese nuevamente");
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("/WEB-INF/JSP/Vistas/insertar_cliente.jsp").forward(request, response); 
        }
         
          fecha_nacimiento = request.getParameter("fecha_nac");
        
         if (fecha_nacimiento==null || fecha_nacimiento.equals("")) {
            errores.put("fecha_nac", "Fecha invalido!!! ingrese nuevamente");
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("/WEB-INF/JSP/Vistas/insertar_cliente.jsp").forward(request, response); 
       }else{
            fecha=string_fecha(fecha_nacimiento);
         }
         
       
            nompais=request.getParameter("nacionalidad_id");
             nacionalidad = Integer.valueOf(nompais);

          
             
             
             
             
             
             
           if (errores.isEmpty()) {
                Cliente n = new Cliente(dni,apellido,nombre,fecha,nacionalidad,activo);
              DAOControlador da = new DAOControlador();
              da.agregarCliente(n);
              response.sendRedirect("ListarCliente");
              
          }       
              

    }

  
    
      

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
       request.setAttribute("paises", DAOControlador.listaDePaises());
       request.getRequestDispatcher("/WEB-INF/JSP/Vistas/insertar_cliente.jsp").forward(request, response);

        
        processRequest(request, response);
        
        
             
           }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        processRequest(request, response);
        
        
    }

    
    
    
    
    
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
