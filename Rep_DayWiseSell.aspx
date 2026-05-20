<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rep_DayWiseSell.aspx.cs"
    Inherits="Rep_DayWiseSell" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
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
    </form>
</body>
</html>
