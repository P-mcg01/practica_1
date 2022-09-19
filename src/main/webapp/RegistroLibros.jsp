<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de libros</title>
  </head>
  <body>
    <h1>Registro de libros</h1>
    
    <form action="ServletLibros" method="POST">
      <label for="txtTitulo">Titulo</label>
      <input id="txtTitulo" type="text" name="titulo">
      <label for="txtAutor">Autor</label>
      <input id="txtAutor" type="text" name="autor">
      <label for="Resumen"></label>
      <textarea name="resumen" id="Resumen" cols="30" rows="10"></textarea>
      <div class="medio">
        <label>
          <input type="radio" name="medio" value="fisico">
          Físico
        </label>
        <label>
          <input type="radio" name="medio" value="magnetico">
          Magnetico
        </label>
      </div>
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
