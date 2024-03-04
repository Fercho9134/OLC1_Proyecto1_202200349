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
public class TablaSimbolos {
    
    private ArrayList<Variable> variables;

    public TablaSimbolos() {
        this.variables = new ArrayList<Variable>();
    }

    public void agregarVariable(Variable variable){
        this.variables.add(variable);
    }
    
    public Variable obtenerVariable(String nombre){
        nombre = nombre.toLowerCase();
        for(Variable variable : this.variables){
            if(variable.getNombre().equals(nombre)){
                return variable;
            }
        }
        
        return null;
    }
    
    public ArrayList<Variable> obtenerVariables(){
        return this.variables;
    }
    
}
