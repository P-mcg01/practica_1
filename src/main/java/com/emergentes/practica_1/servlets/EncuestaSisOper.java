package com.emergentes.practica_1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.stream.Collectors;

@WebServlet(name="EncuestaSisOper", urlPatterns = {"/EncuestaSisOper"} )
public class EncuestaSisOper extends HttpServlet {
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
    var nombre = request.getParameter("nombre");
    var sis = request.getParameterValues("sistemas");
    ArrayList<String> sistemas = Arrays.stream(sis)
            .collect(Collectors.toCollection(ArrayList::new));
    
    Encuesta encuesta = new Encuesta();
    encuesta.setNombre(nombre);
    encuesta.setSistemas(sistemas);
    
    request.setAttribute("encuesta", encuesta);
    
    request.getRequestDispatcher("OutSisOper.jsp").forward(request, response);
  }
}
