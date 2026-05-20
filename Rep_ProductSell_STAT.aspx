<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rep_ProductSell_STAT.aspx.cs"
    Inherits="Rep_ProductSell_STAT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <meta charset="utf-8" />
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
    <link href="Asset/jquery-ui.css" rel="stylesheet" type="text/css" />
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
<body style="margin:10px;">
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
        <Columns>
        
        <asp:BoundField  DataField="SL" HeaderText="Position" />
        
        <asp:BoundField  DataField="MedicineName"  HeaderText="Product Name"/>
        
        <asp:BoundField  DataField="Total_Sell_Quantity"  HeaderText="Quantity"/>

        <asp:BoundField  DataField="Total_NetReceivable"  HeaderText="Value"/>

        
        
        </Columns>
        </asp:GridView>
        <br />
        <table cellpadding="2" cellspacing="2">
            <tr>
                <td>
                    Total Invoice Amount
                </td>
                <td>
                    <asp:Label ID="lblTotAmount" runat="server" Text=""></asp:Label>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Average Sell
                </td>
                <td>
                    <asp:Label ID="lblAvgPrice" runat="server" Text=""></asp:Label>
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
        </table>
    </div>
    </form> <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
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
    <script src="files/bower_components/jquery-ui/js/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">


        function OpenWinPrint(InvoiceNO) {

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

        function OpenWin(InvoiceNO) {

            var url = "CustomerInvoiceView.aspx?InvNO=" + InvoiceNO;

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

        function OpenWin2(InvoiceNO) {

            var url = "Sell_2.aspx?v=" + InvoiceNO;



            var var2;
            var width = screen.availWidth - 50;
            var height = screen.availHeight - 50;
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
            $("#GridView1").DataTable();
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
        });
    </script>
</body>
</html>
