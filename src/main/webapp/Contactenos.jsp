<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contactenos</title>
  </head>
  <body>
    <h1>Contactenos</h1>
    
    <form action="ServletContactenos" method="POST">
      <label for="txtNombre">Nombre</label>
      <input id="txtNombre" type="text" name="nombre">
      <label for="txtCorreo">Correo electronico</label>
      <input id="txtCorreo" type="email" 
             name="correo"
             placeholder="alguien@ejemplo.com">
      <label for="txtMensaje">Mensaje</label>
      <textarea name="mensaje" id="txtMensaje" cols="30" rows="10"></textarea>
      <label>
        <input type="checkbox" name="copia">
        Enviar una copia a mi correo
      </label>
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
