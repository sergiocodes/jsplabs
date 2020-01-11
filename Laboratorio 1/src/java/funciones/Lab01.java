/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funciones;
import static java.lang.Math.pow;

/**
 *
 * @author sergio
 */
public class Lab01 {
    public static String NameIterator(String method, String firstname, int times) {
        String total = "";
        if ("GET".equals(method)){
            return total;
        }
        else {    
            total = "<h2>Tu nombre repetido " + times + " veces</h2>"; 
            for(int i=0; i<times; i++) {
                total = total + "<h4>" + firstname + "</h4>"; 
            }
            return total;
        }        
    }
    
    public static String TestSolver(String answer_1, String answer_2, String answer_3) {        
        int puntaje = 0;
        String nota = "";
        
        if("2".equals(answer_1))
            puntaje++;
        if("1".equals(answer_2))
            puntaje++;
        if("2".equals(answer_3))
            puntaje++;
        
        if(puntaje == 0)
            nota = "0";
        if(puntaje == 1)
            nota = "3.0";
        if(puntaje == 2)
            nota = "4.5";
        if(puntaje == 3)
            nota = "7.0";
        
        return nota;                
    }  
    
    public static String MaxNumber(String method, String number_1, String number_2, String number_3) {
        if ("GET".equals(method)){
           return ""; 
        }            
        else{
            Double[] numbers = {Double.parseDouble(number_1), Double.parseDouble(number_2), Double.parseDouble(number_3)};
            Double max = numbers[0];

            for (int i = 1; i < numbers.length; i++) {
                if(max<numbers[i])
                    max = numbers[i];
             }
            return "<h2>El número mayor es " + max + "</h2>";            
        }        
    }
    
    public static String ExpNumber(String method, String base_string, String exp_string) {
        if ("GET".equals(method)){
           return ""; 
        }            
        else{
            Double base = Double.parseDouble(base_string);
            Double exp = Double.parseDouble(exp_string);

            return "<h2>" + base + "^" + exp + " es igual a " + pow(base, exp) + "</h2>";            
        }        
    }
        
        
}
