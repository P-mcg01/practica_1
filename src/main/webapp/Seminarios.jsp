<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inscripcion Seminarios</title>
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
        row-gap: 1.5em;
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
      
      .datos {
        display: flex;
        flex-flow: column nowrap;
        row-gap: 0.5em;
      }
      
      input[type="text"],
      input[type="date"],
      select {
        outline: none;
        border: none;
        background-color: rgba(255, 255, 255, 0.1);
        color: #ddd;
        padding: 8px 10px;
        margin-bottom: 1em;
      }
      
      ::placeholder {
        color: #ccc;
      }
      
      fieldset {
        display: flex;
        flex-flow: column nowrap;
        padding-left: 2em;
        row-gap: 0.5em;
      }
    </style>
  </head>
  <body>
    <h1>Inscripción en seminarios</h1>
    
    <form action="ServletSeminarios" method="POST">
      <div class="datos">
        <label for="txtFecha">Fecha</label>
        <input id="txtFecha" type="date" 
               name="fecha" pattern="\d{2}-\d{2}-\d{4}">
        <label for="txtNombre">Nombre</label>
        <input id="txtNombre" type="text" name="nombre">
        <label for="txtApellidos">Apellidos</label>
        <input id="txtApellidos" type="text" name="apellidos">
        <label for="txtTurno">Turno</label>
        <select name="turno" id="txtTurno">
          <option value="" selected>--selecciona una opcion--</option>
          <option value="mañana">Mañana</option>
          <option value="tarde">Tarde</option>
          <option value="noche">Noche</option>
        </select>
      </div>
      
      <fieldset>
        <legend>Seminarios</legend>
          <label>
            <input type="checkbox" name="cursos" value="5G">
            5G
          </label>
          <label>
            <input type="checkbox" name="cursos" 
                   value="Inteligencia artificial">
            Inteligencia artificial
          </label>
          <label>
            <input type="checkbox" name="cursos" value="Machine Learning">
            Machine Learning
          </label>
          <label>
            <input type="checkbox" name="cursos" value="Robotica">
            Robotica
          </label>          
      </fieldset>
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
