package com.emergentes.practica_1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ServletLibros", urlPatterns = {"/ServletLibros"} )
public class ServletLibros extends HttpServlet {
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
    var titulo = (String) request.getParameter("titulo");
    var autor = (String) request.getParameter("autor");
    var resumen = (String) request.getParameter("resumen");
    var medio = (String) request.getParameter("medio");
    
    Libro libro = new Libro(titulo, autor, resumen, medio);
    
    request.setAttribute("libro", libro);
    
    request.getRequestDispatcher("RegistroLibrosOut.jsp")
            .forward(request, response);
  }
}
