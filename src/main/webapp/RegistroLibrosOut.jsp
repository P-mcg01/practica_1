<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.practica_1.servlets.Libro"%>

<%
  Libro libro = (Libro) request.getAttribute("libro");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro Libro</title>
  </head>
  <body>
    <h1>Libro Registrado</h1>
    
    <p>Titulo: <%= libro.getTitulo()%></p>
    <p>Autor: <%= libro.getAutor()%></p>
    <p>Resumen: <%= libro.getResumen()%></p>
    <p>Medio: <%= libro.getMedio()%></p>
    
    <a href="index.jsp">Regresar</a>
  </body>
</html>
