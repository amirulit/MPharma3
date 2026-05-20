<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css" />
    <link href="select2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">
        function closeWindow(value) {
            //window.open("Parent_Child.aspx","Ratting","width=550,height=170,left=150,top=200,toolbar=1,status=1,");
            //alert(value);
            //opener.document.form1.txtFISubjectCode.value = value;
            //opener.document.getElementById('txtResult').value = value;
            var v = value.split("~")
            opener.document.getElementById('txtProductID').value = v[0];
            opener.document.getElementById('txtProductName').value = v[1];
            opener.document.getElementById('Available').innerHTML = v[2];
            opener.document.getElementById('txtUnitPrice').value = v[3];

            opener.document.getElementById('txtQuantity').focus();


            window.close();
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


    <div class="container-fluid">
        <u>Search Product</u>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    Category
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategoryName" runat="server" CssClass="form-control select2">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Medicine
                </td>
                <td>
                    <asp:DropDownList ID="ddlProductType" runat="server" CssClass="form-control select2">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Manufacturer
                </td>
                <td>
                    <asp:DropDownList ID="ddlManufacturer" runat="server" CssClass="form-control select2">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Supplier
                </td>
                <td>
                    <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-control select2">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Select" DataField="Product" HtmlEncode="false" />
                <asp:BoundField HeaderText="Manufacturer" DataField="Manufacturer" />
                <asp:BoundField HeaderText="Expiry Date" DataField="ExpiryDate" />
                <asp:BoundField HeaderText="Generic Name" DataField="GenericName" />
                <asp:BoundField HeaderText="Strength" DataField="Strength" />
                <asp:BoundField HeaderText="Buy Price" DataField="UnitPrice" />
                <asp:BoundField HeaderText="Sell Price" DataField="SellPrice" />
                <asp:BoundField HeaderText="Available Count" DataField="TotalCount" />
            </Columns>
            <HeaderStyle Wrap="False" />
            <RowStyle Wrap="False" />
        </asp:GridView>
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
            $('.select2').select2();
        });


    </script>
</body>
</html>
