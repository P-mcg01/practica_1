<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inscripcion Seminarios</title>
  </head>
  <body>
    <h1>Inscripcion en seminarios</h1>
    
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
      
      <div class="cursos">
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
      </div>
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
