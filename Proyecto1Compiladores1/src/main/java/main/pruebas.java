/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;

import Analizadores.Analizador_Lexico;
import Analizadores.Parser;
import java.io.BufferedReader;
import java.io.StringReader;

/**
 *
 * @author Fernando
 */
public class pruebas {
    
    public static void main(String[] args) {
    
        try {
            String text = "arr:double::@darray <- [\"Pedro\", 1.198, 3, 69.2, \"Manu\"] end;";
            System.out.println(text);
            Analizador_Lexico scanner = new Analizador_Lexico(new BufferedReader(new StringReader(text)));
            Parser parser = new Parser(scanner);
            parser.parse();
        } catch (Exception e) {
          //  System.out.println(e);
          e.printStackTrace();
        }
        
        
    }
    }
    
