/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;

import java.util.ArrayList;

/**
 *
 * @author Fernando
 */
public class TablaArreglos {
    
    private ArrayList<Arreglos> arreglos;
    
    public TablaArreglos(){
        this.arreglos = new ArrayList<Arreglos>();
    }
    
    public void agregarArreglo(Arreglos arreglo){
        this.arreglos.add(arreglo);
    }
    
    public Arreglos obtenerArreglo(String nombre){
        nombre = nombre.toLowerCase();
        for(Arreglos arr : this.arreglos){
            if(arr.getNombre().equals(nombre)){
                return arr;
            }
        }
        return null;
    }
    
    public ArrayList<Arreglos> obtenerArreglos(){
        return this.arreglos;
    }
    
    
}
