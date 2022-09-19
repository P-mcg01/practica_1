package com.emergentes.practica_1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ServletUsuario", urlPatterns = {"/ServletUsuario"} )
public class ServletUsuarios extends HttpServlet {
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
    var nombre = (String) request.getParameter("nombre");
    var apellidos = (String) request.getParameter("apellidos");
    var correo = (String) request.getParameter("correo");
    var contraseña = (String) request.getParameter("contraseña");
    
    Usuario usuario = new Usuario(nombre, apellidos, correo, contraseña);
    
    request.setAttribute("usuario", usuario);
    request.getRequestDispatcher("UsuariosOut.jsp").forward(request, response);
  }
}
