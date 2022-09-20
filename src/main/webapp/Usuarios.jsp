<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      
      form {
        width: 40vw;
        margin: 10vh auto;
        padding: 2em;
        border-radius: 10px;
        background-color: rgba(0, 29, 56, 0.8);
        display: flex;
        color: #eee;
        box-shadow: 10px 10px 15px rgb(0, 0, 0, 0.5);
        flex-flow: column nowrap;
        row-gap: 0.5em;
      }
      
      input {
        outline: none;
        border: none;
        background-color: rgba(255, 255, 255, 0.1);
        font-size: 1.1em;
        color: #ddd;
        padding: 10px 20px;
        margin-bottom: 1em;
      }
      
      ::placeholder {
        color: #ccc;
      }
      
      button[type="submit"] {
        color: #222;
        background-color: rgb(74,165,195);
        border: none;
        padding: 16px 20px;
        align-self: center;
        font-size: 1.1em;
        border-radius: 10px;
      }
  </style>
  <body>
    <h1>Registro de usuarios</h1>
    
    <form action="ServletUsuario" method="POST">
      <label for="txtNombre">Nombre</label>
      <input id="txtNombre" type="text" name="nombre">
      <label for="txtApellido">Apellido</label>
      <input id="txtApellido" type="text" name="apellidos">
      <label for="txtCorreo">Correo electronico</label>
      <input id="txtCorreo" type="email" 
             name="correo"
             placeholder="alguien@ejemplo.com">
      <label for="txtPassword">Contraseña</label>
      <input id="txtPassword" type="password" name="contraseña">
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
