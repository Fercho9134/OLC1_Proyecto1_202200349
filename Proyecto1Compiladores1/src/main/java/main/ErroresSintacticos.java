
package main;


public class ErroresSintacticos {
    
    private String tipo;
    private String token;
    private int fila;
    private int columna;
    
    public ErroresSintacticos(String tipo, String token, int fila, int columna) {
        this.tipo = tipo;
        this.token = token;
        this.fila = fila;
        this.columna = columna;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
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
