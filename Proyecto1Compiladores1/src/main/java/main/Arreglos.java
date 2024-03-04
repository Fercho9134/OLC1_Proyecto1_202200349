
package main;

import java.util.ArrayList;


public class Arreglos {
    
    private String tipo;
    private String nombre;
    private ArrayList<Object> valores;
    
    public Arreglos(String tipo, String nombre){
        this.tipo = tipo;
        this.nombre = nombre;
        valores = new ArrayList<Object>();
    }
    
    public void agregarValor(Object valor){
        this.valores.add(valor);
    }
    
    public ArrayList<Object> obtenerValores(){
        return this.valores;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Override
    public String toString(){
        String valores_str = "[";
        for(Object objeto : this.valores){
        
            valores_str = valores_str + objeto.toString() + ", ";
        }
        
        valores_str = valores_str + "]";
        
        return "Tipo: " + this.tipo + " Nombre: " + this.nombre + " Valores: "+ valores_str;
    }
    
}
    