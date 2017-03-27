/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;




/**
 *
 * @author 21513547
 */
public class XLSParser 
{
    public static void main(String[] args) 
    {
        try
        {
            FileInputStream file = new FileInputStream(new File("C:/Users/21513547/Downloads/PO_AirSupply_20170310_dai.xlsx"));
 
            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
 
            //Iterate through each rows one by one
            Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.iterator();
            while (rowIterator.hasNext()) 
            {
                org.apache.poi.ss.usermodel.Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                 
                while (cellIterator.hasNext()) 
                {
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) 
                    {
                        case Cell.CELL_TYPE_NUMERIC:
                            System.out.print(cell.getNumericCellValue() + " | ");
                            break;
                        case Cell.CELL_TYPE_STRING:
                            System.out.print(cell.getStringCellValue() + " | ");
                            break;
                    }
                }
                System.out.println("");
            }
            file.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    
    public static String getTable(){
        String t ="";
             try
        {
            FileInputStream file = new FileInputStream(new File("C:/Users/21513547/Downloads/PO_AirSupply_20170310_dai.xlsx"));
 
            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
 
            //Iterate through each rows one by one
            Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.iterator();
            while (rowIterator.hasNext()) 
            {t+="<tr>";
                org.apache.poi.ss.usermodel.Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                 
                while (cellIterator.hasNext()) 
                { t+="<td>";
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) 
                    {
                        case Cell.CELL_TYPE_NUMERIC:
                            System.out.print(cell.getNumericCellValue() + " | ");
                            t+=cell.getNumericCellValue();
                            break;
                        case Cell.CELL_TYPE_STRING:
                            System.out.print(cell.getStringCellValue() + " | ");
                            t+=cell.getStringCellValue();
                            break;
                    }
                   t+="</td>";
                }
                System.out.println("");
                t+="</tr>"; 
            }
            file.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return t;
    }
    
    public static String getTableHead(){
        String t ="";
             try
        {
            FileInputStream file = new FileInputStream(new File("C:/Users/21513547/Downloads/PO_AirSupply_20170310_dai.xlsx"));
 
            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
 
            //Iterate through each rows one by one
            Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.iterator();
            if (rowIterator.hasNext()) 
            {   t+="<tr>";
                org.apache.poi.ss.usermodel.Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                 
                while (cellIterator.hasNext()) 
                { t+="<th>";
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) 
                    {
                        case Cell.CELL_TYPE_NUMERIC:
                            t+=cell.getNumericCellValue();
                            break;
                        case Cell.CELL_TYPE_STRING:
                            t+=cell.getStringCellValue();
                            break;
                    }
                   t+="</th>";
                }
                System.out.println("");
                t+="</tr>";
            }
            file.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return t;
    }
}
