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
          <script type="text/JavaScript" src="js/fctxml.js"></script>
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
                  
                  <input id="sampleFile" type="file" name="file">

                  
                </div>	
            </div>
            
        <!-- Footer boxes -->
            <div class="box-footer">
                <button type="button" id="uploadBtn" class="btn btn-primary" onclick="performAjaxSubmit();" value="Upload">Submit</button>
            </div>
       </form>

    </div>
   </section>
       <!-- End Second section --> 
       
       <section id="table1" class="content"  >
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
                    
                    <tbody id="body1">
                        
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

           
             
    /**
 * Méthode qui retourne l'objet XMLHttpRequest en fonction du navigateur.
 */
function getXMLHttpRequest()
	{
	var xhr = null;

	// Firefox et bien d'autres.
	if (window.XMLHttpRequest)
		xhr = new XMLHttpRequest();
	else

	// Internet Explorer.
	if (window.ActiveXObject)
		{
		try	{
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
			}
		catch (e)
			{
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}

	// XMLHttpRequest non supporté.
	else
		{
		alert("Votre navigateur ne supporte pas l'objet XmlHttpRequest.");
		xhr = false;
		}

	return xhr;
	}


/**
 * Cette méthode "Ajax" affiche le XML.
 *
 * On utilise la propriété 'responseText' de l'objet XMLHttpRequest afin
 * de récupérer sous forme de texte le flux envoyé par le serveur.
 */
function afficheXML ()
	{
	// Objet XMLHttpRequest.
	var xhr = getXMLHttpRequest();

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onreadystatechange = function()
		{
		// Si l'on a tout reçu et que la requête http s'est bien passée.
		if (xhr.readyState === 4 && xhr.status === 200)
			{
			// Elément html que l'on va mettre à jour.
			var elt = document.getElementById("zone");
			alert(xhr.responseText);
			}
		};

	// Requête au serveur avec les paramètres éventuels.
        var file = this.files;
        var formData = new FormData();
        formData.append("file", file);
	xhr.open("POST","UploadServlet",true);
	xhr.send(formData);
	}


/**
 * Cette méthode "Ajax" affiche la liste des auteurs.
 *
 * On utilise la propriété 'responseXML' de l'objet XMLHttpRequest afin
 * de récupérer sous forme d'arbre DOM le document XML envoyé par le serveur.
 *


/**
 * Cette méthode "Ajax" permet de tester les paramètres passés par l'url.
 */
function testEncodeUrl ()
	{
	// Objet XMLHttpRequest.
	var xhr = getXMLHttpRequest();

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onreadystatechange = function()
		{
		// Si l'on a tout reçu et que la requête http s'est bien passée.
		if (xhr.readyState === 4 && xhr.status === 200)
			{
			// Elément html que l'on va mettre à jour.
			document.getElementById("recue").value = xhr.responseXML.getElementsByTagName("msg")[0].firstChild.nodeValue ;
			}
		};

	// Requête au serveur avec les paramètres éventuels.
	var param = "texte=" + encodeURIComponent(document.getElementById("envoie").value);
	var url = "ServletEncode";
	alert(url + "?" + param);

	xhr.open("POST",url,true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send(param);
	}



    function performAjaxSubmit() {

        var sampleFile = document.getElementById("sampleFile").files[0];

        var formdata = new FormData();

        formdata.append("sampleFile", sampleFile);

        var xhr = new XMLHttpRequest();       

        xhr.open("POST","UploadPoServlet", true);

        xhr.send(formdata);

        xhr.onload = function(e) {

            if (this.status == 200) {
                var s ="";
                var e = xhr.responseXML.getElementsByTagName("tr");
                for (var i=0 ; i < e.length ; i++){
                s+= "<tr>";    
                var e2 = e[i].getElementsByTagName("td");
                    for (var j=0 ; j < e2.length ; j++){
                        s+= "<td>"; 
                        if (e2[j].firstChild.nodeValue != null){
                            
                        s+= e2[j].firstChild.nodeValue;
                        }
                        s+= "</td>"; 
                }
                s+= "</tr>"; 
            }
               alert(s);
               var body = document.getElementById("body1");
               body.innerHTML =s;
            }

        };                    

    }   

</script>
    </script>
    </body>
</html>
