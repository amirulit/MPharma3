<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stock_20250802.aspx.cs" Inherits="Stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Mohammadi Pharma : Stock Add</title>
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
    <script type="text/javascript" language="javascript">



        function openwin_3() {
            var url;
            var var2;

            //url = "p_T24ClnCsh_3_Rep_2.aspx?var1=" + document.getElementById('TextBox1').value + "&var2=" + document.getElementById('TextBox2').value;

            url = "StockInInvoiceView.aspx?var1=" + document.getElementById('txtReceiveInvoiceNO').value;

            var width = screen.availWidth - 100;
            var height = screen.availHeight - 100;
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
        .gv
        {
            font-family: Arial;
            margin-top: 30px;
            font-size: 14px;
        }
        .gv th
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: #fff;
            padding: 2px 10px;
        }
        .gv td
        {
            padding: 2px 10px;
        }
        
        
        .gridbtn
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: Red;
            border-radius: 10px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
        }
        /*
        input[type="button"]
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 10px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
        }
        input[type="submit"]
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 10px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
        }
        input[type="submit"]:hover
        {
            background-color: orange;
        }
        */
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-header">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <div class="d-inline">
                                                        <h4>
                                                            Stock Add</h4>
                                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                    <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                                        </a></li>
                                                        <li class="breadcrumb-item"><a>Stock</a> </li>
                                                        <li class="breadcrumb-item"><a href="addpass.php">Stock Add</a> </li>
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
                                                        <td colspan="4">
                                                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Date
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtStockInDate" runat="server" placeholder="Full Name" required=""></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Invoice No <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtReceiveInvoiceNO" runat="server" required=""></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Total TP
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTotalTP" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Spec. Discount
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSpecialDiscount" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Buy Price Factor
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtBuyPriceFactor" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                             Net Amount
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtNetAmount" runat="server" 
                                                                ></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                            Supplier <span style="color: Red;">*</span>
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="select2">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlSupplier"
                                                                ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            <a href="AddSupplier.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    <td></td>
                                                    <td>
                                                        <asp:Button ID="btnSaveInvoice" runat="server" Text="Save Invoice"  
                                                            class="btn btn-primary  m-b-0" onclick="btnSaveInvoice_Click"/></td>
                                                    <td></td>
                                                    <td></td>
                                                    </tr>

                                                    </table>
                                                    <hr />
                                                <asp:Panel ID="Panel1" runat="server">
                                            
                                                    <table>
                                                    <tr>
                                                        <td>
                                                            Manufacturer
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:DropDownList ID="ddlManufacturer" runat="server" CssClass="select2" OnSelectedIndexChanged="ddlManufacturer_SelectedIndexChanged"
                                                                AutoPostBack="True">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Medicine/Product <span style="color: Red;">*</span>
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:DropDownList ID="ddlMedicine" runat="server" CssClass="select2">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlMedicine"
                                                                ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                                            <!--    <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle fa-2x">  </i></a>-->
                                                            <a href="AddMedicine.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                        </td>
                                                    </tr>
                                                   
                                                    <%--
                                                    <tr>
                                                        <td>
                                                            Packaging Type
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPakagingType" runat="server" CssClass="select2">
                                                                <asp:ListItem>&lt;--Select--&gt;</asp:ListItem>
                                                                <asp:ListItem>Carton</asp:ListItem>
                                                                <asp:ListItem>Box</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Package Count
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtIPackageCount" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Item per Package
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtItemPerPackage" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Quantity per Item
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtQuantityPerItem" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>
                                                            Total Pcs <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTotalPcs" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            TP
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTP" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            VAT
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtVAT" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Buy/Purchase Price <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Total Buy Price <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTotalBuyPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <!--
                                                    <tr>
                                                        <td>
                                                            Manufacturer Price
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtManufacturerPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            MRP
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtMRP" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    -->
                                                    <tr>
                                                        <td>
                                                            Sell Price <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSellPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Total Sell Price <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTotalSellPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Manufacing Date <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtManufacDate" CssClass="date" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Expiry Date <span style="color: Red;">*</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtExpiryDate" CssClass="date" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
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
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:Button ID="btnAddToStock" runat="server" Text="Add to Stock" class="btn btn-primary  m-b-0"
                                                                OnClick="btnAddToStock_Click" OnClientClick="return Check();" />
                                                            <asp:Button ID="btnPrint" runat="server" Text="print" class="btn btn-primary  m-b-0"
                                                                OnClientClick="javascript:openwin_3();" />
                                                        </td>
                                                    </tr>
                                                </table>

                                                    </asp:Panel>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="card col-lg-12">
                                                Invoice Details :
                                                <hr />
                                                <!--
                                                <table id="example1" class="table table-bordered table-hover table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                Invoice NO#
                                                            </th>
                                                            <th>
                                                                Manufacturer Count
                                                            </th>
                                                            <th>
                                                                Product Type Count
                                                            </th>
                                                            <th>
                                                                Quantity
                                                            </th>
                                                            <th>
                                                                Total Buy Price
                                                            </th>
                                                            <th>
                                                                Action
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% for (var data = 0; data < TableData.Rows.Count; data++)
                                                           { %>
                                                        <tr>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["InvoiceNO"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Manufacturer_Count"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Product_Type_Count"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Quantity"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Total_Price"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <a href="#" class='btn btn-xs btn-primary' onclick="javascript:OpenWin('<%=TableData.Rows[data]["InvoiceNO"] %>');">
                                                                    <i class="fa fa-fw  fa-print"></i>Print</a> &nbsp <a href="#" class='btn btn-xs btn-primary'
                                                                        onclick="javascript:OpenWin2('<%=TableData.Rows[data]["InvoiceNO"] %>');"><i class="fa fa-fw  fa-eye">
                                                                        </i>Detail</a>
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                                -->
                                                <asp:GridView ID="GridView1" runat="server" CssClass="gv">
                                                    <HeaderStyle Wrap="False" />
                                                    <RowStyle Wrap="False" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <!--
                                                            <a href="" class="btn btn-primary"><i class="fa fa-anchor">Click Me</i> </a>
                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="gridbtn" OnClick="btnEdit_Click" />
                                                            -->
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="gridbtn" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                                                    OnClick="btnDelete_Click" />
                                                                <!--  <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" OnClientClick="return confirm('Are you sure? want to Print.');"/>-->
                                                                <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Page wrapper  -->
            </div>
        </div>
        <!--------------------->
        <!--------Modal-------->
        <!--------------------->
        <!-- Modal HTML -->
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Confirmation</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                    </div>
                    <div class="modal-body">
                        <p>
                            Do you want to save changes to this document before closing?</p>
                        <p class="text-secondary">
                            <small>If you don't save, your changes will be lost.</small></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            Cancel</button>
                        <button type="button" class="btn btn-primary">
                            Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
    <%--<script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>--%>
    <script src="Asset/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
    <script type="text/javascript" src="files/assets/js/vartical-layout.min.js"></script>
    <script type="text/javascript" src="files/assets/js/script.js"></script>
    <script src="Asset/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="select2.js" type="text/javascript"></script>
    <script type="text/javascript">


        function OpenWin(InvoiceNO) {

            var url = "StockInInvoiceView.aspx?InvNO=" + InvoiceNO;

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
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                dateFormat: 'yy-mm-dd'
                /*,
                onClose: function (dateText, inst) {
                var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).datepicker('setDate', new Date(year, month, 1));
                }*/
            });
        });
    </script>
    <script type="text/javascript">


        $(function () {
            $('.select2').select2();
        });


        $(function () {


            $("#txtUnitPrice").keyup(function () {
                $('#txtTotalBuyPrice').val($('#txtTotalPcs').val() * $('#txtUnitPrice').val());
                //$('#txtNetAmount').val($('#txtTotalBuyPrice').val() - $('#txtDiscount').val());
            });

            /*
            $("#txtTotalPcs").keyup(function () {
            $('#txtTotalBuyPrice').val($('#txtTotalPcs').val() * $('#txtUnitPrice').val());
            //$('#txtNetAmount').val($('#txtTotalBuyPrice').val() - $('#txtDiscount').val());
            });
            */
            $("#txtTotalBuyPrice").keyup(function () {

                if ($('#txtTotalPcs').val() != "") {
                    var v = $('#txtTotalBuyPrice').val() / $('#txtTotalPcs').val();
                    $('#txtUnitPrice').val(v.toFixed(2));
                    //$('#txtNetAmount').val($('#txtTotalBuyPrice').val() - $('#txtDiscount').val());
                }
            });


            $("#txtSellPrice").keyup(function () {
                var sellprice = $('#txtSellPrice').val() * $('#txtTotalPcs').val();
                //$('#txtTotalSellPrice').val($('#txtSellPrice').val() * $('#txtTotalPcs').val());
                $('#txtTotalSellPrice').val(sellprice.toFixed(2));
            });


            $("#txtTotalSellPrice").keyup(function () {
                var count = $('#txtTotalPcs').val();
                var unit_sell_price = parseFloat($('#txtTotalSellPrice').val()) / count;
                //$('#txtTotalSellPrice').val($('#txtSellPrice').val() * $('#txtTotalPcs').val());
                $('#txtSellPrice').val(unit_sell_price.toFixed(2));
            });



            $("#txtSpecialDiscount").keyup(function () {
                var net = parseFloat($('#txtTotalTP').val()) - parseFloat($('#txtSpecialDiscount').val());

                var factor = parseFloat($('#txtSpecialDiscount').val()) / parseFloat($('#txtTotalTP').val());
                //$('#txtTotalSellPrice').val($('#txtSellPrice').val() * $('#txtTotalPcs').val());
                $('#txtBuyPriceFactor').val(factor.toFixed(3));

                $('#txtNetAmount').val(net.toFixed(3));


            });



            $("#txtVAT").keyup(function () {
                //var vat = $('#txtTP').val() * .175;
                //$('#txtTotalSellPrice').val($('#txtSellPrice').val() * $('#txtTotalPcs').val());
                //$('#txtVAT').val(vat.toFixed(2));

                var count = $('#txtTotalPcs').val();
                var f = $('#txtBuyPriceFactor').val();

                var tot_price = parseFloat($('#txtTP').val()); // +parseFloat($('#txtVAT').val());

                var net_price = tot_price * (1 - f);
                var unit_price = (parseFloat(net_price) + parseFloat($('#txtVAT').val())) / count;


                var tot_price_with_vat = parseFloat(net_price) + parseFloat($('#txtVAT').val());

                $('#txtUnitPrice').val(unit_price.toFixed(2));

                $('#txtTotalBuyPrice').val(tot_price_with_vat.toFixed(2));

            });



            /*
            $("#txtTotalDiscount").keyup(function () {
            $('#txtNetTotal').val($('#txtInvoiceAmount').val() - $('#txtTotalDiscount').val());
            });

            $("#txtPaidAmount").keyup(function () {
            $('#txtChange').val($('#txtPaidAmount').val() - $('#txtNetTotal').val());

            //alert($('#txtNetAmount').val());
            });
            */
        });


        function Check() {

            var buyprice = document.getElementById("txtUnitPrice").value;
            var sellprice = document.getElementById("txtSellPrice").value;
            if (parseFloat(sellprice) < parseFloat(buyprice)) {
                alert('Sell Price Can Not Be Less Than Buy Price');
                return false;
            } else {
                return true;
            }
        }

    </script>
</body>
</html>
