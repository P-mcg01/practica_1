package com.emergentes.practica_1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ServletContactenos", urlPatterns = {"/ServletContactenos"} )
public class ServletContactenos extends HttpServlet {
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
    var correo = (String) request.getParameter("correo");
    var msj = (String) request.getParameter("mensaje");
    var copia = request.getParameter("copia") != null;
    
    Mensaje mensaje = new Mensaje(nombre, correo, msj, copia);
    
    request.setAttribute("mensaje", mensaje);
    
    request.getRequestDispatcher("ContactenosOut.jsp").forward(request, response);
  }
}
