<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.io.IOException"%>
<%@page import="com.emergentes.practica_1.servlets.Inscripcion"%>

<%
  final JspWriter salida = pageContext.getOut();
  Inscripcion inscripcion = (Inscripcion) request.getAttribute("inscripcion");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>Datos recibidos</h1>
    
    <p><%=inscripcion.getNombre() + " " + inscripcion.getApellidos()%>,
      tomo los cursos en el turno <%=inscripcion.getTurno()%>.
    </p>
    
    <h3>Cursos inscritos</h3>
    <ul>
      <%
        inscripcion.getCursos().forEach(curso -> {
          try {
            salida.println("<li>"+ curso +"</li>");
          } catch(IOException e) {
            e.printStackTrace();
          }
        });
      %>
    </ul>
    <p>Fecha de inscripcion: <%= inscripcion.getFecha()%></p>
    
    <a href="index.jsp">Regresar</a>
  </body>
</html>
