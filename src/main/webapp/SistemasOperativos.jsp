<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Encuesta Sistemas Operativos</title>
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
        margin: 20vh auto;
        padding: 2em;
        border-radius: 10px;
        background-color: rgba(0, 29, 56, 0.8);
        display: flex;
        color: #eee;
        box-shadow: 10px 10px 15px rgb(0, 0, 0, 0.5);
        flex-flow: column nowrap;
        row-gap: 3em;
      }
      
      input[type="text"] {
        outline: none;
        border: none;
        background-color: rgba(255, 255, 255, 0.1);
        font-size: 1.1em;
        color: #ddd;
        padding: 10px 20px;
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
      
      .checkPanel {
        display: flex;
        flex-flow: row wrap;
        justify-content: space-between;
      }
    </style>
  </head>
  <body>
    <h1>Encuesta de Sistemas Operativos</h1>
    
    <form action="EncuestaSisOper" method="POST">
      <div>
        <label for="txtNombre">Nombre: </label>
        <input id="txtNombre" type="text" 
               name="nombre" placeholder="Ingresa tu nombre">
      </div>
      <div class="checkPanel">
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
      </div>
      
      <button type="submit">Enviar</button>
    </form>
  </body>
</html>
