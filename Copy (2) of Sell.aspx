<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy (2) of Sell.aspx.cs" Inherits="Sell" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Mohammadi Pharma : Sell</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="This Parking Management System Developed by Mayuri K. Freelancer in india">
    <meta name="keywords" content="Mayuri K. freelancer">
    <meta name="author" content="Mayuri K.">
    <link rel="icon" href="uploadImage/Logo/logo1.png" type="image/x-icon">
    <link href="files/assets/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/jquery.mCustomScrollbar.css">
    <link href="select2.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="popup_style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style type="text/css">
        /*input[type=text],input[type=button],input[type=submit]*/
        input
        {
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px; /*
            border: 1px solid #2d9fd9;
            color: #a0d18c;
            width: 250px;
            height: 30px;
            padding-left: 10px;
        */
        }
        
        input[type=text]:focus
        {
            outline: none;
            border: 1px solid #a0d18c;
            color: #2d9fd9;
        }
    </style>
    <style type="text/css">
        .cart th td
        {
            padding: 5px;
        }
        .table-condensed tr th
        {
            border: 0px solid #6e7bd9;
            color: white;
            background-color: #6e7bd9;
        }
        
        .table-condensed, .table-condensed tr td
        {
            border: 0px solid #000;
        }
        
        tr:nth-child(even)
        {
            background: #f8f7ff;
        }
        
        tr:nth-child(odd)
        {
            background: #fff;
        }
    </style>
    <style type="text/css">
        /* 
        .btn
        {
            padding: 0px;
        }
       
        .form-group 
        {
             padding:0px;
        }
        .row 
        {
             padding:0px;
        }
        label
        {
             padding:0px;
        }
        */
        
        input[type=text]
        {
            padding: 2px;
        }
        
        
        /*input[type=text],input[type=button],input[type=submit]*/
        .form-control
        {
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px; /*
            border: 1px solid #2d9fd9;
            color: #a0d18c;
            width: 250px;
            height: 30px;
            padding-left: 10px;
        */
        }
        
        input[type=text]:focus
        {
            outline: none;
            border: 1px solid #a0d18c;
            color: #2d9fd9;
        }
    </style>
    <style type="text/css">
        table.cart th
        {
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
    <style type="text/css">
        table.roundedCorners
        {
            border: 1px solid DarkOrange;
            border-radius: 13px;
            border-spacing: 0;
        }
        table.roundedCorners td, table.roundedCorners th
        {
            border-bottom: 1px solid DarkOrange;
            padding: 10px;
        }
        table.roundedCorners tr:last-child > td
        {
            border-bottom: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="theme-loader">
        <center>
            <img src="uploadImage/loading.gif" /></center>
        <!-- <div class="ball-scale">
<div class='contain'>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
<div class="ring">
<div class="frame"></div>
</div>
</div>
</div> -->
    </div>
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box">
        </div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
<div class="navbar-wrapper">
<div class="navbar-logo">

Mohammadi Pharma

</div>
<div class="navbar-container container-fluid">
<ul class="nav-left">
<!-- <li class="header-search">
<div class="main-search morphsearch-search">
<div class="input-group">
 <span class="input-group-addon search-close"><i class="feather icon-x"></i></span>
<input type="text" class="form-control">
<span class="input-group-addon search-btn"><i class="feather icon-search"></i></span>
</div>
</div>
</li> -->
<!-- <li>
<a href="#!" onclick="javascript:toggleFullScreen()">
<i class="feather icon-maximize full-screen"></i>
</a>
</li> -->
</ul>
<ul class="nav-right">
 <li class="header-notification">
<div class="dropdown-primary dropdown">
<!-- <div class="dropdown-toggle" data-toggle="dropdown">
<i class="feather icon-bell"></i>
<span class="badge bg-c-pink">5</span>
</div> -->
<!-- <ul class="show-notification notification-view dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
<li>
<h6>Notifications</h6>
<label class="label label-danger">New</label>
</li>

</ul> -->
</div>
</li> 




<li class="user-profile header-notification" >
<div class="dropdown-primary dropdown">
<div class="dropdown-toggle" data-toggle="dropdown">
	
			


</div>
<ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
<li>
<a href="profile.php">
<i class="feather icon-user"></i> Profile
</a>
</li>
<li>
<a href="changepassword.php">
<i class="feather icon-edit"></i> Change Password
</a>
</li>


<li>
<a href="logout.php">
<i class="feather icon-log-out"></i> Logout
</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
</div>
</nav>
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                     <nav class="pcoded-navbar">
<div class="pcoded-inner-navbar main-menu">
<div class="pcoded-navigatio-lavel">Navigation</div>
<ul class="pcoded-item pcoded-left-item">
    <li class="">
<a href="DashboardUser.aspx">
<span class="pcoded-micon"><i class="feather icon-home"></i></span>
<span class="pcoded-mtext">Dashboard</span>
</a>
</li>
 

<li class="pcoded-hasmenu">
<a href="#">
<span class="pcoded-micon"><i class="feather icon-grid"></i></span>
<span class="pcoded-mtext">Sell</span>
</a>
<ul class="pcoded-submenu">
   


<li class="">
<a href="Sell.aspx">
<span class="pcoded-mtext">New Sell</span>
</a>
</li>
<li class="">
<a href="SellManage.aspx">
<span class="pcoded-mtext">Manage Sell</span>
</a>
</li>
</ul>
</li>
<li class="pcoded-hasmenu">
<a href="#">
<span class="pcoded-micon"><i class="feather icon-image"></i></span>
<span class="pcoded-mtext">Stock</span>
</a>
<ul class="pcoded-submenu">
   


<li class="">
<a href="Stock.aspx">
<span class="pcoded-mtext">Add to Stock</span>
</a>
</li>
<li class="">
<a href="StockInInvoiceManage.aspx">
<span class="pcoded-mtext">Manage Stock</span>
</a>
</li>

</ul>

</li>
 

<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-folder"></i></span>
<span class="pcoded-mtext">Reports</span>
</a>

 
<ul class="pcoded-submenu">

<li class="">
<a href="Report.aspx">
<span class="pcoded-mtext">Reports</span>
</a>
</li>
</ul>

</li>



 
 


<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-settings"></i></span>
<span class="pcoded-mtext">Settings</span>
</a>


<ul class="pcoded-submenu">
   


<li class=""><a href="AddCategory.aspx"><span class="pcoded-mtext">Category</span></a></li>
<li class=""><a href="AddMedicine.aspx"><span class="pcoded-mtext">Medicine</span></a></li>
<li class=""><a href="AddManufacturer.aspx"><span class="pcoded-mtext">Manufacturer</span></a></li>
<li class=""><a href="AddSupplier.aspx"><span class="pcoded-mtext">Supplier</span></a></li>

</ul>
</li>

<li class="">
<a href="Logout.aspx">
    <span class="pcoded-micon"><i class="feather icon-log-out"></i></span>
<span class="pcoded-mtext"></i> Logout</span>
</a>
</li>
</ul>
</div>
</nav>
                    <br />
                    <marquee scrollamount="4"><b>Welcome to Mohammadi Pharma !</b></marquee>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper full-calender">
                                    <div class="page-header">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <div class="d-inline">
                                                        <h4>
                                                            New Sell</h4>
                                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                    <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                                        </a></li>
                                                        <li class="breadcrumb-item"><a>Sell</a> </li>
                                                        <li class="breadcrumb-item"><a href="addpass.php">New Sell</a> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        <div class="card col-md-12">
                                            <div class="card-body">
                                                <table>
                                                    <tr>
                                                        <td colspan="6">
                                                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Date
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSellDate" runat="server" placeholder="Invoice
                                        Date" required=""></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Invoice NO
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtInvoiceNO" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <input id="Button1" type="button" value="Get Invoice NO" class="btn btn-info" />
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Customer ID
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCusID" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Customer Name
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCusName" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Medicine Code
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:DropDownList ID="ddlMedicine" runat="server" CssClass="select2">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Quantity
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Unit Price
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Total Price
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTotalPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Discount Code
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlDiscountCode" runat="server" CssClass="select2">
                                                                <asp:ListItem Value="0">No
                                        Discount</asp:ListItem>
                                                                <asp:ListItem Value="5">5% Discount</asp:ListItem>
                                                                <asp:ListItem Value="10">10% Discount</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            Discount
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Net Price
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtNetAmount" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click"
                                                                class="btn btn-primary m-b-0" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="card col-md-12">
                                            <h4>
                                                Cart Details :</h4>
                                            <hr />
                                            <table id="example1" class="cart">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            SL
                                                        </th>
                                                        <th>
                                                            Product Name
                                                        </th>
                                                        <th>
                                                            Quantity
                                                        </th>
                                                        <th>
                                                            Unit Price
                                                        </th>
                                                        <th>
                                                            Total Sell Price
                                                        </th>
                                                        <th>
                                                            Discount
                                                        </th>
                                                        <th>
                                                            Net Receivable
                                                        </th>
                                                        <th>
                                                            Action
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% var tot = 0; double totamount = 0.00; for (var data = 0; data < TableData.Rows.Count;
                                    data++)
                                                       {
                                                           tot = tot + 1; totamount = totamount + Convert.ToDouble(TableData.Rows[data]["NetReceivable"]); %>
                                                    <tr>
                                                        <td class="auto-style1">
                                                            <%=tot%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["ProductName"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["Quantity"]%>
                                                        </td>
                                                          <td class="auto-style1">
                                                            <%=TableData.Rows[data]["SellPrice"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["TotalSellPrice"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["Discount"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["NetReceivable"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <!-- <a href="StudentProfileUpdate.aspx?ID=<%=TableData.Rows[data]["ID"]
                                    %>"><span><i class="fa fa-edit"></i>Edit </span></a>&nbsp; <a href="info.php?ID=<%=TableData.Rows[data]["ID"]
                                    %>"> <span><i class="fa fa-info"></i>Info</span></a> &nbsp; <a href="casehistory.php?ID=<%=TableData.Rows[data]["ID"]
                                    %>"> <span><i class="fa fa-history"></i>History</span></a> &nbsp; <a class="popup"
                                    onclick="myFunction()"> <span><i class="fa fa-money"></i>Payment<span class="popuptext"
                                    id="myPopup">Get full version at mayuri.infospace@gmail.com</span></span></a> &nbsp;
                                    -->
                                                            <a href="DeleteCartItem.aspx?InvNO=<%=TableData.Rows[data]["InvoiceNO"] %>&StockID=<%=TableData.Rows[data]["StockID"]%>&ProductCode=<%=TableData.Rows[data]["ProductCode"]%>"
                                                                class='btn btn-xs btn-danger delete'><i class="fa fa-fw fa-trash"></i>Delete</a>
                                                        </td>
                                                    </tr>
                                                    <% } %>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            Invoice Amount
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtInvoiceAmount" runat="server" Text="<%=totamount%>"></asp:TextBox>
                                                        </td>
                                                      
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            Total Discount
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtTotalDiscount" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            VAT
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtVAT" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            TAX
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtTAX" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            Net Amount
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtNetTotal" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            Paid Amount
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtPaidAmount" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                        </td>
                                                        <td>
                                                            Change
                                                        </td>
                                                        <td class="auto-style1">
                                                            <asp:TextBox ID="txtChange" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="form-group row">
                                                <div class="col-sm-4">
                                                    <asp:Button ID="btnCreateInvoice" runat="server" Text="Create
                                    Invoice" class="btn btn-primary m-b-0" OnClick="btnCreateInvoice_Click" />
                                                    
                                                    <!--
                                                    <a href="/Mpa/Orders/DeleteQuote/22" class="btn btn-danger" onclick="return confirm('Are you sure, you want to delete it?')">
                                                        Delete Quote</a>

                                                        -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End xxxx -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End footer -->
            </div>
            <!-- End Page wrapper  -->
        </div>
    </div>
    </form>
    <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
    <script type="text/javascript" src="files/assets/pages/data-table/js/data-table-custom.js"></script>
    <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
    <script type="text/javascript" src="files/assets/js/vartical-layout.min.js"></script>
    <script type="text/javascript" src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="files/assets/js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="files/assets/js/script.min.js"></script>
    <script type="text/javascript" src="files/assets/js/script.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
    <script src="select2.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {
            $('.delete').on('click', function () {
                return confirm('Are you sure?');
            });
        });





        $(function () {
            $('.select2').select2();
        });



        $(document).ready(function () {


            //$("#txtInvoiceNO").val(100);

            //alert('Sell Page');

            var tab_intdex = document.getElementById('HiddenField1').value;
            $("#myTab li:eq(" + tab_intdex + ") a").tab('show');

            /*
            $("#btnSubmit2").click(function () {

            var v = $("#Text1").val();
            alert(v);
            $("#myTab li:eq(" + v + ") a").tab('show');
            });
            */

            $("#tabs").tabs();


            //$("#txtDOB").datepicker();


            $("input").keyup(function () {

                alert('tt');
                $('#txtTotalPrice').val($('#txtQuantity').val() * $('#txtUnitPrice').val());
            });

        });

        $(document).ready(function () {

            //alert('tt');
            //$('#example1').DataTable();




            $("#Button1").click(function () {
                //$('#txtInvoiceNO').val(100);
                getInvoiceNO();
            });


            /////////AJAX Call///////////////////////////////
            $("#btnGetContractCode").click(function (e) {
                getInvoiceNO();
                //alert('ccccccc');
            })
            function getInvoiceNO() {
                //var loc = window.location.href;
                //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
                $.ajax({
                    type: "POST",
                    //url: loc + "/CheckUserName",
                    //url: loc + "/AAA",
                    url: "Sell.aspx/getInvoiceNO",
                    data: JSON.stringify({ inv_type: 'I' }),
                    //data: '{"item_Short_Name":"' + item_Short_Name + '"}',
                    //data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d) {
                            //alert(msg.d);
                            $("#txtInvoiceNO").val(msg.d);
                            //$("#txtFIContractCode").attr('disabled', true);
                            //$("#ddlCType").focus();
                            //alert($("#txtInvoiceNO").val());
                        }
                        else
                            alert(val(msg.d))
                    },
                    error: function (request, status, error) {
                        alert(request.responseText);
                        //alert(request.status);
                    }
                });
            }


            $("#txtQuantity").keyup(function () {

                var tot_price = $('#txtQuantity').val() * $('#txtUnitPrice').val();
                $('#txtTotalPrice').val(tot_price.toFixed(2));
                //$('#txtNetAmount').val($('#txtTotalPrice').val() - $('#txtDiscount').val());

                $("#ddlDiscountCode").val("0");
                $('#ddlDiscountCode').select2().trigger('change');
            });

            $("#txtDiscount").keyup(function () {
                $('#txtNetAmount').val($('#txtTotalPrice').val() - $('#txtDiscount').val());
            });

            $("#txtTotalDiscount").keyup(function () {
                $('#txtNetTotal').val($('#txtInvoiceAmount').val() - $('#txtTotalDiscount').val());
            });

            $("#txtPaidAmount").keyup(function () {
                $('#txtChange').val($('#txtPaidAmount').val() - $('#txtNetTotal').val());

                //alert($('#txtNetAmount').val());
            });


        })



    </script>
    <script type="text/javascript">

        function OpenProductSearchWindow() {

            var url = "Search.aspx";

            var var2;
            var width = screen.availWidth - 200;
            var height = screen.availHeight - 200;
            var left = parseInt((screen.availWidth / 2) - (width / 2));
            var top = parseInt((screen.availHeight / 2) - (height / 2));
            var windowFeatures = "width=" + width + ", height=" + height + ", status, resizable, screenX=" + left + ", screenY=" + top;

            //var NWin = window.open("PopUpHelper.aspx?txtBox='"+test+"'&var1="+test+"&var2="+test,'_blank', windowFeatures);
            //var NWin = window.open("Menu.aspx", windowFeatures);
            //alert(windowFeatures);
            //newwindow = window.open('Menu.aspx', 'name', 'height=' + height + ', width=' + width + ', left=' + left + ', top=' + top + ', resizable=yes, scrollbars=yes, toolbar=no, status=yes, menubar=no');

            //newwindow = window.open(pagename, '_blank', ' resizable=yes, scrollbars=yes, toolbar=no, status=yes, menubar=no');


            newwindow = window.open(url, '_blank', 'height=' + height + ', width=' + width + ', left=' + left + ', top=' + top + ', resizable=yes, scrollbars=yes, toolbar=no, status=yes, menubar=no');

            newwindow.focus();

        }

    </script>
    <script type="text/javascript">
        $(function () {
            $("#ddlMedicine").change(function () {
                var selectedText = $(this).find("option:selected").text();
                var selectedValue = $(this).val();
                //alert("Selected Text: " + selectedText + " Value: " + selectedValue);

                //var res = selectedText.split("//");
                var res = selectedText.split("~");

                //alert(res[0]);
                //alert(res[1]);

                document.getElementById("txtUnitPrice").value = res[4];
                //document.getElementById("intro").value = res[2];
            });

            $("#ddlDiscountCode").change(function () {
                var selectedText = $(this).find("option:selected").text();
                var selectedValue = $(this).val();

                var totprice = document.getElementById("txtTotalPrice").value

                //alert(selectedValue);
                if (selectedValue == "0") {
                    document.getElementById("txtDiscount").value = 0.00;
                    document.getElementById("txtNetAmount").value = parseFloat(totprice);

                } else {

                    var discount = totprice * (parseInt(selectedValue) / 100);
                    discount = discount.toFixed(2);
                    document.getElementById("txtDiscount").value = parseFloat(discount);
                    document.getElementById("txtNetAmount").value = parseFloat(totprice) - parseFloat(discount);
                }

            });
        });
    </script>
</body>
</html>
