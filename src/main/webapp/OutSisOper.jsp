<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.io.IOException"%>
<%@page import="jakarta.servlet.jsp.JspWriter"%>
<%@page import="com.emergentes.practica_1.servlets.Encuesta"%>

<% Encuesta encuesta = (Encuesta) request.getAttribute("encuesta");
   ArrayList<String> sistemas = encuesta.getSistemas();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Encuesta sistemas operativos</title>
  </head>
  <body>
    <h1>Gracias por llenar la encuesta.</h1>
    
    <p>los datos recibidos son: </p>
    <p>Nombre <%=encuesta.getNombre()%>, y los sistemas operativos
      seleccionados son:
    </p>
    <ul>
    <%
      final JspWriter salida = pageContext.getOut();
      
      sistemas.forEach(os -> {
        try {
          salida.println("<li>" + os + "</li>");
        } catch(IOException e) {
          System.out.print("Error de lectura");
        }
      });
    %>
    <ul>
    <a href="index.jsp">Regresar</a>
  </body>
</html>
