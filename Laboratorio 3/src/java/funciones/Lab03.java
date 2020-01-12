/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package funciones;


import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64;
//import com.sun.tools.javac.util.Name.Table;
import java.net.MalformedURLException;  
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Calendar;
import com.itextpdf.text.Image;
import java.net.URL;
import java.io.InputStream;
/**
 *
 * @author sergio
 */
public class Lab03 {   
    
    public static String GeneratePDFTable(String method){
        String str = "";
        
        if ("GET".equals(method)){
            return str;
        }else{
            Document document = new Document();            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();

            try {
                PdfWriter writer = PdfWriter.getInstance(document, baos);
                document.open();
                /* GENERACION ARCHIVO: DATA*/       
                // Page number
                int pageCount = writer.getPageNumber();
                Paragraph page_number = new Paragraph("Página " + String.valueOf(pageCount) + "\n\n");
                page_number.setAlignment(Element.ALIGN_CENTER);
                document.add(page_number);
                
                // Creating a table object 
                float [] pointColumnWidths = {150F, 150F, 150F}; 
                PdfPTable table = new PdfPTable(10); // 10 columns.
                for(int i = 0;i < 10;i++){
                    for(int j = 0; j < 10; j++){
                        PdfPCell cell = new PdfPCell(new Paragraph(String.valueOf(getRandomIntegerBetweenRange(0,9))));
                        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                        table.addCell(cell);
                    }
                }                
                
                document.add(table);      
                document.close();
                writer.close();
                byte[] bytes = baos.toByteArray();
                str = Base64.encodeBytes(bytes);
            }
            catch (DocumentException e){
                e.printStackTrace();
            }
            return "<object data=\"data:application/pdf;base64," + str + "\" type=\"application/pdf\" width=\"100%\" height=\"1000px\"/>";            
        }        
    }
    
    public static String GenerateImagesPDF(String method) throws BadElementException, MalformedURLException{  
        String str = "";        
        if ("GET".equals(method)){
            return str;
        }else{
            Document document = new Document();            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();

            try {
                PdfWriter writer = PdfWriter.getInstance(document, baos);
                for(int i=0; i<5; i++){                    
                    document.open();
                    int pageCount = writer.getPageNumber();
                    Paragraph page_number = new Paragraph("Página " + String.valueOf(i+1) + "\n\n");
                    page_number.setAlignment(Element.ALIGN_CENTER);
                    document.add(page_number);
                    
                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    LocalDate current_date = LocalDate.now();
                    Paragraph date_text = new Paragraph("Fecha: " + dtf.format(current_date) + "\n");
                    date_text.setAlignment(Element.ALIGN_CENTER);
                    document.add(date_text);
                    
//                    Image img = Image.getInstance(IMG1);
//                    document.add(img);
                    document.newPage();    
                      
                    
                }   
                document.close();
                writer.close();
                byte[] bytes = baos.toByteArray();
                str = Base64.encodeBytes(bytes); 
            }
            catch (DocumentException e){
                e.printStackTrace();
            }
            return "<object data=\"data:application/pdf;base64," + str + "\" type=\"application/pdf\" width=\"100%\" height=\"1000px\"/>";            
        }        
    }
    
    public static String GenerateOrderedNumbers(String... args){
        String str = "";
        String method = args[0];
        if ("GET".equals(method)){
            return str;
        }else{
            int[] numbers = new int[9];
                numbers[0] = Integer.parseInt(args[1]);
                numbers[1] = Integer.parseInt(args[2]);
                numbers[2] = Integer.parseInt(args[3]);
                numbers[3] = Integer.parseInt(args[4]);
                numbers[4] = Integer.parseInt(args[5]);
                numbers[5] = Integer.parseInt(args[6]);
                numbers[6] = Integer.parseInt(args[7]);
                numbers[7] = Integer.parseInt(args[8]);
                numbers[8] = Integer.parseInt(args[9]);
                Arrays.sort(numbers);
            Document document = new Document();            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();

            try {
                PdfWriter writer = PdfWriter.getInstance(document, baos);
                document.open();
                
                int pageCount = writer.getPageNumber();
                Paragraph page_number = new Paragraph("Página " + String.valueOf(pageCount) + "\n\n");
                page_number.setAlignment(Element.ALIGN_CENTER);
                document.add(page_number);
                
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                LocalDate current_date = LocalDate.now();
                Paragraph date_text = new Paragraph("Fecha: " + dtf.format(current_date) + "\n");
                date_text.setAlignment(Element.ALIGN_CENTER);
                document.add(date_text);
                
                float [] pointColumnWidths = {150F, 150F, 150F}; 
                PdfPTable table = new PdfPTable(10); // 10 columns.
                
                String list_numbers = "El listado de numeros ordenados crecientemente es: \n";
                for(int i = 8; i!=-1; i--){
                    if(i==0){
                        list_numbers = list_numbers + String.valueOf(numbers[i]) + ".";  
                    }else{
                        list_numbers = list_numbers + String.valueOf(numbers[i]) + ", ";  
                    }                  
                }  
                Paragraph numbers_para = new Paragraph(list_numbers);
                numbers_para.setAlignment(Element.ALIGN_CENTER);
                document.add(numbers_para);  
                document.close();
                writer.close();
                byte[] bytes = baos.toByteArray();
                str = Base64.encodeBytes(bytes);
            }
            catch (DocumentException e){
                e.printStackTrace();
            }
            return "<object data=\"data:application/pdf;base64," + str + "\" type=\"application/pdf\" width=\"100%\" height=\"1000px\"/>";            
        }        
    }
    
    
    
    public static double getRandomIntegerBetweenRange(double min, double max){
        double x = (int)(Math.random()*((max-min)+1))+min;
        return x;
    }    
                 
}
