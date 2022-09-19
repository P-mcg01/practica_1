<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.practica_1.servlets.Mensaje"%>

<%
  Mensaje mensaje = (Mensaje) request.getAttribute("mensaje");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mensaje</title>
  </head>
  <body>
    <h1>Mensaje enviado</h1>
    
    <p>Nombre: <%= mensaje.getNombre()%></p>
    <p>Correo electronico: <%= mensaje.getCorreo()%></p>
    <p>Mensaje: <%= mensaje.getMensaje()%></p>
    <%
      out.println(
              mensaje.getEnviarCopia()  ?
              "<p>Se enviara una copia a tu correo.</p>" :
              "<p>Gracias por responser</p>"
      );
    %>
    
    <a href="index.jsp">Regresar</a>
  </body>
</html>
