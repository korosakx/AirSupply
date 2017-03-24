<%-- 
    Document   : home
    Created on : 24 mars 2017, 11:19:28
    Author     : 21513547
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="pager/header.jsp"/>
        
    </head>
    <body class="sidebar-mini fixed skin-blue-light" style="height: auto;">
       <jsp:include page="pager/menu.jsp"/>
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
    <!-- Info boxes -->
    <div class="box box-primary">
        <!-- Header boxes -->
            <div class="box-header with-border">
                  <h3 class="box-title">Upload Purshase Order</h3>
            </div>
        <!-- Body boxes -->
            <div class="box-body">
                  <label for="exampleInputFile"></label>	
            </div>
        <!-- Footer boxes -->
            <div class="box-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
            </div>
    </div>
   </section>
       <!-- End Second section --> 
       
    
       <jsp:include page="pager/footer.jsp"/>
    </body>
</html>
