package com.emergentes.practica_1.servlets;

import java.util.ArrayList;
import java.time.LocalDate;

public class Inscripcion {
  private LocalDate fecha;
  private String nombre;
  private String apellidos;
  private String turno;
  private ArrayList<String> cursos;
  
  public Inscripcion() {}

  public Inscripcion(LocalDate fecha, String nombre, String apellidos, 
          String turno, ArrayList<String> cursos) {
    this.fecha = fecha;
    this.nombre = nombre;
    this.apellidos = apellidos;
    this.turno = turno;
    this.cursos = cursos;
  }

  public LocalDate getFecha() {
    return fecha;
  }

  public void setFecha(LocalDate fecha) {
    this.fecha = fecha;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getApellidos() {
    return apellidos;
  }

  public void setApellidos(String apellidos) {
    this.apellidos = apellidos;
  }

  public String getTurno() {
    return turno;
  }

  public void setTurno(String turno) {
    this.turno = turno;
  }

  public ArrayList<String> getCursos() {
    return cursos;
  }

  public void setCursos(ArrayList<String> cursos) {
    this.cursos = cursos;
  }
}
