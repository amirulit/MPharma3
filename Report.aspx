<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>MPharma : Report</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="This Parking Management System Developed by Mayuri K. Freelancer in india">
    <meta name="keywords" content="Mayuri K. freelancer">
    <meta name="author" content="Mayuri K.">
    <link rel="icon" href="uploadImage/Logo/logo1.png" type="image/x-icon">
    <link href="Asset/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Asset/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="popup_style.css" />
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/humanity/jquery-ui.css">
    <!--

    base black-tie blitzer cupertino dark-hive dot-luv eggplant excite-bike flick 
    hot-sneaks humanity le-frog mint-choc overcast pepper-grinder
    redmond smoothness south-street start sunny swanky-purse trontastic ui-darkness ui-lightness vader

    -->
    <style type="text/css">
        #tabs .ui-tabs-nav
        {
            height: 2.35em;
            text-align: center;
        }
        #tabs .ui-tabs-nav li
        {
            display: inline-block;
            float: none;
        }
        
        
        #overlay
        {
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            right: 0;
            background: #ffffff;
            opacity: 0.7;
            filter: alpha(opacity=80);
            -moz-opacity: 0.6;
            z-index: 9999000000000;
        }
    </style>
    <style type="text/css">
        /*input[type=text],input[type=button],input[type=submit],select*/
        .form-control
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
        
        /*
        .View 
        {
             color:Green;
             font-weight:bolder;
        }
        
        .Print
        {
            color:Red;
            font-weight:bolder;
        }
        */
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

