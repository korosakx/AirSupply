<%-- 
    Document   : poupload
    Created on : 23 mars 2017, 11:31:49
    Author     : 21513547
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AirSupply | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="sidebar-mini fixed skin-blue-light" style="height: auto;">
<div class="wrapper" style="height: auto;">

  <header class="main-header">

    <!-- Logo -->
    <a href="poupload.jsp" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>S</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Air</b>Supply</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 875px;"><section class="sidebar" style="height: 875px; overflow: hidden; width: auto;">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"> Supplier</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            
          </a>
          
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Layout Options</span>
            
          </a>
          
        </li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>KPI</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="#"><i class="fa fa-circle-o"></i>Graph 1</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Graph 3</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Graph 3</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Graph 4</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>VMI Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="#"><i class="fa fa-circle-o"></i>VMI upload</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Stock Upload</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Prev Upload</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>VMI view</a></li>
            
            
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>PO Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="#"><i class="fa fa-circle-o"></i>PO Upload</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>Negociations</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>History</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Exportations</span>
            
          </a>
          
        </li>
        <li>
          <a href="#">
            <i class="fa fa-calendar"></i> <span>History</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </a>
        </li>
        
        
        
        
        
        
        
      </ul>
    </section><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.2); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 875px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 874px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Version 1.0</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Upload Purshase Order</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form">
              <div class="box-body">
                
                
                <div class="form-group">
                  <label for="exampleInputFile">Choose file :</label>
                  <input type="file" id="exampleInputFile">

                  
                </div>
                	
				
				
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>

      <!-- /.row -->

      <div class="row">
        <div class="col-md-12">
          
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
   </section>
     <section class="content">
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
                
					<tr>
						<td>R8441256</td>
						<td>2017-03-09 11:11:17</td>
						<td>2017-03-09 11:11:17</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-03-09 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-03-09 11:11:17</td>
						<td>10</td>
						<td>NEW ORDER PUBLISHED</td>
						<td>FR_D5713408820200</td>
						<td>RENFORT AVANT</td>
						<td>D5713408820200</td>
						<td>RENFORT AVANT</td>
						<td>PCE</td>
						<td>2017-04-10 23:59:59</td>
						<td>1</td>
						<td>2017-04-10 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8441255</td>
						<td>2017-03-09 11:12:03</td>
						<td>2017-03-09 11:12:03</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-03-09 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-03-09 11:12:03</td>
						<td>10</td>
						<td>NEW ORDER PUBLISHED</td>
						<td>FR_D5713408820200</td>
						<td>RENFORT AVANT</td>
						<td>D5713408820200</td>
						<td>RENFORT AVANT</td>
						<td>PCE</td>
						<td>2017-04-10 23:59:59</td>
						<td>1</td>
						<td>2017-04-10 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8331342</td>
						<td>2017-01-24 13:40:29</td>
						<td>2017-03-09 15:15:37</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-24 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-24 13:40:29</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_F5791048200200</td>
						<td>47-SUPPORT EQUIPE</td>
						<td>F5791048200200</td>
						<td>47-SUPPORT EQUIPE_GM8SE_MET</td>
						<td>PCE</td>
						<td>2017-02-23 23:59:59</td>
						<td>1</td>
						<td>2017-02-23 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>6865005</td>
						<td>2016-08-08 10:56:07</td>
						<td>2017-02-23 10:46:07</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-08-08 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-08-08 10:56:07</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392627500400</td>
						<td>EQUIPPED BRACKET</td>
						<td>V5392627500400</td>
						<td>EQUIPPED BRACKET</td>
						<td>PCE</td>
						<td>2017-03-08 23:59:59</td>
						<td>4</td>
						<td>2017-03-08 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>1132</td>
						<td>1132</td>
						<td>PCE</td>
						<td>USD</td>
						<td>4528</td>
					</tr>
					<tr>
						<td>7244037</td>
						<td>2016-11-21 15:32:39</td>
						<td>2017-03-03 11:13:51</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-11-21 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-11-21 15:32:39</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713440020000</td>
						<td>FERRURE DE COMP.</td>
						<td>D5713440020000</td>
						<td>FERRURE DE COMP.</td>
						<td>PCE</td>
						<td>2017-03-09 23:59:59</td>
						<td>5</td>
						<td>2017-03-09 23:59:59</td>
						<td>5</td>
						<td>0</td>
						<td>5</td>
						<td></td>
						<td></td>
						<td>197</td>
						<td>197</td>
						<td>PCE</td>
						<td>USD</td>
						<td>985</td>
					</tr>
					<tr>
						<td>R8339211</td>
						<td>2017-01-26 14:21:14</td>
						<td>2017-03-01 09:49:18</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-26 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-26 14:21:14</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_F5711030500800</td>
						<td>FERRURE BIELLE C42</td>
						<td>F5711030500800</td>
						<td>FERRURE BIELLE C42</td>
						<td>PCE</td>
						<td>2017-03-09 23:59:59</td>
						<td>3</td>
						<td>2017-03-09 23:59:59</td>
						<td>3</td>
						<td>0</td>
						<td>3</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>7484465</td>
						<td>2017-01-26 13:17:30</td>
						<td>2017-03-08 16:47:44</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-26 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-26 13:17:30</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5791412900000</td>
						<td>SUPPORT USINE</td>
						<td>D5791412900000</td>
						<td>SUPPORT USINE</td>
						<td>PCE</td>
						<td>2017-03-10 23:59:59</td>
						<td>2</td>
						<td>2017-03-10 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>424</td>
						<td>424</td>
						<td>PCE</td>
						<td>USD</td>
						<td>848</td>
					</tr>
					<tr>
						<td>7460591</td>
						<td>2017-01-20 11:39:00</td>
						<td>2017-03-10 10:12:09</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-20 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-20 11:39:00</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5791412020000</td>
						<td>SUPPORT USINE</td>
						<td>D5791412020000</td>
						<td>SUPPORT USINE</td>
						<td>PCE</td>
						<td>2017-03-13 23:59:59</td>
						<td>2</td>
						<td>2017-03-13 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>362</td>
						<td>362</td>
						<td>PCE</td>
						<td>USD</td>
						<td>724</td>
					</tr>
					<tr>
						<td>R8379002</td>
						<td>2017-02-13 15:35:04</td>
						<td>2017-02-16 13:56:23</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-13 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-13 15:35:04</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_L5331029700000</td>
						<td>FER.BIELLE HZ C56</td>
						<td>L5331029700000</td>
						<td>FER.BIELLE HZ C56_GM8SE_MLN_OLD</td>
						<td>PCE</td>
						<td>2017-03-13 23:59:59</td>
						<td>1</td>
						<td>2017-03-13 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>6825185</td>
						<td>2016-07-18 15:28:40</td>
						<td>2017-03-09 10:28:25</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-07-18 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-24 11:48:36</td>
						<td>30</td>
						<td>OPEN</td>
						<td>FR_V5332608600600</td>
						<td>FERRURE MARCHEPIED EQ</td>
						<td>V5332608600600</td>
						<td>FERRURE MARCHEPIED EQ</td>
						<td>PCE</td>
						<td>2017-03-13 23:59:59</td>
						<td>8</td>
						<td>2017-03-13 23:59:59</td>
						<td>8</td>
						<td>0</td>
						<td>8</td>
						<td></td>
						<td></td>
						<td></td>
						<td>265</td>
						<td>PCE</td>
						<td>USD</td>
						<td>2120</td>
					</tr>
					<tr>
						<td>6697817</td>
						<td>2016-06-14 14:24:46</td>
						<td>2017-02-23 10:46:04</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-06-14 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-06-14 14:24:46</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392633700200</td>
						<td>EQUIPPED BRACKET</td>
						<td>V5392633700200</td>
						<td>EQUIPPED BRACKET</td>
						<td>PCE</td>
						<td>2017-03-14 23:59:59</td>
						<td>4</td>
						<td>2017-03-14 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>1132</td>
						<td>1132</td>
						<td>PCE</td>
						<td>USD</td>
						<td>4528</td>
					</tr>
					<tr>
						<td>7062955</td>
						<td>2016-10-04 10:12:57</td>
						<td>2017-02-23 10:46:57</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-10-04 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-10-04 10:12:57</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392097800400</td>
						<td>FERR.AR.RESERV.JAUNE</td>
						<td>V5392097800400</td>
						<td>FERR.AR.RESERV.JAUNE</td>
						<td>PCE</td>
						<td>2017-03-15 23:59:59</td>
						<td>6</td>
						<td>2017-03-15 23:59:59</td>
						<td>6</td>
						<td>0</td>
						<td>6</td>
						<td></td>
						<td></td>
						<td>1132</td>
						<td>1132</td>
						<td>PCE</td>
						<td>USD</td>
						<td>6792</td>
					</tr>
					<tr>
						<td>7257607</td>
						<td>2016-11-23 17:39:38</td>
						<td>2017-03-09 10:26:01</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-11-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-11-23 17:39:38</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713440120000</td>
						<td>FERRURE DE COMP.</td>
						<td>D5713440120000</td>
						<td>FERRURE DE COMP.</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>5</td>
						<td>2017-03-17 23:59:59</td>
						<td>5</td>
						<td>0</td>
						<td>5</td>
						<td></td>
						<td></td>
						<td>231</td>
						<td>231</td>
						<td>PCE</td>
						<td>USD</td>
						<td>1155</td>
					</tr>
					<tr>
						<td>R8322823</td>
						<td>2017-01-25 09:45:44</td>
						<td>2017-02-09 11:53:05</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-25 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-25 09:45:44</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ</td>
						<td>V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ_GM218_8FV</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8321410</td>
						<td>2017-01-25 09:36:42</td>
						<td>2017-02-09 11:53:05</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-25 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-25 09:36:42</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ</td>
						<td>V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ_GM218_8FV</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8375509</td>
						<td>2017-02-10 10:49:02</td>
						<td>2017-03-10 09:04:45</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-10 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-10 10:49:02</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713204620102</td>
						<td>FERRURE CADRE OBLIQ.</td>
						<td>D5713204620102</td>
						<td>FERRURE CADRE OBLIQ._GM218_8E5</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>4</td>
						<td>2017-03-17 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>7231558</td>
						<td>2016-11-17 10:46:21</td>
						<td>2017-03-09 10:26:01</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-11-17 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-11-17 10:46:21</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713440020000</td>
						<td>FERRURE DE COMP.</td>
						<td>D5713440020000</td>
						<td>FERRURE DE COMP.</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>14</td>
						<td>2017-03-17 23:59:59</td>
						<td>14</td>
						<td>0</td>
						<td>14</td>
						<td></td>
						<td></td>
						<td>197</td>
						<td>197</td>
						<td>PCE</td>
						<td>USD</td>
						<td>2758</td>
					</tr>
					<tr>
						<td>7419391</td>
						<td>2017-01-11 09:00:13</td>
						<td>2017-01-17 10:27:04</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-11 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-11 09:00:13</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_L5711065720501</td>
						<td>FERRURE ETANCHE C46 D</td>
						<td>L5711065720501</td>
						<td>FERRURE ETANCHE C46 D_GM218_8K6</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>2</td>
						<td>2017-03-17 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>704</td>
						<td>704</td>
						<td>PCE</td>
						<td>USD</td>
						<td>1408</td>
					</tr>
					<tr>
						<td>R8318895</td>
						<td>2017-01-25 09:31:45</td>
						<td>2017-02-09 11:53:05</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-25 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-25 09:31:45</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ</td>
						<td>V5711044500200</td>
						<td>FERRURE BIELLE 1 EQ_GM218_8FV</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>4</td>
						<td>2017-03-17 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>22R8392561</td>
						<td>2017-02-17 11:21:00</td>
						<td>2017-02-21 08:23:49</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-17 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-17 11:21:00</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_M2811342300000</td>
						<td>TE VENT.</td>
						<td>M2811342300000</td>
						<td>TE VENT_GM218_8FV</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>2017-03-17 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>7419384</td>
						<td>2017-01-11 08:57:28</td>
						<td>2017-01-17 10:26:12</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-01-11 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-01-11 08:57:28</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_L5711065720401</td>
						<td>FERRURE ETANCHE C46 G</td>
						<td>L5711065720401</td>
						<td>FERRURE ETANCHE C46 G_GM218_8K6</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>2</td>
						<td>2017-03-17 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>704</td>
						<td>704</td>
						<td>PCE</td>
						<td>USD</td>
						<td>1408</td>
					</tr>
					<tr>
						<td>7251072</td>
						<td>2016-11-22 17:25:14</td>
						<td>2017-03-09 10:26:01</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-11-22 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-11-22 17:25:14</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713440120000</td>
						<td>FERRURE DE COMP.</td>
						<td>D5713440120000</td>
						<td>FERRURE DE COMP.</td>
						<td>PCE</td>
						<td>2017-03-17 23:59:59</td>
						<td>12</td>
						<td>2017-03-17 23:59:59</td>
						<td>12</td>
						<td>0</td>
						<td>12</td>
						<td></td>
						<td></td>
						<td>231</td>
						<td>231</td>
						<td>PCE</td>
						<td>USD</td>
						<td>2772</td>
					</tr>
					<tr>
						<td>R8380373</td>
						<td>2017-02-20 10:40:46</td>
						<td>2017-02-21 08:24:23</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-20 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-20 10:40:46</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_L5331029700000</td>
						<td>FER.BIELLE HZ C56</td>
						<td>L5331029700000</td>
						<td>FER.BIELLE HZ C56_GM8SE_MLN_OLD</td>
						<td>PCE</td>
						<td>2017-03-20 23:59:59</td>
						<td>7</td>
						<td>2017-03-20 23:59:59</td>
						<td>7</td>
						<td>0</td>
						<td>7</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>6655370</td>
						<td>2016-06-02 15:19:20</td>
						<td>2017-02-23 10:47:27</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-06-02 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-06-02 15:19:20</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392627500200</td>
						<td>EQUIPPED BRACKET</td>
						<td>V5392627500200</td>
						<td>EQUIPPED BRACKET_GM2FE_8F5</td>
						<td>PCE</td>
						<td>2017-03-20 23:59:59</td>
						<td>2</td>
						<td>2017-03-20 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>1132</td>
						<td>1132</td>
						<td>PCE</td>
						<td>USD</td>
						<td>2264</td>
					</tr>
					<tr>
						<td>R8400343</td>
						<td>2017-02-21 14:40:07</td>
						<td>2017-02-24 13:59:00</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-21 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-21 14:40:07</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713339720000</td>
						<td>FERRURE DE COMP</td>
						<td>D5713339720000</td>
						<td>FERRURE DE COMP_GM8SE_MET</td>
						<td>PCE</td>
						<td>2017-03-21 23:59:59</td>
						<td>50</td>
						<td>2017-03-21 23:59:59</td>
						<td>50</td>
						<td>0</td>
						<td>50</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8397110</td>
						<td>2017-02-21 09:01:14</td>
						<td>2017-02-24 13:58:59</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-21 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-21 09:01:14</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D2821065100000</td>
						<td>ENS SUPPORT</td>
						<td>D2821065100000</td>
						<td>ENS SUPPORT_GM217_8AE</td>
						<td>PCE</td>
						<td>2017-03-21 23:59:59</td>
						<td>2</td>
						<td>2017-03-21 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8119357</td>
						<td>2016-10-17 14:17:45</td>
						<td>2017-03-06 08:57:58</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-10-17 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-10-17 14:17:45</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_F5711084200000</td>
						<td>BIELLE EQUIPEE</td>
						<td>F5711084200000</td>
						<td>BIELLE EQUIPEE_CRITIQUE_GM8SE_MCD</td>
						<td>PCE</td>
						<td>2017-03-21 23:59:59</td>
						<td>6</td>
						<td>2017-03-21 23:59:59</td>
						<td>6</td>
						<td>0</td>
						<td>6</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8404329</td>
						<td>2017-02-22 15:30:45</td>
						<td>2017-02-24 13:59:01</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-22 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-22 15:30:45</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D5713204620102</td>
						<td>FERRURE CADRE OBLIQ.</td>
						<td>D5713204620102</td>
						<td>FERRURE CADRE OBLIQ._GM218_8E5</td>
						<td>PCE</td>
						<td>2017-03-22 23:59:59</td>
						<td>4</td>
						<td>2017-03-22 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8404159</td>
						<td>2017-02-22 15:58:29</td>
						<td>2017-02-23 10:22:15</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-22 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-22 15:58:29</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392037800200</td>
						<td>FERRURE VCRU EQ.</td>
						<td>V5392037800200</td>
						<td>FERRURE VCRU EQ._GM8SE_MEF</td>
						<td>PCE</td>
						<td>2017-03-22 23:59:59</td>
						<td>2</td>
						<td>2017-03-22 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8404490</td>
						<td>2017-02-23 08:32:56</td>
						<td>2017-02-23 10:22:15</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-23 08:32:56</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5392037900200</td>
						<td>FERRURE VCRU EQ.</td>
						<td>V5392037900200</td>
						<td>FERRURE VCRU EQ._GM8SE_MEF</td>
						<td>PCE</td>
						<td>2017-03-23 23:59:59</td>
						<td>2</td>
						<td>2017-03-23 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8388961</td>
						<td>2017-02-20 13:26:08</td>
						<td>2017-02-21 15:40:22</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-20 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-20 13:26:08</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711140520300</td>
						<td>FERRURE RAIL C51-52 D</td>
						<td>V5711140520300</td>
						<td>FERRURE RAIL C51-52 D_GM8SE_MCF</td>
						<td>PCE</td>
						<td>2017-03-23 23:59:59</td>
						<td>1</td>
						<td>2017-03-23 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8389239</td>
						<td>2017-02-20 13:28:08</td>
						<td>2017-02-21 15:40:22</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-20 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-20 13:28:08</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711140520300</td>
						<td>FERRURE RAIL C51-52 D</td>
						<td>V5711140520300</td>
						<td>FERRURE RAIL C51-52 D_GM8SE_MCF</td>
						<td>PCE</td>
						<td>2017-03-23 23:59:59</td>
						<td>3</td>
						<td>2017-03-23 23:59:59</td>
						<td>3</td>
						<td>0</td>
						<td>3</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R7817279</td>
						<td>2016-05-23 08:55:02</td>
						<td>2017-03-09 15:15:37</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2016-05-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2016-05-23 08:55:02</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_F5791048200200</td>
						<td>47-SUPPORT EQUIPE</td>
						<td>F5791048200200</td>
						<td>47-SUPPORT EQUIPE_GM8SE_MET</td>
						<td>PCE</td>
						<td>2017-03-23 23:59:59</td>
						<td>1</td>
						<td>2017-03-23 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>7511910</td>
						<td>2017-02-02 09:44:40</td>
						<td>2017-03-08 14:00:10</td>
						<td>MANUAL</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-02 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-02 09:44:40</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_D2821059200000</td>
						<td>SUPPORT EQUIPE</td>
						<td>D2821059200000</td>
						<td>SUPPORT EQUIPE</td>
						<td>PCE</td>
						<td>2017-03-24 23:59:59</td>
						<td>2</td>
						<td>2017-03-24 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>169</td>
						<td>169</td>
						<td>PCE</td>
						<td>USD</td>
						<td>338</td>
					</tr>
					<tr>
						<td>R8399700</td>
						<td>2017-02-23 09:35:54</td>
						<td>2017-02-23 10:21:29</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-23 09:35:54</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711048220500</td>
						<td>FERRURE COMPRESS 37D</td>
						<td>V5711048220500</td>
						<td>FERRURE COMPRESS 23D_GM218_8FV_NEW</td>
						<td>PCE</td>
						<td>2017-03-27 23:59:59</td>
						<td>1</td>
						<td>2017-03-27 23:59:59</td>
						<td>1</td>
						<td>0</td>
						<td>1</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8402808</td>
						<td>2017-02-23 09:36:36</td>
						<td>2017-02-23 10:22:16</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-23 09:36:36</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711007720000</td>
						<td>CALE D'ETANCHEITE</td>
						<td>V5711007720000</td>
						<td>CALE D'ETANCHEITE_DI_GM8SE_MCD</td>
						<td>PCE</td>
						<td>2017-03-27 23:59:59</td>
						<td>4</td>
						<td>2017-03-27 23:59:59</td>
						<td>4</td>
						<td>0</td>
						<td>4</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					<tr>
						<td>R8402985</td>
						<td>2017-02-23 09:39:25</td>
						<td>2017-02-23 10:22:16</td>
						<td>REPAIR</td>
						<td>286670</td>
						<td>A_ Nts</td>
						<td>Rue de l'aviation</td>
						<td>44340</td>
						<td>Bouguenais</td>
						<td>FR</td>
						<td>STA Aerospace</td>
						<td>13 RUE MARIE LOUISE DISSART</td>
						<td>31027</td>
						<td>TOULOUSE CEDEX 3</td>
						<td>FR</td>
						<td>30 days end of month, due 10th following month</td>
						<td>3010</td>
						<td>2017-02-23 00:00:00</td>
						<td>USD</td>
						<td>286670</td>
						<td>2017-02-23 09:39:25</td>
						<td>10</td>
						<td>OPEN</td>
						<td>FR_V5711007820000</td>
						<td>CALE D'ETANCHEITE</td>
						<td>V5711007820000</td>
						<td>CALE D'ETANCHEITE_DI_GM8SE_MCD</td>
						<td>PCE</td>
						<td>2017-03-27 23:59:59</td>
						<td>2</td>
						<td>2017-03-27 23:59:59</td>
						<td>2</td>
						<td>0</td>
						<td>2</td>
						<td></td>
						<td></td>
						<td>0</td>
						<td>0</td>
						<td>PCE</td>
						<td>USD</td>
						<td>0</td>
					</tr>
					
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
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0
    </div>
    <strong>Copyright © 2017 .</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark" style="position: fixed; height: auto; max-height: 100%; overflow: auto; padding-bottom: 50px;">
    <!-- Create the tabs -->
    
    <!-- Tab panes -->
    
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
      $('#example1').DataTable( {
        "scrollX": true,
        "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
    } );
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
    
   
    
    
  });
</script>









































</body>
</html>

