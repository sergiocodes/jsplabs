/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funciones;

/**
 *
 * @author sergio
 */
public class Lab02 {
    public static String MatrixGenerator(int size) {
        String response = "<table style=\"border:1px solid black\">";  
            for (int col = 0; col < size+1; col++)
            {
                response = response + "<tr>";
                for (int row = 0; row < size+1; row++)
                     {
                         if(col==0){
                             response = response + "<td>" + row + "</td>";                              
                         }else{
                             if(row == 0){
                                 response = response + "<td>" + col + "</td>"; 
                             }else{
                                 response = response + "<td>" + col*row + "</td>"; 
                             }
                             
                         }
                     }
                response = response + "</tr>";
            }
            response = response + "</table>";
            return response;
    } 
    
    public static String RemoveVowels(String... args) {
        String method = args[0];
        String response = "";
        if ("GET".equals(method)){
            return response;
        }
        else {
            response = response + "<h3>Las vocales han sido eliminadas:</h3><ul>";
            for (int i = 1; i < args.length; i++){ 
                response = response + "<li>" + args[i].replaceAll("[AaEeIiOoUu]", "") + "</li>";
            }
            response = response + "</ul>";
            return response;
        }
    }
    
    public static String GetMaxDigits(String... args) {  
        String method = args[0];     
        String response = "";
        if ("GET".equals(method)){
            return response;
        }
        else {     
            int[] max_per_number = {0, 0, 0};
            int max_freq = 0;
            response = response + "<h3>El número con más cifras repetidas es:</h3><ul>";
            for (int i = 1; i < args.length; i++){                    
                    max_per_number[i-1]=maxOccurring(args[i]);                    
            }            
            for (int i = 0; i < max_per_number.length; i++){                    
                    if(max_freq<max_per_number[i])  
                        max_freq=max_per_number[i];
            }
            for (int i = 1; i < args.length; i++){                    
                    if(max_freq == max_per_number[i-1])  
                        response = response + "<li>" + args[i] + "</li>";                    
            }
            response = response + "</ul>";
            return response;
        }
    }
    
    public static String GetMaxOddDigits(String... args) {  
        String method = args[0];     
        String response = "";
        if ("GET".equals(method)){
            return response;
        }
        else {     
            int[] max_per_number = {0, 0, 0, 0};
            int max_freq = 0;
            response = response + "<h3>El número con más cifras pares repetidas es:</h3><ul>";
            for (int i = 1; i < args.length; i++){                    
                    max_per_number[i-1]=maxOddOccurring(args[i]);                    
            }            
            for (int i = 0; i < max_per_number.length; i++){                    
                    if(max_freq<max_per_number[i])  
                        max_freq=max_per_number[i];
            }
            for (int i = 1; i < args.length; i++){                    
                    if(max_freq == max_per_number[i-1])  
                        response = response + "<li>" + args[i] + "</li>";                    
            }            
            return response;
        }
    }
    
    public static int countOccurrences(String number, int digit){ 
        int ocurrences = 0;
        for (int i = 0; i < number.length(); i++){
            char c = number.charAt(i);
            String d = String.valueOf(c);
            if (digit == Integer.parseInt(d)){
                ocurrences++;
            }                
                
        }
        return ocurrences;
    } 
    
    public static int maxOccurring(String number){
        int max_ocurrences = 0;  
        for (int i = 0; i <= 9; i++){ 
            int current = countOccurrences(number, i);
            if (max_ocurrences < current){ 
                max_ocurrences = current; 
            } 
        } 
        return max_ocurrences; 
    }   
    
    
     public static int maxOddOccurring(String number){
        int max_ocurrences = 0;  
        System.out.println("aca-------------");
        System.out.println(number);
        for (int i = 2; i <= 8; i=i+2){ 
            int current = countOccurrences(number, i);
            max_ocurrences = max_ocurrences + current;
        } 
        return max_ocurrences; 
    }
     
    public static String GetEncripted(String... args) {  
        String method = args[0];     
        String response = "";
        if ("GET".equals(method)){
            return response;
        }
        else {     
            response = response + "<h3>Las palabras encriptadas son:</h3><ul>";
            for (int i = 1; i < args.length; i++){
                response = response + "<li>" + encrypt(args[i], 5) + "</li>";                    
            }
            response = response + "</ul>";
            return response;
        }
    }
     
    
    
    public static StringBuffer encrypt(String text, int s) 
    { 
        StringBuffer result= new StringBuffer(); 
  
        for (int i=0; i<text.length(); i++) 
        { 
            if (Character.isUpperCase(text.charAt(i))) 
            { 
                char ch = (char)(((int)text.charAt(i) + 
                                  s - 65) % 26 + 65); 
                result.append(ch); 
            } 
            else
            { 
                char ch = (char)(((int)text.charAt(i) + 
                                  s - 97) % 26 + 97); 
                result.append(ch); 
            } 
        } 
        return result; 
    } 
              
}
