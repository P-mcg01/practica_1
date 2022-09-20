<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
      body {
        height: 100vh;
        overflow-y: hidden;
        background-image: url(./img/fondo_2.jpg);
        background-size: cover;
        background-repeat: no-repeat;
        background-origin: border-box;
        background-position: center;
        font-family: sans-serif;
      }
      
      h1 {
        text-align: center;
        color: #EAD4D0;
      }
      
      a {
        height: 10vh;
        padding: 4%;
        flex-basis: 30%;
        color: #e0fff7;
        background-color: rgba(125, 164, 168, 0.1);
        border-radius: 15px;
        border-left: 0.5px solid #EAD4D0;
        border-bottom: 0.5px solid #EAD4D0;
        text-decoration: none;
        text-align: center;
        font-weight: 600;
        font-size: 1.4em;
        backdrop-filter: blur(18px);
        box-shadow: 5px 4px 15px rgba(0, 0, 0, 0.8);
        transition-property: backdrop-filter;
        transition-duration: 0.5s;
        transition-timing-function: ease-in-out;
      }
      
      a:hover {
        text-decoration: underline;
        backdrop-filter: blur(1px);
      }
      
      .container {
        width: 60vw;
        margin: 5em auto;
        display: flex;
        flex-flow: row wrap;
        justify-content: center;
        gap: 20px 20%;
      }
    </style>
  </head>
  <body>
    <h1>Formularios</h1>
    
    <div class="container">
      <a href="SistemasOperativos.jsp">Encuesta sistemas operativos</a>
      <a href="Seminarios.jsp">Inscripción en seminarios</a>
      <a href="Usuarios.jsp">Registro de usuarios</a>
      <a href="Contactenos.jsp">Contáctanos</a>
      <a href="RegistroLibros.jsp">Registro de libros</a>
    </div>
  </body>
</html>
