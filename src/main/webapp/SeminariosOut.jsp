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
    <style>
      body {
        height: 100vh;
        overflow-y: hidden;
        background: linear-gradient(225deg, 
          rgba(141,253,255,1) 0%, 
          rgba(74,165,195,1) 52%, 
          rgba(0,71,138,1) 100%);
        font-family: sans-serif;
      }
      
      h1 {
        text-align: center;
        color: #222;
      }
      
      .container {
        width: 40vw;
        margin: 20vh auto;
        padding: 2em;
        border-radius: 10px;
        background-color: rgba(0, 29, 56, 0.8);
        display: flex;
        color: #eee;
        box-shadow: 10px 10px 15px rgb(0, 0, 0, 0.5);
        flex-flow: column nowrap;
        row-gap: 1em;
      }
      
      a {
        text-align: center;
        text-indent: 1.5em;
        color: #178feb;
        font-weight: 600;
        text-decoration: none;
      }
      
      img {
        width: 10%;
        height: auto;
        margin-right: 1.5em
      }
      
      li {
        list-style-type: disclosure-closed;
        text-transform: capitalize;
      }
      
      span {
        color: #84caff;
        font-weight: 600;
      }
    </style>
  </head>
  <body>
    <h1>Datos recibidos</h1>
    
    <div class="container">
      <p>
        <span>Nombre: </span>
        <%=inscripcion.getNombre() + " " + inscripcion.getApellidos()%>
      </p>
      
      <span>Seminarios inscritos</span>
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
      <p>
        <span>Fecha de inscripcion: </span> <%= inscripcion.getFecha()%><br>
        <span>Turno: </span> <%= inscripcion.getTurno()%>
      </p>

      <a href="index.jsp">
        <img src="img/home.png" /><br>
        Regresar
      </a>      
    </div>
  </body>
</html>
