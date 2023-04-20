package com.emergentes.aplicacion;

public class Pendiente{
    private int id;
    private String tarea;
    private boolean completado;
    
    public Pendiente(){
        
    }
    
    public Pendiente(int id, String tarea, boolean completado){
        this.id = id;
        this.tarea = tarea;
        this.completado = completado;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getTarea(){
        return tarea;
    }
    
    public void setTarea(String tarea){
        this.tarea = tarea;
    }
    
    public boolean isCompletado(){
        return completado;
    }
    
    public void setCompletado(boolean completado){
        this.completado = completado;
    }
}


