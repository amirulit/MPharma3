<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetSellPrice.aspx.cs" Inherits="SetSellPrice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <b><u><span style="font-size: 24px;">Update Product Info : </span></u></b>
        <table>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;ID
                </td>
                <td>
                    <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Product Code
                </td>
                <td>
                    <asp:Label ID="lblProductCode" runat="server" Text=""></asp:Label>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Present Stock ID
                </td>
                <td>
                    <asp:Label ID="lblStockID" runat="server" Text=""></asp:Label>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    New Stock ID
                </td>
                <td>
                    <asp:TextBox ID="txtStockID" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Present Buy Price
                </td>
                <td>
                    <asp:TextBox ID="txtBuyPrice_Present" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    New Buy Price
                </td>
                <td>
                    <asp:TextBox ID="txtBuyPrice_New" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Present Sell Price
                </td>
                <td>
                    <asp:TextBox ID="txtSellPrice_Present" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    New Sell Price
                </td>
                <td>
                    <asp:TextBox ID="txtSellPrice_New" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>

            
            <tr>
                <td>
                    New Quantity
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" 
                         ></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
           
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    &nbsp
                    <input id="Button1" type="button" value="Close" onclick="window.close();" />
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