<!--

 <% var oldparentmenu = "";

                                                       for (var data = 0; data < TableData.Rows.Count; data++)
                                                       {
                                                           var currentparentmenu = TableData.Rows[data]["ParentMenu"].ToString();
                                                           var parentmenu = TableData.Rows[data]["ParentMenu"].ToString();
                                                           var childmenu = TableData.Rows[data]["ChildMenu"].ToString();


                                                           if (oldparentmenu != currentparentmenu)
                                                           {  
                                                               
                                                               
                                                             %> 

  <%  if (oldparentmenu == "")
      { %>
  
<li class="pcoded-hasmenu">
<a href="#">
<span class="pcoded-micon"><i class="feather icon-grid"></i></span>
<span class="pcoded-mtext"><%=TableData.Rows[data]["ParentMenu"].ToString()%></span>
</a>
<ul class="pcoded-submenu">
   


<li class="">
<a href="<%=TableData.Rows[data]["MenuLink"].ToString()%>">
<span class="pcoded-mtext"><%=TableData.Rows[data]["ChildMenu"].ToString()%></span>
</a>
</li> <%}
      else
      { %>   
</ul>
</li>  
<li class="pcoded-hasmenu">
<a href="#">
<span class="pcoded-micon"><i class="feather icon-grid"></i></span>
<span class="pcoded-mtext"><%=TableData.Rows[data]["ParentMenu"].ToString()%></span>
</a>
<ul class="pcoded-submenu">
   


<li class="">
<a href="<%=TableData.Rows[data]["MenuLink"].ToString()%>">
<span class="pcoded-mtext"><%=TableData.Rows[data]["ChildMenu"].ToString()%></span>
</a>
</li>
<%  }

                                                           }
                                                           else
                                                           { %> 
<li class="">
<a href="<%=TableData.Rows[data]["MenuLink"].ToString()%>">
<span class="pcoded-mtext"><%=TableData.Rows[data]["ChildMenu"].ToString()%></span>
</a>
</li>
   

                                                             <% } oldparentmenu = TableData.Rows[data]["ParentMenu"].ToString();  %> 

 <% }
                                                        %> 


             </ul>    
             -->
             <hr />                                  
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
                                    <div class="page-body">
                                        <div class="card col-lg-12" style="padding-bottom: 10px;">
                                            &nbsp;<ul class="nav nav-tabs  tabs" role="tablist">
                                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#daywisesell"
                                                    role="tab">Day Wise Sell</a> </li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#monthwisesell"
                                                    role="tab">Month Wise Sell</a> </li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#expiringlist" role="tab">
                                                    Expiring List</a></li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#stockvaluation"
                                                    role="tab">Current Stock Valuation</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#companywiseinoutsummary"
                                                    role="tab">Company Wise In Out Summary</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#productwisesellsummary"
                                                    role="tab">Product Wise Sell Summary</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#companybalance"
                                                    role="tab">Company Balance</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#productsell" role="tab">
                                                    Sales Report</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#stock_summary"
                                                    role="tab">Stock Summary</a> </li>
                                                <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#stock_update_info"
                                                    role="tab">Stock Update Info</a> </li>
                                            </ul>
                                            <div class="tab-content tabs card-block" id="tab_content">
                                                <div class="tab-pane active" id="daywisesell" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                From Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtFromDate" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                To Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtToDate" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="btnDayWiseSellReport" type="button" value="View" onclick="javascript:openwin();" />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="monthwisesell" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Year
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="btnMonthWiseSellReport" type="button" value="View" onclick="javascript:openwin2();" />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="expiringlist" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Expiring Month
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtExpiringMonth" runat="server" CssClass="date2"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="btnExpiringList" type="button" value="View" onclick="javascript:openwin3();" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="stockvaluation" role="tabpanel">

                                                  <table>
                                                        <tr>
                                                            <td>
                                                                Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Type
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                                    <asp:ListItem Text="ALL" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                                                                    <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>


                                                    <input id="Button2" type="button" value="View" onclick="javascript:openwin7();" />

                                                    </td>
                                                    </tr>
                                                    </table>
                                                    <%--  <asp:GridView ID="GridView1" runat="server">
                                                    </asp:GridView>
                                                    Grand Total
                                                    <br />
                                                    Buy Price
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    Sell Price
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                                                </div>
                                                <div class="tab-pane" id="companywiseinoutsummary" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Company
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlCompany" runat="server">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                From Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtFDate" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                To Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtTDate" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="btnCompanyWiseInOutSummary" type="button" value="View" onclick="javascript:openwin5();" />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="productwisesellsummary" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                From Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                To Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                                                                                <tr>
                                                            <td>
                                                                Type
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList3" runat="server">
                                                                    <asp:ListItem Text="ALL" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                                                                    <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                                                                                <tr>
                                                            <td>
                                                                Company Name
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList4" runat="server">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>


                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="Button1" type="button" value="View" onclick="javascript:openwin6();" />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="companybalance" role="tabpanel">
                                                    <asp:DropDownList ID="ddlManufacturer" runat="server">
                                                    </asp:DropDownList>
                                                    <input id="Button4" type="button" value="button" onclick="javascript:openwin8();" />
                                                </div>
                                                <div class="tab-pane" id="productsell" role="productsell_STAT">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                From Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtfdt" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                To Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txttdt" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td colspan="2">
                                                                <input id="Button3" type="button" value="Top Sales Report" onclick="javascript:openwin9();" />
                                                                <input id="Button5" type="button" value="Top Sales Report (Company Wise)" onclick="javascript:openwin10();" />
                                                                <input id="Button6" type="button" value="No Sales Report" onclick="javascript:openwin11();" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="tab-pane" id="stock_summary" role="tabpanel">
                                                    <input id="Button7" type="button" value="View" onclick="javascript:openwin20();" />
                                                    <%--  <asp:GridView ID="GridView1" runat="server">
                                                    </asp:GridView>
                                                    Grand Total
                                                    <br />
                                                    Buy Price
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    Sell Price
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                                                </div>
                                                <div class="tab-pane" id="stock_update_info" role="tabpanel">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                From Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                To Date
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="date"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Type
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                                    <asp:ListItem Text="ALL" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                                                                    <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <input id="Button8" type="button" value="View" onclick="javascript:openwin21();" />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <%--  <asp:GridView ID="GridView1" runat="server">
                                                    </asp:GridView>
                                                    Grand Total
                                                    <br />
                                                    Buy Price
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    Sell Price
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                                                </div>
                                            </div>
                                            <br />
                                            <!--
                                            <div id="tabs">
                                                <ul>
                                                    <li><a href="#tabs-1">Todays Report</a></li>
                                                    <li><a href="#tabs-2">Sale Report</a></li>
                                                    <li><a href="#tabs-3">Purchase Report</a></li>
                                                    <li><a href="#tabs-4">Profit/Loss Report</a></li>
                                                </ul>
                                                <div id="tabs-1">
                                                    <table id="example" class="display" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>
                                                                    Name
                                                                </th>
                                                                <th>
                                                                    Position
                                                                </th>
                                                                <th>
                                                                    Office
                                                                </th>
                                                                <th>
                                                                    Age
                                                                </th>
                                                                <th>
                                                                    Start date
                                                                </th>
                                                                <th>
                                                                    Salary
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    Tiger Nixon
                                                                </td>
                                                                <td>
                                                                    System Architect
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    61
                                                                </td>
                                                                <td>
                                                                    2011/04/25
                                                                </td>
                                                                <td>
                                                                    $320,800
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Garrett Winters
                                                                </td>
                                                                <td>
                                                                    Accountant
                                                                </td>
                                                                <td>
                                                                    Tokyo
                                                                </td>
                                                                <td>
                                                                    63
                                                                </td>
                                                                <td>
                                                                    2011/07/25
                                                                </td>
                                                                <td>
                                                                    $170,750
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Ashton Cox
                                                                </td>
                                                                <td>
                                                                    Junior Technical Author
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    66
                                                                </td>
                                                                <td>
                                                                    2009/01/12
                                                                </td>
                                                                <td>
                                                                    $86,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Cedric Kelly
                                                                </td>
                                                                <td>
                                                                    Senior Javascript Developer
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    22
                                                                </td>
                                                                <td>
                                                                    2012/03/29
                                                                </td>
                                                                <td>
                                                                    $433,060
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Airi Satou
                                                                </td>
                                                                <td>
                                                                    Accountant
                                                                </td>
                                                                <td>
                                                                    Tokyo
                                                                </td>
                                                                <td>
                                                                    33
                                                                </td>
                                                                <td>
                                                                    2008/11/28
                                                                </td>
                                                                <td>
                                                                    $162,700
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Brielle Williamson
                                                                </td>
                                                                <td>
                                                                    Integration Specialist
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    61
                                                                </td>
                                                                <td>
                                                                    2012/12/02
                                                                </td>
                                                                <td>
                                                                    $372,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Herrod Chandler
                                                                </td>
                                                                <td>
                                                                    Sales Assistant
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    59
                                                                </td>
                                                                <td>
                                                                    2012/08/06
                                                                </td>
                                                                <td>
                                                                    $137,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Rhona Davidson
                                                                </td>
                                                                <td>
                                                                    Integration Specialist
                                                                </td>
                                                                <td>
                                                                    Tokyo
                                                                </td>
                                                                <td>
                                                                    55
                                                                </td>
                                                                <td>
                                                                    2010/10/14
                                                                </td>
                                                                <td>
                                                                    $327,900
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Colleen Hurst
                                                                </td>
                                                                <td>
                                                                    Javascript Developer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    39
                                                                </td>
                                                                <td>
                                                                    2009/09/15
                                                                </td>
                                                                <td>
                                                                    $205,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Sonya Frost
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    23
                                                                </td>
                                                                <td>
                                                                    2008/12/13
                                                                </td>
                                                                <td>
                                                                    $103,600
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jena Gaines
                                                                </td>
                                                                <td>
                                                                    Office Manager
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    30
                                                                </td>
                                                                <td>
                                                                    2008/12/19
                                                                </td>
                                                                <td>
                                                                    $90,560
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Quinn Flynn
                                                                </td>
                                                                <td>
                                                                    Support Lead
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    22
                                                                </td>
                                                                <td>
                                                                    2013/03/03
                                                                </td>
                                                                <td>
                                                                    $342,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Charde Marshall
                                                                </td>
                                                                <td>
                                                                    Regional Director
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    36
                                                                </td>
                                                                <td>
                                                                    2008/10/16
                                                                </td>
                                                                <td>
                                                                    $470,600
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Haley Kennedy
                                                                </td>
                                                                <td>
                                                                    Senior Marketing Designer
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    43
                                                                </td>
                                                                <td>
                                                                    2012/12/18
                                                                </td>
                                                                <td>
                                                                    $313,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Tatyana Fitzpatrick
                                                                </td>
                                                                <td>
                                                                    Regional Director
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    19
                                                                </td>
                                                                <td>
                                                                    2010/03/17
                                                                </td>
                                                                <td>
                                                                    $385,750
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Michael Silva
                                                                </td>
                                                                <td>
                                                                    Marketing Designer
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    66
                                                                </td>
                                                                <td>
                                                                    2012/11/27
                                                                </td>
                                                                <td>
                                                                    $198,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Paul Byrd
                                                                </td>
                                                                <td>
                                                                    Chief Financial Officer (CFO)
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    64
                                                                </td>
                                                                <td>
                                                                    2010/06/09
                                                                </td>
                                                                <td>
                                                                    $725,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Gloria Little
                                                                </td>
                                                                <td>
                                                                    Systems Administrator
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    59
                                                                </td>
                                                                <td>
                                                                    2009/04/10
                                                                </td>
                                                                <td>
                                                                    $237,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Bradley Greer
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    41
                                                                </td>
                                                                <td>
                                                                    2012/10/13
                                                                </td>
                                                                <td>
                                                                    $132,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Dai Rios
                                                                </td>
                                                                <td>
                                                                    Personnel Lead
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    35
                                                                </td>
                                                                <td>
                                                                    2012/09/26
                                                                </td>
                                                                <td>
                                                                    $217,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jenette Caldwell
                                                                </td>
                                                                <td>
                                                                    Development Lead
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    30
                                                                </td>
                                                                <td>
                                                                    2011/09/03
                                                                </td>
                                                                <td>
                                                                    $345,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Yuri Berry
                                                                </td>
                                                                <td>
                                                                    Chief Marketing Officer (CMO)
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    40
                                                                </td>
                                                                <td>
                                                                    2009/06/25
                                                                </td>
                                                                <td>
                                                                    $675,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Caesar Vance
                                                                </td>
                                                                <td>
                                                                    Pre-Sales Support
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    21
                                                                </td>
                                                                <td>
                                                                    2011/12/12
                                                                </td>
                                                                <td>
                                                                    $106,450
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Doris Wilder
                                                                </td>
                                                                <td>
                                                                    Sales Assistant
                                                                </td>
                                                                <td>
                                                                    Sydney
                                                                </td>
                                                                <td>
                                                                    23
                                                                </td>
                                                                <td>
                                                                    2010/09/20
                                                                </td>
                                                                <td>
                                                                    $85,600
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Angelica Ramos
                                                                </td>
                                                                <td>
                                                                    Chief Executive Officer (CEO)
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    47
                                                                </td>
                                                                <td>
                                                                    2009/10/09
                                                                </td>
                                                                <td>
                                                                    $1,200,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Gavin Joyce
                                                                </td>
                                                                <td>
                                                                    Developer
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    42
                                                                </td>
                                                                <td>
                                                                    2010/12/22
                                                                </td>
                                                                <td>
                                                                    $92,575
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jennifer Chang
                                                                </td>
                                                                <td>
                                                                    Regional Director
                                                                </td>
                                                                <td>
                                                                    Singapore
                                                                </td>
                                                                <td>
                                                                    28
                                                                </td>
                                                                <td>
                                                                    2010/11/14
                                                                </td>
                                                                <td>
                                                                    $357,650
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Brenden Wagner
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    28
                                                                </td>
                                                                <td>
                                                                    2011/06/07
                                                                </td>
                                                                <td>
                                                                    $206,850
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Fiona Green
                                                                </td>
                                                                <td>
                                                                    Chief Operating Officer (COO)
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    48
                                                                </td>
                                                                <td>
                                                                    2010/03/11
                                                                </td>
                                                                <td>
                                                                    $850,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Shou Itou
                                                                </td>
                                                                <td>
                                                                    Regional Marketing
                                                                </td>
                                                                <td>
                                                                    Tokyo
                                                                </td>
                                                                <td>
                                                                    20
                                                                </td>
                                                                <td>
                                                                    2011/08/14
                                                                </td>
                                                                <td>
                                                                    $163,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Michelle House
                                                                </td>
                                                                <td>
                                                                    Integration Specialist
                                                                </td>
                                                                <td>
                                                                    Sydney
                                                                </td>
                                                                <td>
                                                                    37
                                                                </td>
                                                                <td>
                                                                    2011/06/02
                                                                </td>
                                                                <td>
                                                                    $95,400
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Suki Burks
                                                                </td>
                                                                <td>
                                                                    Developer
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    53
                                                                </td>
                                                                <td>
                                                                    2009/10/22
                                                                </td>
                                                                <td>
                                                                    $114,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Prescott Bartlett
                                                                </td>
                                                                <td>
                                                                    Technical Author
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    27
                                                                </td>
                                                                <td>
                                                                    2011/05/07
                                                                </td>
                                                                <td>
                                                                    $145,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Gavin Cortez
                                                                </td>
                                                                <td>
                                                                    Team Leader
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    22
                                                                </td>
                                                                <td>
                                                                    2008/10/26
                                                                </td>
                                                                <td>
                                                                    $235,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Martena Mccray
                                                                </td>
                                                                <td>
                                                                    Post-Sales support
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    46
                                                                </td>
                                                                <td>
                                                                    2011/03/09
                                                                </td>
                                                                <td>
                                                                    $324,050
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Unity Butler
                                                                </td>
                                                                <td>
                                                                    Marketing Designer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    47
                                                                </td>
                                                                <td>
                                                                    2009/12/09
                                                                </td>
                                                                <td>
                                                                    $85,675
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Howard Hatfield
                                                                </td>
                                                                <td>
                                                                    Office Manager
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    51
                                                                </td>
                                                                <td>
                                                                    2008/12/16
                                                                </td>
                                                                <td>
                                                                    $164,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Hope Fuentes
                                                                </td>
                                                                <td>
                                                                    Secretary
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    41
                                                                </td>
                                                                <td>
                                                                    2010/02/12
                                                                </td>
                                                                <td>
                                                                    $109,850
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Vivian Harrell
                                                                </td>
                                                                <td>
                                                                    Financial Controller
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    62
                                                                </td>
                                                                <td>
                                                                    2009/02/14
                                                                </td>
                                                                <td>
                                                                    $452,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Timothy Mooney
                                                                </td>
                                                                <td>
                                                                    Office Manager
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    37
                                                                </td>
                                                                <td>
                                                                    2008/12/11
                                                                </td>
                                                                <td>
                                                                    $136,200
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jackson Bradshaw
                                                                </td>
                                                                <td>
                                                                    Director
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    65
                                                                </td>
                                                                <td>
                                                                    2008/09/26
                                                                </td>
                                                                <td>
                                                                    $645,750
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Olivia Liang
                                                                </td>
                                                                <td>
                                                                    Support Engineer
                                                                </td>
                                                                <td>
                                                                    Singapore
                                                                </td>
                                                                <td>
                                                                    64
                                                                </td>
                                                                <td>
                                                                    2011/02/03
                                                                </td>
                                                                <td>
                                                                    $234,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Bruno Nash
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    38
                                                                </td>
                                                                <td>
                                                                    2011/05/03
                                                                </td>
                                                                <td>
                                                                    $163,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Sakura Yamamoto
                                                                </td>
                                                                <td>
                                                                    Support Engineer
                                                                </td>
                                                                <td>
                                                                    Tokyo
                                                                </td>
                                                                <td>
                                                                    37
                                                                </td>
                                                                <td>
                                                                    2009/08/19
                                                                </td>
                                                                <td>
                                                                    $139,575
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Thor Walton
                                                                </td>
                                                                <td>
                                                                    Developer
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    61
                                                                </td>
                                                                <td>
                                                                    2013/08/11
                                                                </td>
                                                                <td>
                                                                    $98,540
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Finn Camacho
                                                                </td>
                                                                <td>
                                                                    Support Engineer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    47
                                                                </td>
                                                                <td>
                                                                    2009/07/07
                                                                </td>
                                                                <td>
                                                                    $87,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Serge Baldwin
                                                                </td>
                                                                <td>
                                                                    Data Coordinator
                                                                </td>
                                                                <td>
                                                                    Singapore
                                                                </td>
                                                                <td>
                                                                    64
                                                                </td>
                                                                <td>
                                                                    2012/04/09
                                                                </td>
                                                                <td>
                                                                    $138,575
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Zenaida Frank
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    63
                                                                </td>
                                                                <td>
                                                                    2010/01/04
                                                                </td>
                                                                <td>
                                                                    $125,250
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Zorita Serrano
                                                                </td>
                                                                <td>
                                                                    Software Engineer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    56
                                                                </td>
                                                                <td>
                                                                    2012/06/01
                                                                </td>
                                                                <td>
                                                                    $115,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jennifer Acosta
                                                                </td>
                                                                <td>
                                                                    Junior Javascript Developer
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    43
                                                                </td>
                                                                <td>
                                                                    2013/02/01
                                                                </td>
                                                                <td>
                                                                    $75,650
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Cara Stevens
                                                                </td>
                                                                <td>
                                                                    Sales Assistant
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    46
                                                                </td>
                                                                <td>
                                                                    2011/12/06
                                                                </td>
                                                                <td>
                                                                    $145,600
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Hermione Butler
                                                                </td>
                                                                <td>
                                                                    Regional Director
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    47
                                                                </td>
                                                                <td>
                                                                    2011/03/21
                                                                </td>
                                                                <td>
                                                                    $356,250
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Lael Greer
                                                                </td>
                                                                <td>
                                                                    Systems Administrator
                                                                </td>
                                                                <td>
                                                                    London
                                                                </td>
                                                                <td>
                                                                    21
                                                                </td>
                                                                <td>
                                                                    2009/02/27
                                                                </td>
                                                                <td>
                                                                    $103,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Jonas Alexander
                                                                </td>
                                                                <td>
                                                                    Developer
                                                                </td>
                                                                <td>
                                                                    San Francisco
                                                                </td>
                                                                <td>
                                                                    30
                                                                </td>
                                                                <td>
                                                                    2010/07/14
                                                                </td>
                                                                <td>
                                                                    $86,500
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Shad Decker
                                                                </td>
                                                                <td>
                                                                    Regional Director
                                                                </td>
                                                                <td>
                                                                    Edinburgh
                                                                </td>
                                                                <td>
                                                                    51
                                                                </td>
                                                                <td>
                                                                    2008/11/13
                                                                </td>
                                                                <td>
                                                                    $183,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Michael Bruce
                                                                </td>
                                                                <td>
                                                                    Javascript Developer
                                                                </td>
                                                                <td>
                                                                    Singapore
                                                                </td>
                                                                <td>
                                                                    29
                                                                </td>
                                                                <td>
                                                                    2011/06/27
                                                                </td>
                                                                <td>
                                                                    $183,000
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Donna Snider
                                                                </td>
                                                                <td>
                                                                    Customer Support
                                                                </td>
                                                                <td>
                                                                    New York
                                                                </td>
                                                                <td>
                                                                    27
                                                                </td>
                                                                <td>
                                                                    2011/01/25
                                                                </td>
                                                                <td>
                                                                    $112,000
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>
                                                                    Name
                                                                </th>
                                                                <th>
                                                                    Position
                                                                </th>
                                                                <th>
                                                                    Office
                                                                </th>
                                                                <th>
                                                                    Age
                                                                </th>
                                                                <th>
                                                                    Start date
                                                                </th>
                                                                <th>
                                                                    Salary
                                                                </th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                                <div id="tabs-2">
                                                    222222222222222222





                                                </div>
                                                <div id="tabs-3">
                                                    3333333333
                                                </div>
                                                <div id="tabs-4">
                                                    44444444444
                                                </div>
                                            </div>
                                        </div>
                                        -->
                                            <br />
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
    </form>
    <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
    <script type="text/javascript" src="files/assets/js/vartical-layout.min.js"></script>
    <script type="text/javascript" src="files/assets/js/script.js"></script>
    <script src="Asset/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="select2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#tabs").tabs();
        });





    </script>
    <script type="text/javascript">
        $(document).ready(function () {

            //call_loader_ajax();

            //var tab_intdex = document.getElementById('HiddenField1').value;
            //$("#myTab li:eq(" + tab_intdex + ") a").tab('show');

            /*
            $("#btnSubmit2").click(function () {

            var v = $("#Text1").val();
            alert(v);
            $("#myTab li:eq(" + v + ") a").tab('show');
            });
            */

            //$("#tabs").tabs();


            $("#txtDate").datepicker();



        });

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

            $(".date2").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                dateFormat: 'yy-mm'
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
        function call_loader_ajax() {

            if ($('#overlay').length == 0) {
                var over = '<div id="overlay">' +
						'<img  style="padding-top:350px; padding-left:50%;"id="loading" src="http://localhost:8081/doctor/assets/img/ajax-loader2.gif"></div>';

                $(over).appendTo('body');
            }
        }

        $(document).ready(function () {
            $('#example').DataTable();
        });


        $(document).ready(function () {
            //alert('yy');
            $("ul li a").click(function () {

                var t = '#invoice';
                //alert('yy');
                $("ul li a").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                //$(".tab_content").hide(); //Hide all tab content
                //var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                var activeTab = $(this).attr("href"); //Find the rel attribute value to identify the active tab + content
                //alert(activeTab);
                //$activeTab.addClass("active");

                /*Option 1*/
                $("#tab_content div").removeClass("active");

                /*Option 2*/
                //$("#general").removeClass("active");
                //$("#repair").removeClass("active");
                //$("#invoice").removeClass("active");
                //$("#sms").removeClass("active");
                //$("#payment").removeClass("active");


                $(activeTab).addClass("active");
                //$(t).addClass("active");
                //$(activeTab).fadeIn(); //Fade in the active content
                //return false;

                /*
                $('#dvTab a[href="#' + tabId + '"]').tab('show');
                $("#dvTab a").click(function () {
                selectedTab.val($(this).attr("href").substring(1));
                });
                */
            });
        });

        function openwin() {

            var fdt = document.getElementById('txtFromDate').value;
            var tdt = document.getElementById('txtToDate').value;

            var url = "Rep_DayWiseSell.aspx?fdt=" + fdt + "&tdt=" + tdt;

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

        function openwin2() {

            var year = document.getElementById('txtYear').value;


            var url = "Rep_MonthWiseSell.aspx?year=" + year;

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

        function openwin3() {

            var yearmonth = document.getElementById('txtExpiringMonth').value;


            var url = "Rep_ExpiringList.aspx?v=" + yearmonth;

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

        function openwin5() {

            var cname = document.getElementById('ddlCompany').value;
            var fdt = document.getElementById('txtFDate').value;
            var tdt = document.getElementById('txtTDate').value;

            var url = "Rep_CompanyWiseInOutSummary.aspx?cname=" + cname + "&fdt=" + fdt + "&tdt=" + tdt;

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


        function openwin6() {


            var fdt = document.getElementById('TextBox1').value;
            var tdt = document.getElementById('TextBox2').value;
            var typ = document.getElementById('DropDownList3').value;
            var cname = document.getElementById('DropDownList4').value;

            var url = "Rep_ProductWiseSellSummary.aspx?fdt=" + fdt + "&tdt=" + tdt + "&typ=" + typ + "&cname=" + cname;

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

        function openwin7() {




            //var url = "Rep_CurrentStockValuation.aspx";


            var dt = document.getElementById('TextBox5').value;
            

            var typ = document.getElementById('DropDownList2').value;


            var url = "Rep_CurrentStockValuation.aspx?dt=" + dt + "&typ=" + typ;



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

        function openwin20() {




            var url = "Rep_CurrentStockSummary.aspx";

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

        function openwin21() {


            var fdt = document.getElementById('TextBox3').value;
            var tdt = document.getElementById('TextBox4').value;

            var typ = document.getElementById('DropDownList1').value;


            var url = "Rep_StockUpdateInfo.aspx?fdt=" + fdt + "&tdt=" + tdt + "&typ=" + typ;



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



        function openwin8() {


            var c = document.getElementById('ddlManufacturer').value;

            var url = "Rep_CompanyBalance.aspx?c=" + c;

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

        function openwin9() {


            var fdt = document.getElementById('txtfdt').value;
            var tdt = document.getElementById('txttdt').value;

            var url = "Rep_ProductSell_STAT.aspx?fdt=" + fdt + "&tdt=" + tdt;

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
</body>
</html>
