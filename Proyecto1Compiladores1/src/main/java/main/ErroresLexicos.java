
package main;

public class ErroresLexicos {
    
    private String tipo;
    private String caracter;
    private int fila;
    private int columna;

    public ErroresLexicos(String tipo, String caracter, int fila, int columna) {
        this.tipo = tipo;
        this.caracter = caracter;
        this.fila = fila;
        this.columna = columna;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCaracter() {
        return caracter;
    }

    public void setCaracter(String caracter) {
        this.caracter = caracter;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }
    
    
    
}
