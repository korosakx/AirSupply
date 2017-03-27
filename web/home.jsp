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
        <form role="form" enctype="multipart/form-data">
            <div class="box-body">
                     <div class="form-group">
                 
                  <label for="file">Choose file :</label>
                  
                  <input type="file" name="file">

                  
                </div>	
            </div>
            
        <!-- Footer boxes -->
            <div class="box-footer">
                <button type="button" id="upload_btn" class="btn btn-primary" onclick="show_table()" value="Upload">Submit</button>
            </div>
       </form>

    </div>
   </section>
       <!-- End Second section --> 
       
       <section id="table1" class="content" style="display:none;" >
      <!-- Tableau -->
        <div class="box box-primary">
            <div class="box-header">
                <h3 class="box-title">Purchase Order List</h3>
            </div>
                   <!-- /.box-header -->
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                       <tr>
						<th>PO</th>
						<th>PO Header Pub. Date</th>
						<th>PO Header Last Mod. Date</th>
						<th>PO Document type</th>
						<th>Supplier Local Number</th>
						<th>Customer Name</th>
						<th>Customer Street 1</th>
						<th>Customer Zip</th>
						<th>Customer City</th>
						<th>Customer Countrycode</th>
						<th>Supplier Name</th>
						<th>Supplier Street 1</th>
						<th>Supplier Zip</th>
						<th>Supplier City</th>
						<th>Supplier Countrycode</th>
						<th>Payment terms</th>
						<th>Payment terms code</th>
						<th>ERP creation date</th>
						<th>Currency</th>
						<th>Supp. No.</th>
						<th>PO Header Creation Date</th>
						<th>PO Line</th>
						<th>Status</th>
						<th>Customer Material Number</th>
						<th>Customer Material Description</th>
						<th>Supplier Material Number</th>
						<th>Supplier Material Description</th>
						<th>Unit of Measure</th>
						<th>Requested date</th>
						<th>Requested quantity</th>
						<th>Promised date</th>
						<th>Promised quantity</th>
						<th>Received Quantity</th>
						<th>Remaining Quantity to be Received</th>
						<th>Last GR Date</th>
						<th>Last GR No.</th>
						<th>Original Price</th>
						<th>Price</th>
						<th>Price unit of measure</th>
						<th>Currency</th>
						<th>Total Line Amount</th>
					</tr>
                        
                    </thead>    
                    
                    <tbody>
                        
                    </tbody>
                    
                    <tfoot>
                       <tr>
						<th>PO</th>
						<th>PO Header Pub. Date</th>
						<th>PO Header Last Mod. Date</th>
						<th>PO Document type</th>
						<th>Supplier Local Number</th>
						<th>Customer Name</th>
						<th>Customer Street 1</th>
						<th>Customer Zip</th>
						<th>Customer City</th>
						<th>Customer Countrycode</th>
						<th>Supplier Name</th>
						<th>Supplier Street 1</th>
						<th>Supplier Zip</th>
						<th>Supplier City</th>
						<th>Supplier Countrycode</th>
						<th>Payment terms</th>
						<th>Payment terms code</th>
						<th>ERP creation date</th>
						<th>Currency</th>
						<th>Supp. No.</th>
						<th>PO Header Creation Date</th>
						<th>PO Line</th>
						<th>Status</th>
						<th>Customer Material Number</th>
						<th>Customer Material Description</th>
						<th>Supplier Material Number</th>
						<th>Supplier Material Description</th>
						<th>Unit of Measure</th>
						<th>Requested date</th>
						<th>Requested quantity</th>
						<th>Promised date</th>
						<th>Promised quantity</th>
						<th>Received Quantity</th>
						<th>Remaining Quantity to be Received</th>
						<th>Last GR Date</th>
						<th>Last GR No.</th>
						<th>Original Price</th>
						<th>Price</th>
						<th>Price unit of measure</th>
						<th>Currency</th>
						<th>Total Line Amount</th>
					</tr>
                    </tfoot>
                </table>
            </div>
            <!-- /.box-body -->
        </div>                  
       
    
       <jsp:include page="pager/footer.jsp"/>
      <script>
            function show_table() {
              var elem = document.getElementById('table1');
              elem.style.display = 'block';
            }

            $(':file').on('change', function() {
            var file = this.files[0];
            if (file.size > 1024) {
                alert('max upload size is 1k');
            }

           // Also see .name, .type
             });
             
    $('#upload_btn').on('click', function() {
    $.ajax({
        // Your server script to process the upload
        url: 'UploadPoServlet',
        type: 'POST',

        // Form data
        data: new FormData($('form')[0]),

        // Tell jQuery not to process data or worry about content-type
        // You *must* include these options!
        cache: false,
        contentType: false,
        processData: false,

        // Custom XMLHttpRequest
        xhr: function() {
            var myXhr = $.ajaxSettings.xhr();
            if (myXhr.upload) {
                // For handling the progress of the upload
                myXhr.upload.addEventListener('progress', function(e) {
                    if (e.lengthComputable) {
                        $('progress').attr({
                            value: e.loaded,
                            max: e.total,
                        });
                    }
                } , false);
            }
            return myXhr;
        },
    });
});
    </script>
    </body>
</html>
