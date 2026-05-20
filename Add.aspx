<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mohammadi Pharma : Sell</title>
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
    <link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="popup_style.css">
    <style type="text/css">
        /*input[type=text],input[type=button],input[type=submit]*/
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
        
        input[type=text]:focus
        {
            outline: none;
            border: 1px solid #a0d18c;
            color: #2d9fd9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Category
                    <br />
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
                            </td>
                            <td>
                                <asp:Button ID="btnCategorySave" runat="server" Text="Save" class="btn btn-primary"
                                    OnClick="btnCategorySave_Click" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>
                    Medicine
                    <br />
                    <table>
                        <tr>
                            <td>
                                Category
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCategoryName" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Product Type
                            </td>
                            <td>
                                <asp:TextBox ID="txtProductTypeName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnSubCategorySave" runat="server" Text="Save" class="btn btn-primary"
                                    OnClick="btnSubCategorySave_Click" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </td>
                <td>
                    Manufacturer
                    <br />
                    <table>
                        <tr>
                            <td>
                                Manufacturer Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtManufacturerName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnManufacSave" runat="server" Text="Save" class="btn btn-primary"
                                    OnClick="btnManufacSave_Click" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                </td>
                <td>
                    Supplier
                    <br />
                    <table>
                        <tr>
                            <td>
                                Supplier Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtSupplierName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Supplier Address
                            </td>
                            <td>
                                <asp:TextBox ID="txtSupplierAddr" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnSupplierSave" runat="server" Text="Save" class="btn btn-primary"
                                    OnClick="btnSupplierSave_Click" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView4" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
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
</body>
</html>
