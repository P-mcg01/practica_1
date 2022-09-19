package com.emergentes.practica_1.servlets;

public class Mensaje {
  private String nombre;
  private String correo;
  private String mensaje;
  private boolean enviarCopia;

  public Mensaje() {
  }

  public Mensaje(String nombre, String correo, 
          String mensaje, boolean enviarCopia) {
    this.nombre = nombre;
    this.correo = correo;
    this.mensaje = mensaje;
    this.enviarCopia = enviarCopia;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getCorreo() {
    return correo;
  }

  public void setCorreo(String correo) {
    this.correo = correo;
  }

  public String getMensaje() {
    return mensaje;
  }

  public void setMensaje(String mensaje) {
    this.mensaje = mensaje;
  }

  public boolean getEnviarCopia() {
    return enviarCopia;
  }

  public void setEnviarCopia(boolean enviarCopia) {
    this.enviarCopia = enviarCopia;
  }
}
