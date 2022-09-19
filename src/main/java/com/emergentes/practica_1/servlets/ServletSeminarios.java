package com.emergentes.practica_1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.time.LocalDate;
import java.util.stream.Collectors;

@WebServlet(name="ServletSeminarios", urlPatterns = {"/ServletSeminarios"} )
public class ServletSeminarios extends HttpServlet {
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
    
    var fecha = LocalDate.parse((String) request.getParameter("fecha"));
    var nombre = (String) request.getParameter("nombre");
    var apellidos = request.getParameter("apellidos");
    var turno = request.getParameter("turno");
    var cursos = Arrays.stream(
            request.getParameterValues("cursos")
          ).collect(Collectors
           .toCollection(ArrayList::new));
    
    Inscripcion inscripcion = new Inscripcion();
    inscripcion.setFecha(fecha);
    inscripcion.setNombre(nombre);
    inscripcion.setApellidos(apellidos);
    inscripcion.setTurno(turno);
    inscripcion.setCursos(cursos);
            
    
    request.setAttribute("inscripcion", inscripcion);
    
    request.getRequestDispatcher("SeminariosOut.jsp").forward(request, response);
  }
}
