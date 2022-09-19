<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Encuesta Sistemas Operativos</title>
    <style>
      label {
        display: block;
      }
    </style>
  </head>
  <body>
    <h1>Encuesta de Sistemas Operativos</h1>
    
    <form action="EncuestaSisOper" method="POST">
      <label for="txtNombre">Nombre: </label>
      <input id="txtNombre" type="text" 
             name="nombre" placeholder="Ingresa tu nombre">
      <label>
        <input type="checkbox" name="sistemas" value="windows">
        Windows
      </label>
      <label>
        <input type="checkbox" name="sistemas" value="linux">
        Linux
      </label>
      <label>
        <input type="checkbox" name="sistemas" value="ios">
        IOs
      </label>
      <label>
        <input type="checkbox" name="sistemas" value="android">
        Android
      </label>
      
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
