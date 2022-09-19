<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de usuarios</title>
  </head>
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
