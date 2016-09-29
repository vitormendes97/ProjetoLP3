/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.controller;

import com.br.seriesproject.dao.UserInfoDAO;
import com.br.seriesproject.dao.UsuarioDAO;
import com.br.seriesproject.model.Userinfo;
import com.br.seriesproject.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rosangela
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {
    UserInfoDAO userInfoDAO = lookupUserInfoDAOBean();
    UsuarioDAO usuarioDAO = lookupUsuarioDAOBean();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
            
            Userinfo info = new Userinfo();
            info.setCelular("11959260151");
            info.setEmail("maeda@gmail.com");
            info.setGenero("F");
            info.setNome("princesa");
            
            Date data = new Date();
             SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
             java.sql.Date sqldate;
            try { 
                data = sdf.parse("1970-12-01");
                 sqldate = new java.sql.Date(data.getTime());
                 info.setDataNasc(data);
                out.print(sqldate);
            } catch (ParseException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            
            
            Usuario u = new Usuario();
            u.setUsername("Maeda");
            u.setPassword("1234566");
            
            info.setUsuario(u);
            
            usuarioDAO.insert(u);
            info.setIdUserinfo(u.getIdUser());
            u.setUserinfo(info);
            usuarioDAO.update(u);
            
          
            out.println(u);
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

    private UsuarioDAO lookupUsuarioDAOBean() {
        try {
            Context c = new InitialContext();
            return (UsuarioDAO) c.lookup("java:global/SeriesProjectV2/SeriesProjectV2-ejb/UsuarioDAO!com.br.seriesproject.dao.UsuarioDAO");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private UserInfoDAO lookupUserInfoDAOBean() {
        try {
            Context c = new InitialContext();
            return (UserInfoDAO) c.lookup("java:global/SeriesProjectV2/SeriesProjectV2-ejb/UserInfoDAO!com.br.seriesproject.dao.UserInfoDAO");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

 

}
