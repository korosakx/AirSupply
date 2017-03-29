<%-- 
    Document   : History_visualisation
    Created on : 29 mars 2017, 09:36:00
    Author     : 21513548
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%@ page import="Business.*" %>
<%@ page import="java.util.Map.*" %>
<%@ page import="java.text.SimpleDateFormat" %>


<!DOCTYPE html>
<html>
     <head>
        <jsp:include page="../pager/header.jsp"/>
        <script type="text/JavaScript" src="${pageContext.request.contextPath}/js/fctxml.js"></script>
    </head>
    <body>
        <jsp:include page="../pager/menu.jsp"/>
       <!-- First section -->
    <section class="content-header">
        <!-- Title of page -->
      <h1>
        Dashboard
        <small>Version 1.0</small>
      </h1>
        <!-- Page hierarchie -->
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
        <!-- End Page hierarchie -->
    </section>
       <!-- End First section -->
       
       <!-- Second section -->
    <section class="content">
        
        
         <% 
         HashMap<Integer,ArrayList<PoLine>> Po_List=(HashMap<Integer,ArrayList<PoLine>>) request.getAttribute("ListPo");  
         int j=0;
         for(Entry<Integer, ArrayList<PoLine>> entry:Po_List.entrySet()) 
             {
                 SimpleDateFormat  simpleFormat;
                 simpleFormat = new SimpleDateFormat("dd/MM/yyyy");
                j++;
           Integer cle = entry.getKey();
            ArrayList<PoLine> valeur = entry.getValue();
            //out.print("<p>"+valeur.toString()+"</p>");
              
         
         
            out.print("<div class='panel-group col-xs-8' id='accordion'>");
                out.print("<div class='panel panel-default'>");
                    out.print("<div class='panel-heading'>");
                        out.print("<h4 class='panel-title'>");
                        out.print("<a data-toggle='collapse' data-parent='#accordion' href='#collapse"+j+"'>Num PO : "+cle);
                        out.print("</a>");
                    out.print("</h4>");
                    out.print("</div>");
                    out.print("<div id='collapse"+j+"' class='panel-collapse collapse in'>");
                      out.print("<div class='panel-body'>");
                      //body of the box
                      int i=1;
                      ArrayList<Product> products=new ArrayList<Product>();
                        for(PoLine po:valeur)
                        {
                            
                            //add the product to the list of products that been treated
                         
                           for(PoLine po2:valeur)
                           {
                               
                               if((po.getProduct()==po2.getProduct())&&(!products.contains(po2.getProduct())))
                               {
                            
                                  out.print("<div class='panel-group col-xs-10' id='accordion'>");
                                  out.print("<div class='panel panel-default'>");
                                      out.print("<div class='panel-heading'>");
                                          out.print("<h4 class='panel-title'>");
                                          out.print("<a data-toggle='collapse' data-parent='#accordion' href='#collapse_prod_"+j+"_"+i+"'>Produit : "+po.getProduct().getDescCustomer());
                                          out.print("</a>");
                                      out.print("</h4>");
                                      out.print("</div>");
                                      out.print("<div id='collapse_prod_"+j+"_"+i+"' class='panel-collapse collapse in'>");
                                        out.print("<div class='panel-body'>");
                                                  out.print("<div class='col-xs-12'>");
                                                                out.print("<div class='box'>");
                                                                  out.print("<div class='box-header'>");
                                                                    out.print("<h3 class='box-title'>Collaboration History</h3>");

                                                                    out.print("<div class='box-tools'>");
                                                                      out.print("<div class='input-group input-group-sm' style='width: 150px;'>");
                                                                       out.print ("<input type='text' name='table_search' class='form-control pull-right' placeholder='Search'>");

                                                                        out.print("<div class='input-group-btn'>");
                                                                          out.print("<button type='submit' class='btn btn-default'><i class='fa fa-search'></i></button>");
                                                                        out.print("</div>");
                                                                     out.print ("</div>");
                                                                    out.print("</div>");
                                                                 out.print ("</div>");
                                                                  
                                                                  out.print("<div class='box-body table-responsive no-padding'>");
                                                                    out.print("<table class='table table-hover'>");
                                                                      out.print("<tr>");
                                                                        out.print("<th>Numéro PO</th>");
                                                                        out.print("<th>Product</th>");
                                                                        out.print("<th>Modification date</th>");
                                                                        out.print("<th>Quantity</th>");
                                                                        out.print("<th>Unit Price</th>");
                                                                         out.print("<th>Total Price</th>");
                                                                        out.print("<th>Status</th>");
                                                                        out.print("<th>Comment</th>");
                                                                      out.print("</tr>");
                                                                      for(PoLine po3:valeur)
                                                                      {
                                                                          if(po3.getProduct()==po.getProduct())
                                                                           {
                                                                            out.print("<tr>");
                                                                             out.print("<td>"+po3.getId().getNumPo()+"</td>");
                                                                             out.print("<td>"+po3.getProduct().getDescCustomer()+"</th>");
                                                                             out.print("<th>"+po3.getId().getDateModif()+"</td>");
                                                                             out.print("<td>"+po3.getQuantityRequest()+"</td>");
                                                                             out.print("<td>"+po3.getUnitPrice()+"</td>");
                                                                             out.print("<td>"+po3.getTotalPrice()+"</td>");
                                                                             out.print("<td>"+po3.getStatus()+"</td>");
                                                                              out.print("<td>"+po3.getLineComment()+"</td>");
                                                                           out.print("</tr>");
                                                                        }
                                                                      }
                                                                      
                                                                    out.print("</table>");
                                                                  out.print("</div>");
                                                                  
                                                                out.print("</div>");
                                                                
                                                              out.print("</div>");
                                        
                                                    out.print("</div>");
                                           out.print("</div>");
                                       out.print("</div>");
                                   out.print("</div>");
                            
                           // out.print("<p>"+po.getId().getDateModif()+"</p>");
                            i++;
                            products.add(po2.getProduct());
                               }
                               
                           }
                             
                        }
                      //************
                      out.print("</div>");
                    out.print("</div>");
                out.print("</div>");
            out.print("</div>");
           
                    }
         ;%>
        
        
        
        
        
   </section>
        
        
        
      
       
     <jsp:include page="../pager/footer.jsp"/>       
       
    </body>
</html>
