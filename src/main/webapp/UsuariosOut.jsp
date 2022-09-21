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
      row-gap: 1.5em;
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
      
    p {
      margin: 0;
    }
  </style>
  <body>
    <h1>Datos recibidos</h1>
    
    <div class="container">
      <p><span>Nombre: </span>
        <%= usuario.getNombre() + " " + usuario.getApellido()%></p>
      <p><span>Correo electronico: </span>
        <%= usuario.getCorreo()%></p>
      <p><span>Contraseña: </span>
        <%= usuario.getContraseña()%></p>
      
      <a href="index.jsp">
        <img src="img/home.png" /><br>
        Regresar
      </a>
    </div>
  </body>
</html>
