/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import com.google.gson.JsonObject;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
/**
 *
 * @author 21513547
 */
@WebServlet(name = "UploadPoServlet", urlPatterns = {"/UploadPoServlet"})
public class UploadPoServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
    private org.apache.commons.fileupload.servlet.ServletFileUpload uploader = null;
	@Override
	public void init() throws ServletException{
		org.apache.commons.fileupload.disk.DiskFileItemFactory fileFactory = new org.apache.commons.fileupload.disk.DiskFileItemFactory();
		File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new org.apache.commons.fileupload.servlet.ServletFileUpload(fileFactory);
	}


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("application/xml;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
        if(!org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent(request)){
                throw new ServletException("Content type is not multipart/form-data");
        }

        try {
                List<org.apache.commons.fileupload.FileItem> fileItemsList = uploader.parseRequest(request);
                Iterator<org.apache.commons.fileupload.FileItem> fileItemsIterator = fileItemsList.iterator();
                while(fileItemsIterator.hasNext()){
                        org.apache.commons.fileupload.FileItem fileItem = fileItemsIterator.next();
                        System.out.println("FieldName="+fileItem.getFieldName());
                        System.out.println("FileName="+fileItem.getName());
                        System.out.println("ContentType="+fileItem.getContentType());
                        System.out.println("Size in bytes="+fileItem.getSize());

                        File file = new File(request.getServletContext().getAttribute("FILES_DIR")+File.separator+fileItem.getName());
                        System.out.println("Absolute Path at server="+file.getAbsolutePath());
                        fileItem.write(file);
     
		try (PrintWriter out = response.getWriter())
			{
			out.println("<?xml version=\"1.0\"?>");
                        
			for (String s :processExcelFile(file)){
                            out.println(s);
                        }
			}
                        
                }
                
        } catch (org.apache.commons.fileupload.FileUploadException e) {
        } catch (Exception e) {
        }
}



    private ArrayList<String> processExcelFile(File file){


        ArrayList<String> xml = new  ArrayList<String>() ;
        xml.add("<table>");
        try{
            // Creating Input Stream 
            FileInputStream myInput = new FileInputStream(file);

         
            XSSFWorkbook workbook = new XSSFWorkbook(myInput);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
 
            //Iterate through each rows one by one
            int i =0;
            Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.iterator();
            while (rowIterator.hasNext()) 
           { if (i>1){
               xml.add("<tr id=\""+i+"\">");
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
                           xml.add("<td>"+cell.getNumericCellValue()+"</td>")  ;
                            break;
                        case Cell.CELL_TYPE_STRING:
                            xml.add("<td>"+cell.getStringCellValue()+"</td>")  ;
                            break;
                    }
                   
                }
               xml.add("</tr>"); 
            }
           i++;
           }
            xml.add("</table>");
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }

        return xml;
    }
   
}