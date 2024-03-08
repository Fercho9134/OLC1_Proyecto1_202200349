/*--------Codigo de usuario---------*/
// Paquetes, importaciones
package Analizadores;
import java_cup.runtime.*;
import main.Token;
import vista.Principal;

/*--------Opciones y declaraciones---------*/

%%
%class Analizador_Lexico 
//Nombre de la clase que genera JFlex
%public // Para tener acceso desde otros paquetes
%line // Para registrar las líneas
%char // Llevar un conteo de caracteres
%column // Llevar un conteo de columnas
%cup // Habilita la integración con Cup
%unicode // Reconocimiento de caracteres unicode
%ignorecase // Omite el case sensitive, mayúsculas y minúsculas son iguales

%init{ //Constructor del analizador
    yyline = 1; 
    yycolumn=1;
%init}

%column
// Expresiones regulares
//Decimal positivo o negativo
DECIMAL = -?[0-9]+(\.[0-9]+)?
PROGRAM = "program"
END = "end" 
VAR = "var"
ARR = "arr"
SUM = "sum"
RES = "res"
MULT = "mul"
DIV = "div"
MOD = "mod"
MEDIA = "media"
MEDIANA = "mediana"
MODA = "moda"
VARIANZA = "varianza"
MAX = "max"
MIN = "min"
CONSOLE = "console"
PRINT = "print"
IGUAL = "="
COLUMN = "column"
GRAPHBAR = "graphbar"
TITULO = "titulo"
EJEX = "ejex"
EJEY = "ejey"
TITULOX = "titulox"
TITULOY = "tituloy"
EXEC = "exec"
GRAPHPIE = "graphpie" 
LABEL = "label"
VALUES = "values"
GRAPHLINE = "graphline" 
HISTOGRAM = "histogram"
PARENTESIS_IZQ = "("
PARENTESIS_DER = ")"
ARROBA = "@"
COMA = ","
CORCHETE_IZQ = "["
CORCHETE_DER = "]"
DOUBLE = "double"
CHAR = "char" {CORCHETE_IZQ}{CORCHETE_DER}
DOS_PUNTOS = ":"
PUNTO_COMA = ";"
MENOR = "<"
MAYOR = ">"
GUION = "-"
CADENA = "\"" [^\"]+ "\""
IDENTIFICADOR = [a-zA-Z][a-zA-Z0-9_]*
COMENTARIO_LINEA = "!"[^\n]*
COMENTARIO_BLOQUE = "<!"[^!]*"!>"
WHITE = [ \r\t\n]+

%%

/*---------------------- Reglas lexicas --------------*/


{PROGRAM}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("PROGRAM", yytext(), yyline, yycolumn)); return new Symbol(sym.PROGRAM,yyline,yycolumn, yytext());}
{END}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("END", yytext(), yyline, yycolumn)); return new Symbol(sym.END,yyline,yycolumn, yytext());}
{DECIMAL}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("DECIMAL", yytext(), yyline, yycolumn)); return new Symbol(sym.DECIMAL,yyline,yycolumn, yytext());}
{VAR}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("VAR", yytext(), yyline, yycolumn)); return new Symbol(sym.VAR,yyline,yycolumn, yytext());}
{ARR}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("ARR", yytext(), yyline, yycolumn)); return new Symbol(sym.ARR,yyline,yycolumn, yytext());}
{SUM}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("SUM", yytext(), yyline, yycolumn)); return new Symbol(sym.SUM,yyline,yycolumn, yytext());}
{RES}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("RES", yytext(), yyline, yycolumn)); return new Symbol(sym.RES,yyline,yycolumn, yytext());}
{MOD}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MOD", yytext(), yyline, yycolumn)); return new Symbol(sym.MOD,yyline,yycolumn, yytext());}
{MULT}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MULT", yytext(), yyline, yycolumn)); return new Symbol(sym.MULT,yyline,yycolumn, yytext());}
{DIV}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("DIV", yytext(), yyline, yycolumn)); return new Symbol(sym.DIV,yyline,yycolumn, yytext());}
{MEDIA}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MEDIA", yytext(), yyline, yycolumn)); return new Symbol(sym.MEDIA,yyline,yycolumn, yytext());}
{MEDIANA}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MEDIANA", yytext(), yyline, yycolumn)); return new Symbol(sym.MEDIANA,yyline,yycolumn, yytext());}
{MODA}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MODA", yytext(), yyline, yycolumn)); return new Symbol(sym.MODA,yyline,yycolumn, yytext());}
{VARIANZA}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("VARIANZA", yytext(), yyline, yycolumn)); return new Symbol(sym.VARIANZA,yyline,yycolumn, yytext());}
{MAX}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MAX", yytext(), yyline, yycolumn)); return new Symbol(sym.MAX,yyline,yycolumn, yytext());}
{MIN}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MIN", yytext(), yyline, yycolumn)); return new Symbol(sym.MIN,yyline,yycolumn, yytext());}
{CONSOLE}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("CONSOLE", yytext(), yyline, yycolumn)); return new Symbol(sym.CONSOLE,yyline,yycolumn, yytext());}
{GRAPHBAR} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("GRAPHBAR", yytext(), yyline, yycolumn)); return new Symbol(sym.GRAPHBAR,yyline,yycolumn, yytext());}
{TITULO} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("TITULO", yytext(), yyline, yycolumn)); return new Symbol(sym.TITULO,yyline,yycolumn, yytext());}
{EJEX} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("EJEX", yytext(), yyline, yycolumn)); return new Symbol(sym.EJEX,yyline,yycolumn, yytext());}
{EJEY} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("EJEY", yytext(), yyline, yycolumn)); return new Symbol(sym.EJEY,yyline,yycolumn, yytext());}
{TITULOX} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("TITULOX", yytext(), yyline, yycolumn)); return new Symbol(sym.TITULOX,yyline,yycolumn, yytext());}
{TITULOY} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("TITULOY", yytext(), yyline, yycolumn)); return new Symbol(sym.TITULOY,yyline,yycolumn, yytext());}
{EXEC} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("EXEC", yytext(), yyline, yycolumn)); return new Symbol(sym.EXEC,yyline,yycolumn, yytext());}
{GRAPHPIE} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("GRAPHPIE", yytext(), yyline, yycolumn)); return new Symbol(sym.GRAPHPIE,yyline,yycolumn, yytext());}
{LABEL} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("LABEL", yytext(), yyline, yycolumn)); return new Symbol(sym.LABEL,yyline,yycolumn, yytext());}
{VALUES} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("VALUES", yytext(), yyline, yycolumn)); return new Symbol(sym.VALUES,yyline,yycolumn, yytext());}
{GRAPHLINE} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("GRAPHLINE", yytext(), yyline, yycolumn)); return new Symbol(sym.GRAPHLINE,yyline,yycolumn, yytext());}
{HISTOGRAM} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("HISTOGRAM", yytext(), yyline, yycolumn)); return new Symbol(sym.HISTOGRAM,yyline,yycolumn, yytext());}
{PRINT} {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("PRINT", yytext(), yyline, yycolumn)); return new Symbol(sym.PRINT,yyline,yycolumn, yytext());}
{COLUMN}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("COLUMN", yytext(), yyline, yycolumn)); return new Symbol(sym.COLUMN,yyline,yycolumn, yytext());}
{MAYOR}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MAYOR", yytext(), yyline, yycolumn)); return new Symbol(sym.MAYOR,yyline,yycolumn, yytext());}
{IGUAL}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("IGUAL", yytext(), yyline, yycolumn)); return new Symbol(sym.IGUAL,yyline,yycolumn, yytext());}
{ARROBA}    {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("ARROBA", yytext(), yyline, yycolumn)); return new Symbol(sym.ARROBA,yyline,yycolumn, yytext());}
{COMA}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("COMA", yytext(), yyline, yycolumn)); return new Symbol(sym.COMA,yyline,yycolumn, yytext());}
{PARENTESIS_IZQ}    {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("PARENTESIS_IZQ", yytext(), yyline, yycolumn)); return new Symbol(sym.PARENTESIS_IZQ,yyline,yycolumn, yytext());}
{PARENTESIS_DER}    {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("PARENTESIS_DER", yytext(), yyline, yycolumn)); return new Symbol(sym.PARENTESIS_DER,yyline,yycolumn, yytext());}
{CORCHETE_IZQ}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("CORCHETE_IZQ", yytext(), yyline, yycolumn)); return new Symbol(sym.CORCHETE_IZQ,yyline,yycolumn, yytext());}
{CORCHETE_DER}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("CORCHETE_DER", yytext(), yyline, yycolumn)); return new Symbol(sym.CORCHETE_DER,yyline,yycolumn, yytext());}
{DOUBLE}    {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("DOUBLE", yytext(), yyline, yycolumn)); return new Symbol(sym.DOUBLE,yyline,yycolumn, yytext());}
{CHAR}  {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("CHAR", yytext(), yyline, yycolumn)); return new Symbol(sym.CHAR,yyline,yycolumn, yytext());}
{DOS_PUNTOS}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("DOS_PUNTOS", yytext(), yyline, yycolumn)); return new Symbol(sym.DOS_PUNTOS,yyline,yycolumn, yytext());}
{PUNTO_COMA}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("PUNTO_COMA", yytext(), yyline, yycolumn)); return new Symbol(sym.PUNTO_COMA,yyline,yycolumn, yytext());}
{MENOR}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("MENOR", yytext(), yyline, yycolumn)); return new Symbol(sym.MENOR,yyline,yycolumn, yytext());}
{GUION}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("GUION", yytext(), yyline, yycolumn)); return new Symbol(sym.GUION,yyline,yycolumn, yytext());}
{CADENA}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("CADENA", yytext(), yyline, yycolumn)); return new Symbol(sym.CADENA,yyline,yycolumn, yytext());}
{IDENTIFICADOR}   {System.out.println("Reconocido: "+ yytext()); Principal.listaTokens.add(new Token("IDENTIFICADOR", yytext(), yyline, yycolumn)); return new Symbol(sym.IDENTIFICADOR,yyline,yycolumn, yytext());}
{WHITE}   {}
{COMENTARIO_LINEA}   {System.out.println("Cometario ignorado: "+ yytext());}
{COMENTARIO_BLOQUE}   {System.out.println("Cometario ignorado: "+ yytext());}

//Espacios
[\t\r\n\f] {/*Espacios, se ignoran*/}

//Errores lexicos
.   {System.out.println("Error lexico: "+ yytext() + " Linea: " + yyline+ " Columna: "+yycolumn);}
