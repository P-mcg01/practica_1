package com.emergentes.practica_1.servlets;

import java.util.ArrayList;

public class Encuesta {
  private String nombre;
  private ArrayList<String> sistemas;
  
  public Encuesta() {}

  public Encuesta(String nombre, ArrayList<String> sistemas) {
    this.nombre = nombre;
    this.sistemas = sistemas;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public ArrayList<String> getSistemas() {
    return sistemas;
  }

  public void setSistemas(ArrayList<String> sistemas) {
    this.sistemas = sistemas;
  }
  
  
}
