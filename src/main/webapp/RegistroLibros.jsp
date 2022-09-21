<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de libros</title>
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
      
    input,
    textarea {
        outline: none;
        border: none;
        background-color: rgba(255, 255, 255, 0.1);
        font-size: 1.1em;
        color: #ddd;
        padding: 10px 20px;
        margin-bottom: 1em;
      }
      
    ::placeholder {
        color: #aaa;
        font-size: 0.8em;
        font-weight: 300;
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
      
    .medio {
        display: flex;
        flex-flow: column nowrap;
        row-gap: 0.2em;
        padding-left: 1em;
      }
  </style>
  <body>
    <h1>Registro de libros</h1>
    
    <form action="ServletLibros" method="POST">
      <label for="txtTitulo">Titulo</label>
      <input id="txtTitulo" type="text" name="titulo">
      <label for="txtAutor">Autor</label>
      <input id="txtAutor" type="text" name="autor">
      <label for="Resumen">Resumen: </label>
      <textarea name="resumen" id="Resumen" cols="30" rows="10"></textarea>
      <fieldset class="medio">
        <legend>Medio</legend>
        <label>
          <input type="radio" name="medio" value="fisico">
          Físico
        </label>
        <label>
          <input type="radio" name="medio" value="magnetico">
          Magnetico
        </label>
      </fieldset>
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
