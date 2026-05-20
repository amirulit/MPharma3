<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddMedicine.aspx.cs" Inherits="AddMedicine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Mohammadi Pharma : User Create</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="This Parking Management System Developed by Mayuri K. Freelancer in india">
    <meta name="keywords" content="Mayuri K. freelancer">
    <meta name="author" content="Mayuri K.">
    <link rel="icon" href="uploadImage/Logo/logo1.png" type="image/x-icon">
    <link href="files/assets/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">
    <link href="Asset/jquery.dataTables.css" rel="stylesheet" type="text/css" />
    <%--
    <link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
    --%>
    <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="popup_style.css">
    <link href="select2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /*input[type=text],input[type=button],input[type=submit]*/
        input,select
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
    </style>
    <style>
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
        
        .nofound
        {
             color:Red;
                 font-weight:bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="theme-loader">
         
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

<li class="">
<a href="StockStatus.aspx">
<span class="pcoded-mtext">Stock Status</span>
</a>
</li>

</ul>

</li>
 

 
<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-folder"></i></span>
<span class="pcoded-mtext">Accounts</span>
</a>


<ul class="pcoded-submenu">

<li class="">
<a href="Transaction.aspx">
<span class="pcoded-mtext">Transaction</span>
</a>
</li>
</ul>

<ul class="pcoded-submenu">

<li class="">
<a href="CompanyPayment.aspx">
<span class="pcoded-mtext">Company Payment</span>
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
   

   <li class=""><a href="AddCOA.aspx"><span class="pcoded-mtext">Account</span></a></li>
<li class=""><a href="AddCategory.aspx"><span class="pcoded-mtext">Category</span></a></li>
<li class=""><a href="AddMedicine.aspx"><span class="pcoded-mtext">Medicine</span></a></li>
<li class=""><a href="AddCompany.aspx"><span class="pcoded-mtext">Manufacturer</span></a></li>
<li class=""><a href="AddSupplier.aspx"><span class="pcoded-mtext">Supplier</span></a></li>
<li class=""><a href="PasswordChange.aspx"><span class="pcoded-mtext">Password Change</span></a></li>

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
                                                            Add Medicine</h4>
                                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                    <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                                        </a></li>
                                                        <li class="breadcrumb-item"><a>Medicine/Drug</a> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        <div class="col-md-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <table>
                                                        <tr>
                                                            <td colspan="4">
                                                                <asp:Label ID="lblStatus" runat="server" Text="" CssClass="nofound"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Medicine/Product Name
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtDrugName" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Product Type
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlProductType" runat="server" CssClass="select2">
                                                                    <asp:ListItem Text="<-Select->" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                                                                    <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                                                    <asp:ListItem Text="Baby Item" Value="Baby Item"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Category
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="select2">
                                                                </asp:DropDownList>
                                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#ModalCategory">
                                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Strength/Size
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtStrength" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Generic Name
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlGeneric" runat="server" CssClass="select2">
                                                                </asp:DropDownList>
                                                                <!--<a href="AddGeneric.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                            -->
                                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#myModal">
                                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Manufacturer Name
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlManufacturer" runat="server" CssClass="select2">
                                                                </asp:DropDownList>
                                                                <!--  <a href="AddCompany.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                            
                                                            -->
                                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#ModalCompany">
                                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Remarks
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td>
                                                                ALERT Minimum QTY
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtMINQTY" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td colspan="2">
                                                                <input id="btnMedicineInfoSave" type="button" value="Save" class="btn btn-primary"/>
                                                                  &nbsp <asp:Button ID="btnReload" 
                                                                    runat="server" Text="Reload"  class="btn btn-info" onclick="btnReload_Click" />
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    Manufacturer Name :
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="select2"
                                                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <br />
                                                    <br />
                                                    <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="true">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Action">
                                                                <ItemTemplate>
                                                                    <%--         
                                                            <a href="" class="btn btn-primary"><i class="fa fa-anchor">Click Me</i> </a>
                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="gridbtn" OnClick="btnEdit_Click" />
                                                                    --%>
                                                                   <%--<span class='pull-right'><a href='#edit_photo' class='photo' data-toggle='modal'
                                                                        data-id='<%#Eval("ID") %>'><i class='fa fa-edit'></i>Click</a></span>--%>


                                                                    <a href="#" data-id='<%#Eval("ID") %>' class="update btn btn-primary"><i class='fa fa-edit'>
                                                                    </i>Update</a>
                                                                   <%-- <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="gridbtn" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                                                        OnClick="btnDelete_Click" />--%>
                                                                    <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>

                                                        <EmptyDataTemplate>
                                                         No Record Found
                                                        </EmptyDataTemplate>
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                        </div>
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
        <div id="edit_photo" class="modal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Medicine/Product Info Update</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                    </div>
                    <div class="modal-body">
                        
                        <span id="status"></span>
                        <table>
                            <tr>
                                <td>
                                    ID
                                </td>
                                <td>
                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>Medicine/Product Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMedicineName_New" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>Strength
                                </td>
                                <td>
                                    <asp:TextBox ID="txtStrength_New" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                 </tr>
                                  <tr>
                                <td>Generic Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGenericName_New" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                 </tr>

                                   <tr>
                                <td>Medicine Type
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMedicineType_New" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                 </tr>

                                    <tr>
                                <td>MIN QTY  
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMINQTY_New" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                 </tr>

                            <tr>
                                <td>
                                </td>
                                <td>
                                    <input id="btnUpdate" type="button" value="Update"  CssClass="btn btn-primary"/>

                                   
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="ModalCategory" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Category Add</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>
                                    Category
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Remarks
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCategoryRemarks" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <input id="btnCategorySave" type="button" value="Save" class="btn btn-primary" />
                                    &nbsp
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        Cancel</button>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        <div id="ModalCompany" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Manufacturer/Company Info Save</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>
                                    Company Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Company Address
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCompanyAddress" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Remarks
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCompanyRemarks" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
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
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <input id="btnComSave" type="button" value="Save" class="btn btn-primary" />
                                    &nbsp
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        Cancel</button>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Generin Info Save</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>
                                    Generic Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGenericName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Remarks
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGenericRemarks" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
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
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <input id="btnGenSave" type="button" value="Save" class="btn btn-primary" />
                                    &nbsp
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        Close</button>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Asset/bootstrap.min.js"></script>
    <%--<script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>--%>
    <script src="Asset/jquery.dataTables.js" type="text/javascript"></script>
    <%--
    <script type="text/javascript" src="files/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="files/bower_components/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
    <script type="text/javascript" src="files/assets/pages/data-table/js/data-table-custom.js"></script>
    --%>
    <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
    <script type="text/javascript" src="files/assets/js/vartical-layout.min.js"></script>
    <script type="text/javascript" src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="files/assets/js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" type="text/javascript" src="files/assets/js/script.min.js"></script>
    <script type="text/javascript" type="text/javascript" src="files/assets/js/script.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
    <script src="select2.js" type="text/javascript"></script>
    <script type="text/javascript">


        $(function () {
            $('.select2').select2();


            $("#btnGenSave").click(function (e) {
                SaveGenInfo();
                //alert('ccccccc');
            })

            /***Medicine******/

            $("#btnMedicineInfoSave").click(function (e) {
                SaveMedicineInfo();
                //alert('ccccccc');
            })


            function SaveMedicineInfo() {

                var Med = {};

                Med.MedicineName = $('#txtDrugName').val();
                Med.ProductType = $('#ddlProductType').val();
                Med.Category = $('#ddlCategory').val();
                Med.Strength = $('#txtStrength').val();
                Med.GenericName = $('#ddlGeneric').val();
                Med.Manufacturer = $('#ddlManufacturer').val();
                Med.Remarks = $('#txtRemarks').val();


                Med.MINQTY = $('#txtMINQTY').val();

                //var loc = window.location.href;
                //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
                $.ajax({
                    type: "POST",
                    //url: loc + "/CheckUserName",
                    //url: loc + "/AAA",
                    url: "AddMedicine.aspx/MedicineInfoSave",
                    //data: JSON.stringify({ inv_type: 'I' }),
                    //data: '{"gen_name":"' + gen_name + '"}',

                    data: '{Med: ' + JSON.stringify(Med) + '}',

                    //data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == 'Ok') {
                            //alert(msg.d);
                            //$("#txtInvoiceNO").val(msg.d);
                            //$("#txtFIContractCode").attr('disabled', true);
                            //$("#ddlCType").focus();
                            //alert($("#txtInvoiceNO").val());

                            $('#txtDrugName').val('');
                            $('#ddlProductType').val('');
                            $('#txtStrength').val('');
                            $('#ddlGeneric').val('');
                            $('#ddlCategory').val('');
                            $('#ddlManufacturer').val('');
                            $('#txtRemarks').val('');

                            alert('Saved');

                            //window.location.reload();
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

            /***Generic Info***/

            function SaveGenInfo() {

                var Gen = {};
                Gen.Name = $('#txtGenericName').val();
                Gen.Remarks = $('#txtGenericRemarks').val();

                //var loc = window.location.href;
                //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
                $.ajax({
                    type: "POST",
                    //url: loc + "/CheckUserName",
                    //url: loc + "/AAA",
                    url: "AddMedicine.aspx/SaveGenericInfo",
                    //data: JSON.stringify({ inv_type: 'I' }),
                    //data: '{"gen_name":"' + gen_name + '"}',

                    data: '{Gen: ' + JSON.stringify(Gen) + '}',

                    //data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == 'Ok') {
                            //alert(msg.d);
                            //$("#txtInvoiceNO").val(msg.d);
                            //$("#txtFIContractCode").attr('disabled', true);
                            //$("#ddlCType").focus();
                            //alert($("#txtInvoiceNO").val());

                            $('#txtGenericName').val('');
                            $('#txtGenericRemarks').val('');

                            alert('Saved');
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

            /***Company***/


            $("#btnComSave").click(function (e) {
                SaveComInfo();
                //alert//('ccccccc');
            })
            function SaveComInfo() {

                var Com = {};
                Com.Name = $('#txtCompanyName').val();
                Com.Address = $('#txtCompanyAddress').val();
                Com.Remarks = $('#txtCompanyRemarks').val();

                //var loc = window.location.href;
                //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
                $.ajax({
                    type: "POST",
                    //url: loc + "/CheckUserName",
                    //url: loc + "/AAA",
                    url: "AddMedicine.aspx/CompanyInfoSave",
                    //data: JSON.stringify({ inv_type: 'I' }),
                    //data: '{"gen_name":"' + gen_name + '"}',

                    data: '{Com: ' + JSON.stringify(Com) + '}',

                    //data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == 'Ok') {
                            //alert(msg.d);
                            //$("#txtInvoiceNO").val(msg.d);
                            //$("#txtFIContractCode").attr('disabled', true);
                            //$("#ddlCType").focus();
                            //alert($("#txtInvoiceNO").val());

                            $('#txtCompanyName').val('');
                            $('#txtCompanyAddress').val('');
                            $('#txtCompanyRemarks').val('');
                            alert('Saved');
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

            /***** *****/




            $("#btnCategorySave").click(function (e) {
                SaveCategoryInfo();
                //alert//('ccccccc');
            })
            function SaveCategoryInfo() {

                var Cat = {};
                Cat.Name = $('#txtCategoryName').val();
                Cat.Remarks = $('#txtCategoryRemarks').val();

                //var loc = window.location.href;
                //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
                $.ajax({
                    type: "POST",
                    //url: loc + "/CheckUserName",
                    //url: loc + "/AAA",
                    url: "AddMedicine.aspx/CatyegoryInfoSave",
                    //data: JSON.stringify({ inv_type: 'I' }),
                    //data: '{"gen_name":"' + gen_name + '"}',

                    data: '{Cat: ' + JSON.stringify(Cat) + '}',

                    //data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == 'Ok') {
                            //alert(msg.d);
                            //$("#txtInvoiceNO").val(msg.d);
                            //$("#txtFIContractCode").attr('disabled', true);
                            //$("#ddlCType").focus();
                            //alert($("#txtInvoiceNO").val());

                            $('#txtCategoryName').val('');

                            $('#txtCategoryRemarks').val('');
                            alert('Saved');
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


            /**************/

            $('#myModal').on('hidden.bs.modal', function () {
                //location.reload();
            });

            $('#ModalCompany').on('hidden.bs.modal', function () {
                //location.reload();
            });

            $('#ModalCategory').on('hidden.bs.modal', function () {
                //location.reload();
            });

        });


       


    </script>
    <script type="text/javascript">
        $(function () {
            $("#GridView2").DataTable();
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $(document).on('click', '.update', function (e) {
                e.preventDefault();
                var id = $(this).data('id');
                //var id = $(this).attr('data-id');//it is also ok
                //alert(id);

                //if (confirm('Are you sure? want to update the entry.')) {
                    //var id = $(this).data('id');
                    $("#lbl").html(id);
                    //getRow(id);

                    //console.log(id);
                    $("#btnUpdate").attr("edit-id", id);
                    $('#status').html('');
                    getMedicineInfo(id);
                    $('#edit_photo').modal('show');




                    //alert(id);
                //} else {
                    //alert(id);
                //}
            });

            $(document).on('click', '.photo', function (e) {
                e.preventDefault();
                var id = $(this).data('id');
                //var id = $(this).data('id');
                $("#lbl").html(id);

            });
        });


        function getMedicineInfo(ID) {
            //var loc = window.location.href;
            //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
            $.ajax({
                type: "POST",
                //url: loc + "/CheckUserName",
                //url: loc + "/AAA",
                url: "AddMedicine.aspx/getMedicineInfo",
                data: JSON.stringify({ ID: ID }),
                //data: '{"ID":"' + ID + '"}',
                //data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d) {
                        //alert(msg.d);
                        //$("#txtMedicineName_New").val(msg.d);
                        var v = msg.d.split('~');
                        $("#txtMedicineName_New").val(v[0]);
                        $("#txtStrength_New").val(v[1]);
                        $("#txtGenericName_New").val(v[2]);
                        $("#txtMedicineType_New").val(v[3]);
                        $("#txtMINQTY_New").val(v[4]);

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


        $("#btnUpdate").click(function () {
            //$('#txtInvoiceNO').val(100);
            var ID = $(this).attr("edit-id");
            UpdateMedicineInfo(ID);
        });

        function UpdateMedicineInfo(ID) {
            //var loc = window.location.href;
            //loc = (loc.substr(loc.length - 1, 1) == "/") ? loc + "AddSubPer.aspx" : loc;
            var NewMedName = $("#txtMedicineName_New").val();
            var NewStrength = $("#txtStrength_New").val();
            var NewGenericName = $("#txtGenericName_New").val();
            var NewMedicineType = $("#txtMedicineType_New").val();
            var NewMINQTY = $("#txtMINQTY_New").val();

            //alert(ID);
            //alert(NewMedName);
            //alert(NewStrength);
            //alert(NewGenericName);

            $.ajax({
                type: "POST",
                //url: loc + "/CheckUserName",
                //url: loc + "/AAA",
                url: "AddMedicine.aspx/UpdateMedicineInfo",
                //data: '{eid: ' + id + '}',
                //data: "{'ID' : ID,'MedName': NewMedName, 'Strength' : NewStrength , 'GenericName' : NewGenericName  }",
                data: JSON.stringify({ ID: ID, MedName: NewMedName, Strength: NewStrength, GenericName: NewGenericName, MedicineType: NewMedicineType, MINQTY: NewMINQTY }),
                //data: JSON.stringify({ ID:ID }),
                //data: '{"ID":"' + ID + '"}',
                //data: "{}",
                //data: '{objEmployee: ' + JSON.stringify(user) + ', eid : ' + id + '}',

                //"{'Id1':'2','Id2':'2'}"
                //data: '{"item_Entry_Serial":"' + txtEntrySLNO + '"}', '{"item_Equipment_Serial":"' + txtEquipmentSLNO + '"}',
                //data: "{'item_Entry_Serial':txtEntrySLNO ,'item_Equipment_Serial':txtEquipmentSLNO}",
                //data: JSON.stringify({item_Entry_Serial:txtEntrySLNO ,item_Equipment_Serial:txtEquipmentSLNO,Branch_Code:ddlBranchList,Vendor_Code:ddlVendorList,Model_NO:txtModelNO ,Item_Code:txtItemCode,Item_Description:txtItemDes,Purchase_Date:txtPurchaseDT,Warranty_Period:txtWarrantyPRD ,Expiry_Date:txtExpiryDT,Item_Quantity:txtWarrantyPRD,Item_Ind_Price:txtItemPrice,Item_Lot_Size:txtItemLotSize ,Item_Lot_Price:txtItemLotPrice,Remarks:txtRemarks}),
                //data: JSON.stringify({ item_Entry_Serial: txtEntrySLNO, item_Equipment_Serial: txtEquipmentSLNO, Branch_Code: ddlBranchList, Vendor_Code: ddlVendorList, Model_NO: txtModelNO, Service_Tag: txtServiceTag, Item_Description: txtItemDes, Purchase_Date: txtPurchaseDT, Warranty_Period: txtWarrantyPRD, Expiry_Date: txtExpiryDT, Item_Ind_Price: txtItemPrice, User_ID: user_id, Remarks: txtRemarks }),
                //data: "{}",

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {

                    if (msg.d == 'Ok') {
                        //alert(msg.d);
                        //$("#txtInvoiceNO").val(msg.d);
                        //$("#txtFIContractCode").attr('disabled', true);
                        //$("#ddlCType").focus();
                        //alert($("#txtInvoiceNO").val());

                        $('#txtMedicineName_New').val('');
                        $('#txtStrength_New').val('');
                        $('#txtGenericName_New').val('');
                        $('#txtMedicineType_New').val('');
                        $('#txtMINQTY_New').val('');

                        $('#status').html('Saved');

                        //alert('Saved');
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
    </script>
</body>
</html>
