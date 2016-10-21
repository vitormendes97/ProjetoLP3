/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.command;

import com.br.seriesproject.dao.UsuarioDAO;
import com.br.seriesproject.model.Userinfo;
import com.br.seriesproject.model.Usuario;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.registry.infomodel.User;

public class UsuarioCommand implements Command {

    UsuarioDAO usuarioDAO = lookupUsuarioDAOBean();

    private HttpServletRequest request;
    private HttpServletResponse response;
    private String responsePage;

    @Override
    public void init(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    @Override
    public void execute() {

        String action = request.getParameter("command").split("\\.")[1];
        java.sql.Date sqldate;
        switch (action) {

            case "Registrar":
                // Para usuário
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String confirm = request.getParameter("password2");

                // Para userinfo
                String name = request.getParameter("nome");
                String phone = request.getParameter("cel");
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");
                String birth = request.getParameter("birth");

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date birthday = new Date();
                try {
                    birthday = sdf.parse(birth);
                    sqldate = new java.sql.Date(birthday.getTime());
                } catch (ParseException ex) {
                    Logger.getLogger(UsuarioCommand.class.getName()).log(Level.SEVERE, null, ex);
                }

                if (usuarioDAO.readByUsername(username) != null) {

                    if (usuarioDAO.readByUsername(username).getUserinfo().getEmail().equalsIgnoreCase(email)) {
                        this.request.getSession().setAttribute("error", "Email já esta sendo usado");
                    } else {
                        this.request.getSession().setAttribute("error", "Já existe um usuário com este usuário");
                    }
                    this.responsePage = "erro.jsp";
                    break;
                } else if (!password.equals(confirm)) {
                    this.request.getSession().setAttribute("error", "Senhas não conferem");
                    this.responsePage = "erro.jsp";
                    break;
                } else {
                    Userinfo info = new Userinfo();
                    info.setNome(name);
                    info.setGenero(gender);
                    info.setCelular(phone);
                    info.setEmail(email);
                    info.setDataNasc(birthday);

                    Usuario user = new Usuario();
                    user.setUsername(username);
                    user.setPassword(password);

                    info.setUsuario(user);

                    usuarioDAO.insert(user);
                    info.setIdUserinfo(user.getIdUser());
                    user.setUserinfo(info);

                    usuarioDAO.update(user);

                    this.request.getSession().setAttribute("usuario", user);
                    this.responsePage = "entrada.jsp";

                }
                break;

            case "Logout":
                this.request.getSession().invalidate();
                this.responsePage = "login.jsp";
                
                break;
                
            case "Login":
                String usuario = request.getParameter("username");
                String senha = request.getParameter("password");
                
                Usuario u = usuarioDAO.readByUsername(usuario);
                
                if(u == null){
                    this.request.getSession().setAttribute("error", "Essa conta não existe");
                    this.responsePage = "erro.jsp";
                    break;
                }
                else if(u.getUsername().equals(usuario) && u.getPassword().equals(senha)){
                    this.request.getSession().setAttribute("usuario", u);
                    this.responsePage = "entrada.jsp";
                    break;
                }
                else if(!u.getUsername().equals(usuario) || !u.getPassword().equals(senha)){
                    this.request.getSession().setAttribute("error", "Usuário e/ou senha incorreto");
                    this.responsePage = "erro.jsp";
                    break;
                }
                
                break;
        }

    }

    @Override
    public String getResponsePage() {
        return this.responsePage;
    }

    private UsuarioDAO lookupUsuarioDAOBean() {
        try {
            Context c = new InitialContext();
            return (UsuarioDAO) c.lookup("java:global/SeriesProjectV2/SeriesProjectV2-ejb/UsuarioDAO!com.br.seriesproject.dao.UsuarioDAO");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
