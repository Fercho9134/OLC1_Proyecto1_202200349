/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package main;

import java.util.ArrayList;
import vista.Principal;



/**
 *
 * @author Fernando
 */
public class main {

    public static void main(String[] args) {
        Principal.listaTokens.add(new Token("A", "A", 1, 1));
        
         try {
            String ruta = "C:/Users/ferch/Documents/Repositorios Github/OLC1_Proyecto1_202200349/Proyecto1Compiladores1/src/main/java/Analizadores/"; 
            String[] opJFlex = {ruta+"Analizador_Lexico.jflex","-d",ruta};
            jflex.Main.generate(opJFlex);
            
            String[] opCup = {"-destdir",ruta,"-parser","Parser",ruta+"Analizador_Sintactico.cup"};
            java_cup.Main.main(opCup);
            
            
          
        } catch (Exception e) {
        }
        
    }
}
