<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.practica_1.servlets.Usuario"%>

<%
  Usuario usuario = (Usuario) request.getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de usuarios</title>
  </head>
  <body>
    <h1>Datos recibidos</h1>
    
    <p>Nombre: <%= usuario.getNombre() + " " + usuario.getApellido()%></p>
    <p>Correo electronico: <%= usuario.getCorreo()%></p>
    <p>Contraseña: <%= usuario.getContraseña()%></p>
    
    <a href="index.jsp">Regresar</a>
  </body>
</html>
